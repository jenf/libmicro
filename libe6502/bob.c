# 1 "test.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "test.c"

# 1 "/usr/lib/gcc/powerpc-apple-darwin8/4.0.0/include/stdint.h" 1 3 4













typedef signed char           int8_t;




typedef short                int16_t;




typedef int                  int32_t;




typedef long long            int64_t;




typedef unsigned char         uint8_t;




typedef unsigned short       uint16_t;




typedef unsigned int         uint32_t;




typedef unsigned long long   uint64_t;



typedef int8_t           int_least8_t;
typedef int16_t         int_least16_t;
typedef int32_t         int_least32_t;
typedef int64_t         int_least64_t;
typedef uint8_t         uint_least8_t;
typedef uint16_t       uint_least16_t;
typedef uint32_t       uint_least32_t;
typedef uint64_t       uint_least64_t;



typedef int8_t            int_fast8_t;
typedef int16_t          int_fast16_t;
typedef int32_t          int_fast32_t;
typedef int64_t          int_fast64_t;
typedef uint8_t          uint_fast8_t;
typedef uint16_t        uint_fast16_t;
typedef uint32_t        uint_fast32_t;
typedef uint64_t        uint_fast64_t;






typedef long   intptr_t;




typedef unsigned long   uintptr_t;







typedef long long int             intmax_t;








typedef long long unsigned int             uintmax_t;




























   

















































                             



























# 215 "/usr/lib/gcc/powerpc-apple-darwin8/4.0.0/include/stdint.h" 3 4









 




















# 2 "test.c" 2


# 1 "flags.h" 1




























// TODO: 0x04 (interrupt)


































# 4 "test.c" 2

