class ZeroPage_Indirect
 include Operators
 def inc_pc
  return 1
 end
 def preop
  print <<-ENDLOAD
  uint8_t addr=load_mem8(PC);
  uint8_t addrb=load_mem8(addr)+(load_mem8(addr+1)<<8);
  ENDLOAD
 end
 def load
  print <<-ENDLOAD
  uint8_t var=load_mem8(addrb);
  ENDLOAD
 end
 def load_other
  print <<-ENDLOAD
  uint8_t var2=load_mem8(addrb);
  ENDLOAD
 end
 def store
  print <<-ENDSTORE
  store_mem8(addrb,var);
  ENDSTORE
 end
end

class Absolute_Indirect
 include Operators
 def inc_pc
  return 1
 end
 def preop
  print <<-ENDLOAD
  uint16_t addr2=load_mem16(PC);
  uint16_t addr=load_mem8(addr2)+(load_mem8(addr2+1)<<8);
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
  store_mem8(addrb,var);
  ENDSTORE
 end
end


class ZeroPageO_Indirect
 include Operators
 def initialize(name)
  @var=name
 end
 def inc_pc
  return 1
 end
 def preop
  print %q{
  uint16_t addr=(load_mem8(PC)+%s) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
} % @var
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
  store_mem8(addr,var);
  ENDSTORE
 end
end

class ZeroPage_IndirectO
 include Operators
 def initialize(var)
  @var=var
 end
 def inc_pc
  return 1
 end
 def preop
  print %q{
  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + %s;
/* wrap around? extra cycle? */
 } % @var
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
  store_mem8(addr,var);
  ENDSTORE
 end
end
