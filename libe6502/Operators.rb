require 'Flags'
require 'Abstracted'
module Operators
 include Flags,Abstracted

 def op_jmp(name)
  preop()
  puts '  PC=addr;'
 end

 def op_jsr(name)
  preop()
  puts %q{  uint16_t tmp=PC+2;
  store_mem8(SP,(tmp) >> 8);
  store_mem8(SP-1,(tmp) & 0xff);
  SP-=2; 
  PC=addr;}
 end

 def op_rti(name)
  preop()
  puts %q{  
  SP+=1;
  P = load_mem8(SP);
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  }
 end


 def op_rts(name)
  preop()
  puts %q{ 
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  }
 end


 def op_inc(name)
  load_store(name,:flags=>'nz') { puts "  var++;\n"}
 end
 def op_dec(name)
  load_store(name,:flags=>'nz') { puts "  var--;\n"}
 end

 def op_asl(name)
  load_store(name,:flags=>'nz') {
   puts <<-END
   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
   END
  }
 end

 def op_lsr(name)
  load_store(name,:flags=>'nz') {
   puts <<-END
  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  END
  }
 end

 def op_rol(name)
  load_store(name,:flags=>'nz') {
   puts <<-END
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  END
  }
 end

 def op_ror(name)
  load_store(name,:flags=>'nz') {
   puts <<-END
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  END
  }
 end

 def op_bit(name)
  preload(name,{}) {
   puts <<-END
  UPDATE_FLAG_NEG(var & 0x80);
  UPDATE_FLAG_OVERFLOW(var & 0x40);
  UPDATE_FLAG_ZERO((var & A)==0);
  END
  }
 end

 def transfer(name,b)
  load_storeother(name,b,:flags=>'nz')
 end

 def storeop(name,b)
  loadother_store(name,b,{})
 end

 def loadop(name,b)
  load_storeother(name,b,:flags=>'nz')
 end

 def op_adc(name,load)
  load_loadother_storeother(name,load,:flags=>'nz') {
   puts <<-END
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
   END
  } 
 end

 def op_sbc(name,load)
  load_loadother_storeother(name,load,:flags=>'nz') {
   puts <<-END
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
   END
  } 
 end

 def op_cmp(name,load)
  load_loadother(name,load,:flags=>'nz') {
   puts <<-END
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
   END
  }
 end

 def op_and(name,load)
  load_loadother_storeother(name,load,:flags=>'nz') { puts '  var &=var2;'} 
 end
 
 def op_eor(name,load)
  load_loadother_storeother(name,load,:flags=>'nz') { puts '  var ^=var2;'} 
 end

 def op_or(name,load)
  load_loadother_storeother(name,load,:flags=>'nz') { puts '  var |=var2;'} 
 end

 def Operators.clear_flags_op(flags,sym)
  define_method(sym) {|name|
   basic_code(name) {clear_flags(flags)}
  }
 end

 def Operators.set_flags_op(flags,sym)
  define_method(sym) {|name|
  basic_code(name) {set_flags(flags)}
  }
 end

 def op_pha(name)
  preload(name,{}) { 
  puts %q{  store_mem8(SP,var);
  SP--;}
 }
 end
 def op_pla(name)
  poststore(name,:flags=>'nz') {
   puts %q{  uint8_t var;
   SP++;
   var=load_mem8(SP);
   }
  }
 end
 def op_plp(name)
  poststore(name) {
  puts %q{  uint8_t var;
  SP++;
  var=load_mem8(SP);
   }
  }
 end
 clear_flags_op('v','op_clv')
 clear_flags_op('d','op_cld')
 clear_flags_op('c','op_clc')
 clear_flags_op('i','op_cli')
 set_flags_op('c','op_sec')
 set_flags_op('d','op_sed')
 set_flags_op('i','op_sei')

 def Operators.branch(sym,flags)
  define_method(sym) {|name|
   load_store(name) {
    check_flags_op(flags) {
     puts "  var+=(int8_t) load_mem8(PC);"
    }
   }
  }
 end
 
 branch('op_bpl','!n')
 branch('op_bmi','n')
 branch('op_bne','!z')
 branch('op_beq','z')
 branch('op_bcc','!c')
 branch('op_bcs','c')
 branch('op_bvc','!v')
 branch('op_bvs','v')
 branch('op_bra',nil)

 def op_nop(name)
  basic_code(name)
 end
end
