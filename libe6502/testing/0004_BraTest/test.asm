;args 20
; this needs to be checked to see if it is correct
; it appears correct, and I believe the branch relatives are now
; working as suppost to.
HOWDY: .int8 0x3
MAIN:  LDY #2
LOOP2: LDX HOWDY
LOOP:  DEX
       BNE LOOP
       BEQ FORWARD
       NOP
; Test forward jumps
FORWARD: DEY
         BNE LOOP2
         NOP
         NOP