int main() {
   uint8_t opcode;
   uint8_t A, X, Y, P;
   uint16_t PC, SP;

   while(1) {
      opcode = load_mem8(PC);
      PC++;
      switch(opcode) {

# 1 "output.c" 1
	
case 0x1:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x5:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x6:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
   {			if (var & 0x80) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		}
   var = (var<<1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0x8:					
{
  uint8_t var=P;
  store_mem8(SP,var);
  SP--;
	break;
}

case 0x9:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa:					
{
  uint8_t var=A;
   {			if (var & 0x80) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		}
   var = (var<<1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	
	
case 0xd:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xe:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
   {			if (var & 0x80) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		}
   var = (var<<1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0x10:					
{
  uint8_t var=PC;
  if (!FLAG_ISSET_NEG())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x11:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x15:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x16:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);   {			if (var & 0x80) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		}
   var = (var<<1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0x18:					
{
{ P &= ~0x01; };
	break;
}

case 0x19:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	
	
	
case 0x1d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var |=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x1e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
   {			if (var & 0x80) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		}
   var = (var<<1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
case 0x20:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint16_t tmp=PC+2;
  store_mem8(SP,(tmp) >> 8);
  store_mem8(SP-1,(tmp) & 0xff);
  SP-=2; 
  PC=addr;
	break;
}

case 0x21:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
case 0x24:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_NEG(var & 0x80);
  {		if (var & 0x40) {					{ P |=  0x40; };		} else {					{ P &= ~0x40; };		};
  {			if ((var & A)==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  PC+=1;
	break;
}

case 0x25:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x26:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0x28:					
{
  uint8_t var;
  SP++;
  var=load_mem8(SP);
   
  P=var;
	break;
}

case 0x29:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x2a:					
{
  uint8_t var=A;
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	
case 0x2c:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_NEG(var & 0x80);
  {		if (var & 0x40) {					{ P |=  0x40; };		} else {					{ P &= ~0x40; };		};
  {			if ((var & A)==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  PC+=2;
	break;
}

case 0x2d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x2e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0x30:					
{
  uint8_t var=PC;
  if (FLAG_ISSET_NEG())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x31:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x35:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x36:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0x38:					
{
{ P |=  0x01; };
	break;
}

case 0x39:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	
	
	
case 0x3d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var &=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x3e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
case 0x40:					
{
  
  SP+=1;
  P = load_mem8(SP);
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  
	break;
}

case 0x41:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x45:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x46:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  {			if (var & 0x01) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  var = (var>>1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0x48:					
{
  uint8_t var=A;
  store_mem8(SP,var);
  SP--;
	break;
}

case 0x49:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x4a:					
{
  uint8_t var=A;
  {			if (var & 0x01) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  var = (var>>1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	
case 0x4c:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  PC=addr;
	break;
}

case 0x4d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x4e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  {			if (var & 0x01) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  var = (var>>1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0x50:					
{
  uint8_t var=PC;
  if (!FLAG_ISSET_OVERFLOW())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x51:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x55:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x56:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  {			if (var & 0x01) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  var = (var>>1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0x58:					
{
CLEAR_FLAG_INTERRUPT();
	break;
}

case 0x59:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	
	
	
case 0x5d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var ^=var2;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x5e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  {			if (var & 0x01) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  var = (var>>1) & 0xFF;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
case 0x60:					
{
 
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  
	break;
}

case 0x61:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x65:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x66:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0x68:					
{
  uint8_t var;
   SP++;
   var=load_mem8(SP);
   
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

case 0x69:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x6a:					
{
  uint8_t var=A;
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	
case 0x6c:					
{
  uint16_t addr2=load_mem16(PC);
  uint16_t addr=load_mem8(addr2)+(load_mem8(addr2+1)<<8);
  PC=addr;
	break;
}

case 0x6d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x6e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0x70:					
{
  uint8_t var=PC;
  if (FLAG_ISSET_OVERFLOW())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x71:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0x75:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x76:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0x78:					
{
SET_FLAG_INTERRUPT();
	break;
}

case 0x79:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	
	
	
case 0x7d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var < var2) || ((var == var2) && temp)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x7e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  {			if (temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
	
case 0x81:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var=A;
  store_mem8(addr,var);
  PC+=1;
	break;
}

	
	
case 0x84:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=Y;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

case 0x85:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=A;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

case 0x86:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=X;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0x88:					
{
  uint8_t var=Y;
  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

	
case 0x8a:					
{
  uint8_t var=X;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	
case 0x8c:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=Y;
  store_mem8((addr),var);
  PC+=2;
	break;
}

case 0x8d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr),var);
  PC+=2;
	break;
}

case 0x8e:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=X;
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0x90:					
{
  uint8_t var=PC;
  if (!FLAG_ISSET_CARRY())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x91:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var=A;
  store_mem8(addr,var);
  PC+=1;
	break;
}

	
	
case 0x94:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=Y;
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

case 0x95:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=A;
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

case 0x96:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=X;
store_mem8((addr+Y) & 0xFF,var);  PC+=1;
	break;
}

	
case 0x98:					
{
  uint8_t var=Y;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

case 0x99:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr+Y),var);
  PC+=2;
	break;
}

case 0x9a:					
{
  uint8_t var=X;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  SP=var;
	break;
}

	
	
case 0x9d:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
	
case 0xa0:					
{
  uint8_t var=read_mem8(PC);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xa1:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa2:					
{
  uint8_t var=read_mem8(PC);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	
case 0xa4:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xa5:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa6:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	
case 0xa8:					
{
  uint8_t var=A;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

case 0xa9:					
{
  uint8_t var=read_mem8(PC);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xaa:					
{
  uint8_t var=A;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	
case 0xac:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=2;
	break;
}

case 0xad:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xae:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=2;
	break;
}

	
case 0xb0:					
{
  uint8_t var=PC;
  if (FLAG_ISSET_CARRY())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xb1:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var=load_mem8(addr);
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
case 0xb4:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xb5:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xb6:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+Y) & 0xFF);  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	
case 0xb8:					
{
	break;
}

case 0xb9:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+Y));
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xba:					
{
  uint8_t var=SP;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	
case 0xbc:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=2;
	break;
}

case 0xbd:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xbe:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+Y));
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=2;
	break;
}

	
case 0xc0:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc1:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

	
	
case 0xc4:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc5:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc6:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0xc8:					
{
  uint8_t var=Y;
  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

case 0xc9:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xca:					
{
  uint8_t var=X;
  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	
case 0xcc:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xcd:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xce:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0xd0:					
{
  uint8_t var=PC;
  if (!FLAG_ISSET_ZERO())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xd1:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

	
	
	
case 0xd5:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xd6:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0xd8:					
{
{ P &= ~0x08; };
	break;
}

case 0xd9:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

	
	
	
case 0xdd:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xde:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  var--;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
case 0xe0:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xe1:					
{

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);

  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
case 0xe4:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xe5:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xe6:					
{
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	
case 0xe8:					
{
  uint8_t var=X;
  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

case 0xe9:					
{
  uint8_t var2=read_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xea:					
{
	break;
}

	
case 0xec:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  {			if (var > temp) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xed:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xee:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	
case 0xf0:					
{
  uint8_t var=PC;
  if (FLAG_ISSET_ZERO())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xf1:					
{

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;

   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	
	
	
case 0xf5:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xf6:					
{
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	
case 0xf8:					
{
{ P |=  0x08; };
	break;
}

case 0xf9:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	
	
	
case 0xfd:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - FLAGS_ISSET_CARRY()) & 0xFF;
  {			if ((var > temp) || ((var == temp) && var2)) {					{ P |=  0x01; };		} else {					{ P &= ~0x01; };		};
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xfe:					
{
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  var++;
  {			if (var==0) {					{ P |=  0x02; };		} else {					{ P &= ~0x02; };		};
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	
# 15 "test.c" 2
      }
   }
}
