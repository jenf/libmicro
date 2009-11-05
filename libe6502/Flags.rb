module Flags
 def check_flags(tocheck)
  flag_zero     if tocheck.include? "z" 
  flag_negative if tocheck.include? "n"
  flag_overflow if tocheck.include? "o"
  flag_carry    if tocheck.include? "c"
 end

 def clear_flags(tocheck)
  puts "CLEAR_FLAG_INTERRUPT();" if tocheck.include? 'i'
  puts "CLEAR_FLAG_ZERO();"      if tocheck.include? 'z'
  puts "CLEAR_FLAG_NEG();"       if tocheck.include? 'n'
  puts "CLEAR_FLAG_OVERFLOW();"  if tocheck.include? 'o'
  puts "CLEAR_FLAG_CARRY();"      if tocheck.include? 'c'
  puts "CLEAR_FLAG_DECIMAL();"    if tocheck.include? 'd'
 end

 def set_flags(tocheck)
  puts "SET_FLAG_INTERRUPT();"      if tocheck.include? 'i'
  puts "SET_FLAG_ZERO();"      if tocheck.include? 'z'
  puts "SET_FLAG_NEG();"       if tocheck.include? 'n'
  puts "SET_FLAG_OVERFLOW();"  if tocheck.include? 'o'
  puts "SET_FLAG_CARRY();"      if tocheck.include? 'c'
  puts "SET_FLAG_DECIMAL();"    if tocheck.include? 'd'
 end

 def check_flags_op(tocheck)
  if tocheck==nil
   yield
   return
  end
  a="1"
  case tocheck[-1..-1]
  when 'z'     then a="FLAG_ISSET_ZERO"
  when 'n'     then a="FLAG_ISSET_NEG"
  when 'o','v' then a="FLAG_ISSET_OVERFLOW"
  when 'c'     then a="FLAG_ISSET_CARRY"
  when 'i'     then a="FLAG_ISSET_INTERRUPT"
  end
  a='!'+a if tocheck[0..0]=='!'
  printf "  if (%s())\n  {\n" % a
  yield
  printf "  }\n"
 end 

 def flag_zero()
  print <<-ENDZERO
  UPDATE_FLAG_ZERO(var==0);
  ENDZERO
 end

 def flag_negative()
  # Unwritten
  print <<-ENDNEG
  UPDATE_FLAG_NEG(var & 0x80); 
  ENDNEG
 end

 def flag_overflow()
  # Unwritten
  print <<-ENDOVER
  ENDOVER
 end

 def flag_carry()
  # Unwritten
  print <<-ENDCARRY
  ENDCARRY
 end
end
