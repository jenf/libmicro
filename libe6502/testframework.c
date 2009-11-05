#include <stdint.h>
#include <stdio.h>
#include "flags.h"
#include <stdlib.h>
#include <fcntl.h>

uint8_t *memory;
uint8_t load_mem8(uint16_t a)
{
 printf("Load %x %x\n",a,memory[a]);
 return memory[a];
}

uint16_t load_mem16(uint16_t a)
{
 return (load_mem8(a)<<8)+(load_mem8(a+1));
// return 0xEA;
}

void store_mem8(uint16_t a,uint8_t b)
{
 printf("Store %x %x\n",a,b);
 memory[a]=b;
}

void run_6502(uint16_t operations)
{
   uint16_t prevpc;
   uint16_t performed_ops=0;
   uint8_t opcode;
   uint8_t A=0x99, X=0x99, Y=0x99, P=0x99;
   uint16_t PC=0x99, SP=0x10ff;
   PC=load_mem16(0xFFFC);
   while(1) {
      prevpc=PC;
      opcode = load_mem8(PC);
      printf("PC: %04x A: %02x X: %02x Y: %02x SP: %04x P: %02x(%c%c-%c%c%c%c%c)\n",PC,A,X,Y,SP,P,
      FLAG_ISSET_NEG()?'N':'n'   ,FLAG_ISSET_OVERFLOW()?'V':'v',
      FLAG_ISSET_BREAK()?'B':'b' ,FLAG_ISSET_DECIMAL()?'D':'d',
      FLAG_ISSET_INTERRUPT()?'I':'i',FLAG_ISSET_ZERO()?'Z':'z',
      FLAG_ISSET_CARRY()?'C':'c');
      if (performed_ops>=operations)
      {
        return;
      }
      PC++;
      switch(opcode) {
#include "output.c"
      }
      performed_ops++;
      if (PC==prevpc)
      {
       printf("self jump, exiting\n");
       exit(1);
      }
   }
}


int main(int argc,char **argv) {
   char *fn;
   int operations;
   int h;
   fn=argv[1];
   operations=atoi(argv[2]);
   //printf("%s %i\n",fn,operations);
   memory=malloc(65536);
   h=open(fn,O_RDONLY);
   read(h,memory,65536);
   run_6502(operations);
}
