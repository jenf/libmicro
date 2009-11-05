;args 6
; this needs to be checked to see if it is correct

TEMP: .int8 0x55
TEMP2: .int8 0x99
MAIN:   LDA 0x54
        CMP TEMP ; Should come out ncz
        LDA 0x55 
        CMP TEMP ; Should come out nCZ
        LDA 0x56
        CMP TEMP ; Should come out nCz
        LDA 0x98
        CMP TEMP2 ; Should come out  Ncz

SELF:   JMP SELF
        NOP
        NOP

