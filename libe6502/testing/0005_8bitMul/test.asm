;args 20
; this needs to be checked to see if it is correct
; it appears correct, and I believe the branch relatives are now
; working as suppost to.
HOWDY: .int8 0x3

;MUL1: .int8 61
;MUL2: .int8 6F
;MUL1: .int8 03
;MUL2: .int8 05
MUL1: .int8 6F
MUL2: .int8 61
LSBR: .int8 00
MSBR: .int8 00

MAIN:   CLC
        LDA #0
        STA MSBR
        LDX #8
SHIFT:  ASL A
        ROL MSBR
        ASL MUL2
        BCC CHCNT
        CLC
        ADC MUL1
        BCC CHCNT
        INC MSBR
CHCNT:  DEX
        BNE SHIFT
        STA LSBR
        LDA LSBR
        LDX MSBR
        NOP
        NOP

