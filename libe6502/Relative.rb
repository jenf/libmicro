class Relative
 include Operators
 def inc_pc
  1
 end
 def load
  puts %q{  uint8_t var=PC;}
 end
 def load_other
  puts %q{  uint8_t var2=PC;} % @var
 end
 def store
  puts %q{  PC=var;} % @var
 end
end
