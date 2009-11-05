class Immediate
 include Operators
 def inc_pc
  return 1 
 end
 def load
  print <<-ENDLOAD
  uint8_t var=load_mem8(PC);
  ENDLOAD
 end
 def load_other
  print <<-ENDLOAD
  uint8_t var2=load_mem8(PC);
  ENDLOAD
 end
 def store
  raise "That's a stupid idea gov."
 end
end
