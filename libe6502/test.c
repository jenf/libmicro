#include <stdint.h>
#include <stdio.h>
#include "flags.h"

uint8_t load_mem8(uint16_t a)
{
 return 0xEA;
}
uint16_t load_mem16(uint16_t a)
{
 return 0xEA;
}
void store_mem8(uint16_t a,uint8_t b)
{
 printf("Store\n");
}

int main() {
   uint8_t opcode;
   uint8_t A, X, Y, P;
   uint16_t PC, SP;

   while(1) {
      opcode = load_mem8(PC);
      PC++;
      switch(opcode) {
#include "output.c"
      }
   }
}
