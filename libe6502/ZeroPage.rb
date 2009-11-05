class ZeroPage
 include Operators
 def inc_pc
  1
 end
 def preop
  print <<-ENDLOAD
  uint16_t addr=load_mem8(PC);
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
  print <<-ENDSTORE
  store_mem8((addr) & 0xFF,var);
  ENDSTORE
 end
end

class ZeroPageO <ZeroPage
 include Operators
 def initialize(var)
  @var=var
 end
 def load
  print %q{uint8_t var=load_mem8((addr+%s) & 0xFF);} % @var
 end
 def load_other
  print %q{uint8_t var2=load_mem8((addr+%s) & 0xFF);} % @var
 end
 def store
  print %q{store_mem8((addr+%s) & 0xFF,var);} % @var
 end
end
