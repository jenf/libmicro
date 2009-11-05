	/* NOT IMPLEMENTED INSTR: 0: BRK  */
case 0x1:					/* ORA (nn,X) */
{
printf("%x ORA (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x02*/
	/* Undefined operator 0x03*/
	/* Undefined operator 0x04*/
case 0x5:					/* ORA nn */
{
printf("%x ORA nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x6:					/* ASL nn */
{
printf("%x ASL nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x07*/
case 0x8:					/* PHP  */
{
printf("%x PHP \n",PC);
  uint8_t var=P;
  store_mem8(SP,var);
  SP--;
	break;
}

case 0x9:					/* ORA #ii */
{
printf("%x ORA #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa:					/* ASL A */
{
printf("%x ASL A\n",PC);
  uint8_t var=A;
   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	/* Undefined operator 0x0b*/
	/* Undefined operator 0x0c*/
case 0xd:					/* ORA nnnn */
{
printf("%x ORA nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xe:					/* ASL nnnn */
{
printf("%x ASL nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x0f*/
case 0x10:					/* BPL rr */
{
printf("%x BPL rr\n",PC);
  uint8_t var=PC;
  if (!FLAG_ISSET_NEG())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x11:					/* ORA (nn),Y */
{
printf("%x ORA (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x12*/
	/* Undefined operator 0x13*/
	/* Undefined operator 0x14*/
case 0x15:					/* ORA nn,X */
{
printf("%x ORA nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x16:					/* ASL nn,X */
{
printf("%x ASL nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0x17*/
case 0x18:					/* CLC  */
{
printf("%x CLC \n",PC);
CLEAR_FLAG_CARRY();
	break;
}

case 0x19:					/* ORA nnnn,Y */
{
printf("%x ORA nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	/* Undefined operator 0x1a*/
	/* Undefined operator 0x1b*/
	/* Undefined operator 0x1c*/
case 0x1d:					/* ORA nnnn,X */
{
printf("%x ORA nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var |=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x1e:					/* ASL nnnn,X */
{
printf("%x ASL nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
   UPDATE_FLAG_CARRY(var & 0x80);
   var = (var<<1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x1f*/
case 0x20:					/* JSR nnnn */
{
printf("%x JSR nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint16_t tmp=PC+2;
  store_mem8(SP,(tmp) >> 8);
  store_mem8(SP-1,(tmp) & 0xff);
  SP-=2; 
  PC=addr;
	break;
}

case 0x21:					/* AND (nn,X) */
{
printf("%x AND (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x22*/
	/* Undefined operator 0x23*/
case 0x24:					/* BIT nn */
{
printf("%x BIT nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_NEG(var & 0x80);
  UPDATE_FLAG_OVERFLOW(var & 0x40);
  UPDATE_FLAG_ZERO((var & A)==0);
  PC+=1;
	break;
}

case 0x25:					/* AND nn */
{
printf("%x AND nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x26:					/* ROL nn */
{
printf("%x ROL nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x27*/
case 0x28:					/* PLP  */
{
printf("%x PLP \n",PC);
  uint8_t var;
  SP++;
  var=load_mem8(SP);
   
  P=var;
	break;
}

case 0x29:					/* AND #ii */
{
printf("%x AND #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x2a:					/* ROL A */
{
printf("%x ROL A\n",PC);
  uint8_t var=A;
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	/* Undefined operator 0x2b*/
case 0x2c:					/* BIT nnnn */
{
printf("%x BIT nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_NEG(var & 0x80);
  UPDATE_FLAG_OVERFLOW(var & 0x40);
  UPDATE_FLAG_ZERO((var & A)==0);
  PC+=2;
	break;
}

case 0x2d:					/* AND nnnn */
{
printf("%x AND nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x2e:					/* ROL nnnn */
{
printf("%x ROL nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x2f*/
case 0x30:					/* BMI rr */
{
printf("%x BMI rr\n",PC);
  uint8_t var=PC;
  if (FLAG_ISSET_NEG())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x31:					/* AND (nn),Y */
{
printf("%x AND (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x32*/
	/* Undefined operator 0x33*/
	/* Undefined operator 0x34*/
case 0x35:					/* AND nn,X */
{
printf("%x AND nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x36:					/* ROL nn,X */
{
printf("%x ROL nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0x37*/
case 0x38:					/* SEC  */
{
printf("%x SEC \n",PC);
SET_FLAG_CARRY();
	break;
}

case 0x39:					/* AND nnnn,Y */
{
printf("%x AND nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	/* Undefined operator 0x3a*/
	/* Undefined operator 0x3b*/
	/* Undefined operator 0x3c*/
case 0x3d:					/* AND nnnn,X */
{
printf("%x AND nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var &=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x3e:					/* ROL nnnn,X */
{
printf("%x ROL nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  uint8_t temp=var & 0x80;
  var = ((var<<1)+FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x3f*/
case 0x40:					/* RTI  */
{
printf("%x RTI \n",PC);
  
  SP+=1;
  P = load_mem8(SP);
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  
	break;
}

case 0x41:					/* EOR (nn,X) */
{
printf("%x EOR (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x42*/
	/* Undefined operator 0x43*/
	/* Undefined operator 0x44*/
case 0x45:					/* EOR nn */
{
printf("%x EOR nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x46:					/* LSR nn */
{
printf("%x LSR nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x47*/
case 0x48:					/* PHA  */
{
printf("%x PHA \n",PC);
  uint8_t var=A;
  store_mem8(SP,var);
  SP--;
	break;
}

case 0x49:					/* EOR #ii */
{
printf("%x EOR #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x4a:					/* LSR A */
{
printf("%x LSR A\n",PC);
  uint8_t var=A;
  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	/* Undefined operator 0x4b*/
case 0x4c:					/* JMP nnnn */
{
printf("%x JMP nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  PC=addr;
	break;
}

case 0x4d:					/* EOR nnnn */
{
printf("%x EOR nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x4e:					/* LSR nnnn */
{
printf("%x LSR nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x4f*/
case 0x50:					/* BVC rr */
{
printf("%x BVC rr\n",PC);
  uint8_t var=PC;
  if (!FLAG_ISSET_OVERFLOW())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x51:					/* EOR (nn),Y */
{
printf("%x EOR (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x52*/
	/* Undefined operator 0x53*/
	/* Undefined operator 0x54*/
case 0x55:					/* EOR nn,X */
{
printf("%x EOR nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x56:					/* LSR nn,X */
{
printf("%x LSR nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0x57*/
case 0x58:					/* CLI  */
{
printf("%x CLI \n",PC);
CLEAR_FLAG_INTERRUPT();
	break;
}

case 0x59:					/* EOR nnnn,Y */
{
printf("%x EOR nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	/* Undefined operator 0x5a*/
	/* Undefined operator 0x5b*/
	/* Undefined operator 0x5c*/
case 0x5d:					/* EOR nnnn,X */
{
printf("%x EOR nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  var ^=var2;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x5e:					/* LSR nnnn,X */
{
printf("%x LSR nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  UPDATE_FLAG_CARRY(var & 0x01);
  var = (var>>1) & 0xFF;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x5f*/
case 0x60:					/* RTS  */
{
printf("%x RTS \n",PC);
 
  SP+=2;
  PC=(load_mem8(SP)<<8) | (load_mem8(SP-1) & 0xff);
  
	break;
}

case 0x61:					/* ADC (nn,X) */
{
printf("%x ADC (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x62*/
	/* Undefined operator 0x63*/
	/* Undefined operator 0x64*/
case 0x65:					/* ADC nn */
{
printf("%x ADC nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x66:					/* ROR nn */
{
printf("%x ROR nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x67*/
case 0x68:					/* PLA  */
{
printf("%x PLA \n",PC);
  uint8_t var;
   SP++;
   var=load_mem8(SP);
   
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

case 0x69:					/* ADC #ii */
{
printf("%x ADC #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x6a:					/* ROR A */
{
printf("%x ROR A\n",PC);
  uint8_t var=A;
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	/* Undefined operator 0x6b*/
case 0x6c:					/* JMP (nnnn) */
{
printf("%x JMP (nnnn)\n",PC);
  uint16_t addr2=load_mem16(PC);
  uint16_t addr=load_mem8(addr2)+(load_mem8(addr2+1)<<8);
  PC=addr;
	break;
}

case 0x6d:					/* ADC nnnn */
{
printf("%x ADC nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x6e:					/* ROR nnnn */
{
printf("%x ROR nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x6f*/
case 0x70:					/* BVS rr */
{
printf("%x BVS rr\n",PC);
  uint8_t var=PC;
  if (FLAG_ISSET_OVERFLOW())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x71:					/* ADC (nn),Y */
{
printf("%x ADC (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0x72*/
	/* Undefined operator 0x73*/
	/* Undefined operator 0x74*/
case 0x75:					/* ADC nn,X */
{
printf("%x ADC nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0x76:					/* ROR nn,X */
{
printf("%x ROR nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0x77*/
case 0x78:					/* SEI  */
{
printf("%x SEI \n",PC);
SET_FLAG_INTERRUPT();
	break;
}

case 0x79:					/* ADC nnnn,Y */
{
printf("%x ADC nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	/* Undefined operator 0x7a*/
	/* Undefined operator 0x7b*/
	/* Undefined operator 0x7c*/
case 0x7d:					/* ADC nnnn,X */
{
printf("%x ADC nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var + var2 + FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY((var < var2) || ((var == var2) && temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0x7e:					/* ROR nnnn,X */
{
printf("%x ROR nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  uint8_t temp=var & 0x01;
  var = ((var>>1)+(FLAG_ISSET_CARRY()<<7)) & 0xFF;
  UPDATE_FLAG_CARRY(temp);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x7f*/
	/* Undefined operator 0x80*/
case 0x81:					/* STA (nn,X) */
{
printf("%x STA (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var=A;
  store_mem8(addr,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x82*/
	/* Undefined operator 0x83*/
case 0x84:					/* STY nn */
{
printf("%x STY nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=Y;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

case 0x85:					/* STA nn */
{
printf("%x STA nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=A;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

case 0x86:					/* STX nn */
{
printf("%x STX nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=X;
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x87*/
case 0x88:					/* DEY  */
{
printf("%x DEY \n",PC);
  uint8_t var=Y;
  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

	/* Undefined operator 0x89*/
case 0x8a:					/* TXA  */
{
printf("%x TXA \n",PC);
  uint8_t var=X;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

	/* Undefined operator 0x8b*/
case 0x8c:					/* STY nnnn */
{
printf("%x STY nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=Y;
  store_mem8((addr),var);
  PC+=2;
	break;
}

case 0x8d:					/* STA nnnn */
{
printf("%x STA nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr),var);
  PC+=2;
	break;
}

case 0x8e:					/* STX nnnn */
{
printf("%x STX nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=X;
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x8f*/
case 0x90:					/* BCC rr */
{
printf("%x BCC rr\n",PC);
  uint8_t var=PC;
  if (!FLAG_ISSET_CARRY())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0x91:					/* STA (nn),Y */
{
printf("%x STA (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var=A;
  store_mem8(addr,var);
  PC+=1;
	break;
}

	/* Undefined operator 0x92*/
	/* Undefined operator 0x93*/
case 0x94:					/* STY nn,X */
{
printf("%x STY nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=Y;
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

case 0x95:					/* STA nn,X */
{
printf("%x STA nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=A;
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

case 0x96:					/* STX nn,Y */
{
printf("%x STX nn,Y\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=X;
store_mem8((addr+Y) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0x97*/
case 0x98:					/* TYA  */
{
printf("%x TYA \n",PC);
  uint8_t var=Y;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
	break;
}

case 0x99:					/* STA nnnn,Y */
{
printf("%x STA nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr+Y),var);
  PC+=2;
	break;
}

case 0x9a:					/* TXS  */
{
printf("%x TXS \n",PC);
  uint8_t var=X;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  SP=0x0100 | (var & 0xff);
	break;
}

	/* Undefined operator 0x9b*/
	/* Undefined operator 0x9c*/
case 0x9d:					/* STA nnnn,X */
{
printf("%x STA nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=A;
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0x9e*/
	/* Undefined operator 0x9f*/
case 0xa0:					/* LDY #ii */
{
printf("%x LDY #ii\n",PC);
  uint8_t var=load_mem8(PC);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xa1:					/* LDA (nn,X) */
{
printf("%x LDA (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa2:					/* LDX #ii */
{
printf("%x LDX #ii\n",PC);
  uint8_t var=load_mem8(PC);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xa3*/
case 0xa4:					/* LDY nn */
{
printf("%x LDY nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xa5:					/* LDA nn */
{
printf("%x LDA nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xa6:					/* LDX nn */
{
printf("%x LDX nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xa7*/
case 0xa8:					/* TAY  */
{
printf("%x TAY \n",PC);
  uint8_t var=A;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

case 0xa9:					/* LDA #ii */
{
printf("%x LDA #ii\n",PC);
  uint8_t var=load_mem8(PC);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xaa:					/* TAX  */
{
printf("%x TAX \n",PC);
  uint8_t var=A;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	/* Undefined operator 0xab*/
case 0xac:					/* LDY nnnn */
{
printf("%x LDY nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=2;
	break;
}

case 0xad:					/* LDA nnnn */
{
printf("%x LDA nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xae:					/* LDX nnnn */
{
printf("%x LDX nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=2;
	break;
}

	/* Undefined operator 0xaf*/
case 0xb0:					/* BCS rr */
{
printf("%x BCS rr\n",PC);
  uint8_t var=PC;
  if (FLAG_ISSET_CARRY())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xb1:					/* LDA (nn),Y */
{
printf("%x LDA (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var=load_mem8(addr);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xb2*/
	/* Undefined operator 0xb3*/
case 0xb4:					/* LDY nn,X */
{
printf("%x LDY nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=1;
	break;
}

case 0xb5:					/* LDA nn,X */
{
printf("%x LDA nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xb6:					/* LDX nn,Y */
{
printf("%x LDX nn,Y\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+Y) & 0xFF);  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xb7*/
case 0xb8:					/* CLV  */
{
printf("%x CLV \n",PC);
	break;
}

case 0xb9:					/* LDA nnnn,Y */
{
printf("%x LDA nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+Y));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xba:					/* TSX  */
{
printf("%x TSX \n",PC);
  uint16_t var=(SP & 0xff);
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	/* Undefined operator 0xbb*/
case 0xbc:					/* LDY nnnn,X */
{
printf("%x LDY nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
  PC+=2;
	break;
}

case 0xbd:					/* LDA nnnn,X */
{
printf("%x LDA nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xbe:					/* LDX nnnn,Y */
{
printf("%x LDX nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+Y));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
  PC+=2;
	break;
}

	/* Undefined operator 0xbf*/
case 0xc0:					/* CPY #ii */
{
printf("%x CPY #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc1:					/* CMP (nn,X) */
{
printf("%x CMP (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

	/* Undefined operator 0xc2*/
	/* Undefined operator 0xc3*/
case 0xc4:					/* CPY nn */
{
printf("%x CPY nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc5:					/* CMP nn */
{
printf("%x CMP nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xc6:					/* DEC nn */
{
printf("%x DEC nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0xc7*/
case 0xc8:					/* INY  */
{
printf("%x INY \n",PC);
  uint8_t var=Y;
  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  Y=var;
	break;
}

case 0xc9:					/* CMP #ii */
{
printf("%x CMP #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xca:					/* DEX  */
{
printf("%x DEX \n",PC);
  uint8_t var=X;
  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

	/* Undefined operator 0xcb*/
case 0xcc:					/* CPY nnnn */
{
printf("%x CPY nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=Y;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xcd:					/* CMP nnnn */
{
printf("%x CMP nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xce:					/* DEC nnnn */
{
printf("%x DEC nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0xcf*/
case 0xd0:					/* BNE rr */
{
printf("%x BNE rr\n",PC);
  uint8_t var=PC;
  if (!FLAG_ISSET_ZERO())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xd1:					/* CMP (nn),Y */
{
printf("%x CMP (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

	/* Undefined operator 0xd2*/
	/* Undefined operator 0xd3*/
	/* Undefined operator 0xd4*/
case 0xd5:					/* CMP nn,X */
{
printf("%x CMP nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xd6:					/* DEC nn,X */
{
printf("%x DEC nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0xd7*/
case 0xd8:					/* CLD  */
{
printf("%x CLD \n",PC);
CLEAR_FLAG_DECIMAL();
	break;
}

case 0xd9:					/* CMP nnnn,Y */
{
printf("%x CMP nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

	/* Undefined operator 0xda*/
	/* Undefined operator 0xdb*/
	/* Undefined operator 0xdc*/
case 0xdd:					/* CMP nnnn,X */
{
printf("%x CMP nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xde:					/* DEC nnnn,X */
{
printf("%x DEC nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  var--;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0xdf*/
case 0xe0:					/* CPX #ii */
{
printf("%x CPX #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xe1:					/* SBC (nn,X) */
{
printf("%x SBC (nn,X)\n",PC);

  uint16_t addr=(load_mem8(PC)+X) & 0xFF;
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8);
/* wrap around for addr+1 when addr=0xff? */
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xe2*/
	/* Undefined operator 0xe3*/
case 0xe4:					/* CPX nn */
{
printf("%x CPX nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=1;
	break;
}

case 0xe5:					/* SBC nn */
{
printf("%x SBC nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xe6:					/* INC nn */
{
printf("%x INC nn\n",PC);
  uint16_t addr=load_mem8(PC);
  uint8_t var=load_mem8(addr);
  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr) & 0xFF,var);
  PC+=1;
	break;
}

	/* Undefined operator 0xe7*/
case 0xe8:					/* INX  */
{
printf("%x INX \n",PC);
  uint8_t var=X;
  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  X=var;
	break;
}

case 0xe9:					/* SBC #ii */
{
printf("%x SBC #ii\n",PC);
  uint8_t var2=load_mem8(PC);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xea:					/* NOP  */
{
printf("%x NOP \n",PC);
	break;
}

	/* Undefined operator 0xeb*/
case 0xec:					/* CPX nnnn */
{
printf("%x CPX nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=X;
  uint8_t temp=var;
  var = (var - var2) & 0xFF;
  UPDATE_FLAG_CARRY(!(var > temp));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  PC+=2;
	break;
}

case 0xed:					/* SBC nnnn */
{
printf("%x SBC nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xee:					/* INC nnnn */
{
printf("%x INC nnnn\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
  uint8_t var=load_mem8(addr);
  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr),var);
  PC+=2;
	break;
}

	/* Undefined operator 0xef*/
case 0xf0:					/* BEQ rr */
{
printf("%x BEQ rr\n",PC);
  uint8_t var=PC;
  if (FLAG_ISSET_ZERO())
  {
  var+=(int8_t) load_mem8(PC);
  }
  PC=var;
  PC+=1;
	break;
}

case 0xf1:					/* SBC (nn),Y */
{
printf("%x SBC (nn),Y\n",PC);

  uint16_t addr=load_mem8(PC);
  addr=load_mem8(addr)+(load_mem8(addr+1)<<8) + Y;
/* wrap around? extra cycle? */
   uint8_t var2=load_mem8(addr);
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

	/* Undefined operator 0xf2*/
	/* Undefined operator 0xf3*/
	/* Undefined operator 0xf4*/
case 0xf5:					/* SBC nn,X */
{
printf("%x SBC nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var2=load_mem8((addr+X) & 0xFF);  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=1;
	break;
}

case 0xf6:					/* INC nn,X */
{
printf("%x INC nn,X\n",PC);
  uint16_t addr=load_mem8(PC);
uint8_t var=load_mem8((addr+X) & 0xFF);  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
store_mem8((addr+X) & 0xFF,var);  PC+=1;
	break;
}

	/* Undefined operator 0xf7*/
case 0xf8:					/* SED  */
{
printf("%x SED \n",PC);
SET_FLAG_DECIMAL();
	break;
}

case 0xf9:					/* SBC nnnn,Y */
{
printf("%x SBC nnnn,Y\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+Y));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

	/* Undefined operator 0xfa*/
	/* Undefined operator 0xfb*/
	/* Undefined operator 0xfc*/
case 0xfd:					/* SBC nnnn,X */
{
printf("%x SBC nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var2=load_mem8((addr+X));
  uint8_t var=A;
  uint8_t temp=var;
  var = (var - var2 - !FLAG_ISSET_CARRY()) & 0xFF;
  UPDATE_FLAG_CARRY(!((var > temp) || ((var == temp) && var2)));
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  A=var;
  PC+=2;
	break;
}

case 0xfe:					/* INC nnnn,X */
{
printf("%x INC nnnn,X\n",PC);
  uint16_t addr=(load_mem8(PC))+(load_mem8(PC+1)<<8);
//This doesn't emulate correctly access memory if the page boundary
  uint8_t var=load_mem8((addr+X));
  var++;
  UPDATE_FLAG_ZERO(var==0);
  UPDATE_FLAG_NEG(var & 0x80); 
  store_mem8((addr+X),var);
  PC+=2;
	break;
}

	/* Undefined operator 0xff*/
