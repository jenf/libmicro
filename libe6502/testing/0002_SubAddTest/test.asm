;args 6
; this needs to be checked to see if it is correct
MAIN:  LDA HOWDY
       CLC
       SBC HOWDY.w
       ADC HOWDY.b
       LDA HOWDY.w
; These are working
       ROR A
       ROL A
       NOP
HOWDY: .int8 0x11
