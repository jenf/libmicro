;args 6
; this needs to be checked to see if it is correct

;MUL1: .int8 61
;MUL2: .int8 6F
;MUL1: .int8 03
;MUL2: .int8 05
DIVL: .int8 6D ; 40
DIVH: .int8 32 ; 41
DIVBY: .int8 47 ; 42
QUOTIANT: .int8 00 ; 43
REMAINDER: .int8 00 ; 44


MAIN:   CLC
        LDX #8
        LDA DIVL.b
        STA QUOTIANT.b
        LDA DIVH.b
DIVID:  ASL QUOTIANT.b
        ROL A
        CMP DIVBY.b
        BCC CHCNT
        SBC DIVBY.b
        INC QUOTIANT.b
CHCNT:  DEX
        BNE DIVID
        STA REMAINDER.b 
        LDA QUOTIANT.b
        LDX REMAINDER.b
        NOP
        NOP

