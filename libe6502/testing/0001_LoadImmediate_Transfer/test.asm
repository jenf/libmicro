;args 9
; this needs to be checked to see if it is correct
;#Load fffc 0
;#Load fffd 0
;#Load 0 a2
;#PC: 0000 A: 99 X: 99 Y: 99 SP: 10ff P: 99(Nv-BDIz)

LDX 0x99
;; Load and reset the stack pointer
;#1 LDX #ii
;#Load 1 99
;#Load 2 9a
;#PC: 0002 A: 99 X: 99 Y: 99 SP: 10ff P: 99(Nv-BDIz)

TXS
;#3 TXS 
;#Load 3 ea
;#PC: 0003 A: 99 X: 99 Y: 99 SP: 0199 P: 99(Nv-BDIz)

NOP
;#4 NOP 
;#Load 4 a9
;#PC: 0004 A: 99 X: 99 Y: 99 SP: 0199 P: 99(Nv-BDIz)

LDA 0xae
;#5 LDA #ii
;#Load 5 ae
;#Load 6 aa
;#PC: 0006 A: ae X: 99 Y: 99 SP: 0199 P: 99(Nv-BDIz)

TAX
;#7 TAX 
;#Load 7 e8
;#PC: 0007 A: ae X: ae Y: 99 SP: 0199 P: 99(Nv-BDIz)

INX
;#8 INX 
;#Load 8 8a
;#PC: 0008 A: ae X: af Y: 99 SP: 0199 P: 99(Nv-BDIz)

TXA
;#9 TXA 
;#Load 9 ca
;#PC: 0009 A: af X: af Y: 99 SP: 0199 P: 99(Nv-BDIz)

DEX
;#a DEX 
;#Load a a9
;#PC: 000a A: af X: ae Y: 99 SP: 0199 P: 99(Nv-BDIz)

LDA 0x00
;#b LDA #ii
;#Load b 0
;#Load c ea
;#PC: 000c A: 00 X: ae Y: 99 SP: 0199 P: 1b(nv-BDIZ)
