while a = gets() do
	b = a.split()
	opcode = b.shift
	instr = b.join(" ")
	print "case #{opcode}:\t\t\t\t\t/* #{instr} */\n"
	print "\tbreak;\n"
end
