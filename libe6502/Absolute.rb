class Absolute
 include Operators
 def inc_pc
  2
 end
 def preop
  print <<-ENDLOAD
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  ENDLOAD
 end
 def load
  print <<-ENDLOAD
  uint8_t var=load_mem8(addr);
  ENDLOAD
 end
 def load_other
  print <<-ENDLOAD
  uint8_t var2=load_mem8(addr);
  ENDLOAD
 end
 def store
  printf "  store_mem8((addr),var);\n"
 end
end

class AbsoluteO <Absolute
 include Operators
 def initialize(name)
  @var=name
 end
 def load
  printf "//This doesn't emulate correctly access memory if the page boundary\n"
  printf "  uint8_t var=load_mem8((addr+%s));\n",@var
 end
 def load_other
  printf "//This doesn't emulate correctly access memory if the page boundary\n"
  printf "  uint8_t var2=load_mem8((addr+%s));\n",@var
 end
 def store
  printf "  store_mem8((addr+%s),var);\n",@var
 end
end
