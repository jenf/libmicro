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

TEMP: .int8 00
TEMP2: .int8 00

MAIN:   NOP
TEST213:  LDX 0x03 ; Example 2.13 from the spec
        STX TEMP
        LDA 0x05
        SEC
        SBC TEMP
        NOP

TEST214:  LDX 0x06 ; Example 2.14 from the spec
        STX TEMP
        LDA 0x05
        SEC
        SBC TEMP
        NOP
        JMP TEST216
Ahigh: .int8 2
Alow: .int8 0

Mhigh: .int8 0
Mlow: .int8 0xff
TEST216: LDA Alow
         SEC
         SBC Mlow
         TAX
         LDA Ahigh
         SBC Mhigh
; Should come out with 0x01 in A, 0x01 in X

TEST217: LDA Mlow
         SEC
         SBC Alow
; Carry flag should be set after this.
         TAX
         LDA Mhigh
         SBC Ahigh
         JMP TEST218
;  Decimal mode (these will bork at the moment)
Dec: .int8 #29
TEST218: SED
         SEC
         LDA #44
         SBC Dec
; Should come out with 0xfe in A, 0xff in X
SELF:   JMP SELF
        NOP
        NOP

