;args 9
; this needs to be checked to see if it is correct
HOWDY: .int8 0xad
MAIN:  LDX HOWDY
LOOP:  INX
       ; Loop works AOK
       JMP LOOP
