require 'OpCodeTable6502'

def make_instruction(a,opcode)
# puts "%s %s" % [opcode,a.implemented?(opcode)]
# return
 if a[opcode]==nil
  puts ("\t/* Undefined operator 0x%02x*/" % opcode)
  return
 end
 opname="%s %s" % a[opcode]
 instr=a[opcode][0]
 mode=a[opcode][1]
	# Try to determine the addressing mode by the instruction name
        mode2 = a.mode(opcode)
        if !mode2
         puts ("\t/* NOT IMPLEMENTED ADDR MODE: #{opcode}: #{opname} */\n")
         return
        end
	instr2 = a.instr(opcode,mode2)
	target = a.target(opcode)
	if instr2 && mode2.class.method_defined?(instr2)
		print "case 0x%x:\t\t\t\t\t/* %s */\n{\n" % [opcode,opname]
		puts 'printf("%%x %s\n",PC);' % [opname]
#                return
		opcall = "#{mode2}.#{instr2}"
		fnname = "#{instr2}.#{mode2}"
		if target then
			mode2.send(instr2,fnname,target)
		else
			mode2.send(instr2,fnname)
		end

		print "\tbreak;\n}\n\n"
	else
		print("\t/* NOT IMPLEMENTED INSTR: #{opcode}: #{opname} */\n")
	end
end

a=OpCode6502.new(ARGV[0])
b=ARGV[1]
if b!=nil
 make_instruction(a,b.hex)
else
 a.each_index {|opcode|
  make_instruction(a,opcode)
 }
end

#a.nop("NOP")

#a.clear_flags_op("CLC","c")
#a.set_flags_op("SEC","c")

#pc.branch("BEQ","z")
#pc.branch("BNE","e")

# or perhaps: rel.branch(..., pc)? --sdb
