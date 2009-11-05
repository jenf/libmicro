require "Register"
require "Immediate"
require "ZeroPage"
require "Absolute"
require "Relative"
require 'Inherent'
require 'Indirect'
require 'OpCodeTableGeneric'

class OpCode6502 < OpCodeTable
 attr :modemap
 attr :targetmap
 attr :modeinstr

 def initialize(filename)
  # register addressing
  a=RegO.new('A')
  x=RegO.new('X')
  y=RegO.new('Y')
  sp=RegSP.new()
  p=RegO.new('P')
  zero=RegO.new('0')
  #pc=RegPC.new()

  # other modes
  i=Immediate.new()
  zp=ZeroPage.new()
  zpx=ZeroPageO.new('X')
  zpy=ZeroPageO.new('Y')
  abs=Absolute.new()
  absx=AbsoluteO.new("X")
  absy=AbsoluteO.new("Y")
  absind=Absolute_Indirect.new()
  zpind=ZeroPage_Indirect.new()
  zpxind=ZeroPageO_Indirect.new('X')
  zpindy=ZeroPage_IndirectO.new('Y')
  rel=Relative.new()
  inh=Inherent.new()
 # map mode names from assembly format to internal names
  @modemap = {"#ii" => i,
              "nn" => zp,
              "nn,X" => zpx,
              "nn,Y" => zpy,
              "(nn)" => zpind,
              "(nn,X)" => zpxind,
              "(nn),Y" => zpindy,
              "nnnn" => abs,
              "(nnnn)" => absind,
              "nnnn,X" => absx,
              "nnnn,Y" => absy,
              "A" => a,
              "X" => x,
              "Y" => y,
              "rr" => rel,
              ""   => inh
  }

  # map instruction names to the target register for an operation
  @targetmap = {"ADC" => a,
                "AND" => a,
                "CMP" => a,
                "CPX" => x,
                "CPY" => y,
                "EOR" => a,
                "LDA" => a,
                "LDX" => x,
                "LDY" => y,
                "ORA" => a,
                "SBC" => a,
                "STA" => a,
                "STX" => x,
                "STY" => y,
                "TAX" => x,
                "TAY" => y,
                "TSX" => x,
                "TXA" => a,
                "TXS" => sp,
                "TYA" => a,
                "STZ" => zero}

# map instruction names to the addressing mode for that instruction
  @modeinstr={"DEX" => x,
              "DEY" => y,
              "INX" => x,
              "INY" => y,
              "TAX" => a,
              "TAY" => a,
              "TSX" => sp,
              "TXA" => x,
              "TXS" => x,
              "TYA" => y,
              "PHA" => a,
              "PLA" => a,
              "PLX" => x,
              "PLY" => y,
              "PHP" => p,
              "PHX" => x,
              "PHY" => y,
              "PLP" => p}

# map instruction names from assembly format to internal names
  @instrmap = {
               "CPX" => "op_cmp",
               "CPY" => "op_cmp",
               "DEX" => "op_dec",
               "DEY" => "op_dec",
               "INX" => "op_inc",
               "INY" => "op_inc",
               "LDA" => "loadop",
               "LDX" => "loadop",
               "LDY" => "loadop",
               "ORA" => "op_or",
               "PLX" => "op_pla",
               "PLY" => "op_pla",
               "PHP" => "op_pha",
               "PHX" => "op_pha",
               "PHY" => "op_pha",
               "STA" => "storeop",
               "STX" => "storeop",
               "STY" => "storeop",
               "STZ" => "storeop",
               "TAX" => "transfer",
               "TAY" => "transfer",
               "TSX" => "transfer",
               "TXA" => "transfer",
               "TXS" => "transfer",
               "TYA" => "transfer",
               }
  super(filename)
 end

 def mode(opcode)
  instr=self[opcode][0]
  mode=self[opcode][1]
  mode2=self.modeinstr[instr]
  mode2=self.modemap[mode] if !mode2
  return mode2
 end

 def instr(opcode,mode)
  h=self[opcode][0].downcase
  if mode.class.method_defined?("op_%s" % h)
   return "op_%s" % h
  end
  return @instrmap[self[opcode][0]]
 end

 def target(opcode)
  return @targetmap[self[opcode][0]]
 end

 def exists?(mode,instr)
  return true if mode && instr && mode.class.method_defined?(instr)
  return false
 end
 def implemented?(opcode)
  return false if self[opcode]==nil
  mode2=self.mode(opcode)
  return false if !mode2
  instr2=self.instr(opcode,mode2)
  return self.exists?(mode2,instr2)
 end
end
