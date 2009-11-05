	.section __TEXT,__text,regular,pure_instructions
	.section __TEXT,__picsymbolstub1,symbol_stubs,pure_instructions,32
	.machine ppc
	.text
	.align 2
	.globl _load_mem8
_load_mem8:
	li r3,234
	blr
	.align 2
	.globl _load_mem16
_load_mem16:
	li r3,234
	blr
	.cstring
	.align 2
LC0:
	.ascii "Store\0"
	.text
	.align 2
	.globl _store_mem8
_store_mem8:
	mflr r0
	bcl 20,31,"L00000000001$pb"
"L00000000001$pb":
	stw r31,-4(r1)
	mflr r31
	stw r0,8(r1)
	stwu r1,-80(r1)
	addis r3,r31,ha16(LC0-"L00000000001$pb")
	la r3,lo16(LC0-"L00000000001$pb")(r3)
	bl L_puts$stub
	addi r1,r1,80
	lwz r0,8(r1)
	lwz r31,-4(r1)
	mtlr r0
	blr
	.cstring
	.align 2
LC1:
	.ascii "%x ORA (nn,X)\12\0"
	.align 2
LC2:
	.ascii "%x ORA nn\12\0"
	.align 2
LC3:
	.ascii "%x ASL nn\12\0"
	.align 2
LC4:
	.ascii "%x PHP \12\0"
	.align 2
LC5:
	.ascii "%x ORA #ii\12\0"
	.align 2
LC6:
	.ascii "%x ASL A\12\0"
	.align 2
LC7:
	.ascii "%x ORA nnnn\12\0"
	.align 2
LC8:
	.ascii "%x ASL nnnn\12\0"
	.align 2
LC9:
	.ascii "%x BPL rr\12\0"
	.align 2
LC10:
	.ascii "%x ORA (nn),Y\12\0"
	.align 2
LC11:
	.ascii "%x ORA nn,X\12\0"
	.align 2
LC12:
	.ascii "%x ASL nn,X\12\0"
	.align 2
LC13:
	.ascii "%x CLC \12\0"
	.align 2
LC14:
	.ascii "%x ORA nnnn,Y\12\0"
	.align 2
LC15:
	.ascii "%x ORA nnnn,X\12\0"
	.align 2
LC16:
	.ascii "%x ASL nnnn,X\12\0"
	.align 2
LC17:
	.ascii "%x JSR nnnn\12\0"
	.align 2
LC18:
	.ascii "%x AND (nn,X)\12\0"
	.align 2
LC19:
	.ascii "%x BIT nn\12\0"
	.align 2
LC20:
	.ascii "%x AND nn\12\0"
	.align 2
LC21:
	.ascii "%x ROL nn\12\0"
	.align 2
LC22:
	.ascii "%x PLP \12\0"
	.align 2
LC23:
	.ascii "%x AND #ii\12\0"
	.align 2
LC24:
	.ascii "%x ROL A\12\0"
	.align 2
LC25:
	.ascii "%x BIT nnnn\12\0"
	.align 2
LC26:
	.ascii "%x AND nnnn\12\0"
	.align 2
LC27:
	.ascii "%x ROL nnnn\12\0"
	.align 2
LC28:
	.ascii "%x BMI rr\12\0"
	.align 2
LC29:
	.ascii "%x AND (nn),Y\12\0"
	.align 2
LC30:
	.ascii "%x AND nn,X\12\0"
	.align 2
LC31:
	.ascii "%x ROL nn,X\12\0"
	.align 2
LC32:
	.ascii "%x SEC \12\0"
	.align 2
LC33:
	.ascii "%x AND nnnn,Y\12\0"
	.align 2
LC34:
	.ascii "%x AND nnnn,X\12\0"
	.align 2
LC35:
	.ascii "%x ROL nnnn,X\12\0"
	.align 2
LC36:
	.ascii "%x RTI \12\0"
	.align 2
LC37:
	.ascii "%x EOR (nn,X)\12\0"
	.align 2
LC38:
	.ascii "%x EOR nn\12\0"
	.align 2
LC39:
	.ascii "%x LSR nn\12\0"
	.align 2
LC40:
	.ascii "%x PHA \12\0"
	.align 2
LC41:
	.ascii "%x EOR #ii\12\0"
	.align 2
LC42:
	.ascii "%x LSR A\12\0"
	.align 2
LC43:
	.ascii "%x JMP nnnn\12\0"
	.align 2
LC44:
	.ascii "%x EOR nnnn\12\0"
	.align 2
LC45:
	.ascii "%x LSR nnnn\12\0"
	.align 2
LC46:
	.ascii "%x BVC rr\12\0"
	.align 2
LC47:
	.ascii "%x EOR (nn),Y\12\0"
	.align 2
LC48:
	.ascii "%x EOR nn,X\12\0"
	.align 2
LC49:
	.ascii "%x LSR nn,X\12\0"
	.align 2
LC50:
	.ascii "%x CLI \12\0"
	.align 2
LC51:
	.ascii "%x EOR nnnn,Y\12\0"
	.align 2
LC52:
	.ascii "%x EOR nnnn,X\12\0"
	.align 2
LC53:
	.ascii "%x LSR nnnn,X\12\0"
	.align 2
LC54:
	.ascii "%x RTS \12\0"
	.align 2
LC55:
	.ascii "%x ADC (nn,X)\12\0"
	.align 2
LC56:
	.ascii "%x ADC nn\12\0"
	.align 2
LC57:
	.ascii "%x ROR nn\12\0"
	.align 2
LC58:
	.ascii "%x PLA \12\0"
	.align 2
LC59:
	.ascii "%x ADC #ii\12\0"
	.align 2
LC60:
	.ascii "%x ROR A\12\0"
	.align 2
LC61:
	.ascii "%x JMP (nnnn)\12\0"
	.align 2
LC62:
	.ascii "%x ADC nnnn\12\0"
	.align 2
LC63:
	.ascii "%x ROR nnnn\12\0"
	.align 2
LC64:
	.ascii "%x BVS rr\12\0"
	.align 2
LC65:
	.ascii "%x ADC (nn),Y\12\0"
	.align 2
LC66:
	.ascii "%x ADC nn,X\12\0"
	.align 2
LC67:
	.ascii "%x ROR nn,X\12\0"
	.align 2
LC68:
	.ascii "%x SEI \12\0"
	.align 2
LC69:
	.ascii "%x ADC nnnn,Y\12\0"
	.align 2
LC70:
	.ascii "%x ADC nnnn,X\12\0"
	.align 2
LC71:
	.ascii "%x ROR nnnn,X\12\0"
	.align 2
LC72:
	.ascii "%x STA (nn,X)\12\0"
	.align 2
LC73:
	.ascii "%x STY nn\12\0"
	.align 2
LC74:
	.ascii "%x STA nn\12\0"
	.align 2
LC75:
	.ascii "%x STX nn\12\0"
	.align 2
LC76:
	.ascii "%x DEY \12\0"
	.align 2
LC77:
	.ascii "%x TXA \12\0"
	.align 2
LC78:
	.ascii "%x STY nnnn\12\0"
	.align 2
LC79:
	.ascii "%x STA nnnn\12\0"
	.align 2
LC80:
	.ascii "%x STX nnnn\12\0"
	.align 2
LC81:
	.ascii "%x BCC rr\12\0"
	.align 2
LC82:
	.ascii "%x STA (nn),Y\12\0"
	.align 2
LC83:
	.ascii "%x STY nn,X\12\0"
	.align 2
LC84:
	.ascii "%x STA nn,X\12\0"
	.align 2
LC85:
	.ascii "%x STX nn,Y\12\0"
	.align 2
LC86:
	.ascii "%x TYA \12\0"
	.align 2
LC87:
	.ascii "%x STA nnnn,Y\12\0"
	.align 2
LC88:
	.ascii "%x TXS \12\0"
	.align 2
LC89:
	.ascii "%x STA nnnn,X\12\0"
	.align 2
LC90:
	.ascii "%x LDY #ii\12\0"
	.align 2
LC91:
	.ascii "%x LDA (nn,X)\12\0"
	.align 2
LC92:
	.ascii "%x LDX #ii\12\0"
	.align 2
LC93:
	.ascii "%x LDY nn\12\0"
	.align 2
LC94:
	.ascii "%x LDA nn\12\0"
	.align 2
LC95:
	.ascii "%x LDX nn\12\0"
	.align 2
LC96:
	.ascii "%x TAY \12\0"
	.align 2
LC97:
	.ascii "%x LDA #ii\12\0"
	.align 2
LC98:
	.ascii "%x TAX \12\0"
	.align 2
LC99:
	.ascii "%x LDY nnnn\12\0"
	.align 2
LC100:
	.ascii "%x LDA nnnn\12\0"
	.align 2
LC101:
	.ascii "%x LDX nnnn\12\0"
	.align 2
LC102:
	.ascii "%x BCS rr\12\0"
	.align 2
LC103:
	.ascii "%x LDA (nn),Y\12\0"
	.align 2
LC104:
	.ascii "%x LDY nn,X\12\0"
	.align 2
LC105:
	.ascii "%x LDA nn,X\12\0"
	.align 2
LC106:
	.ascii "%x LDX nn,Y\12\0"
	.align 2
LC107:
	.ascii "%x CLV \12\0"
	.align 2
LC108:
	.ascii "%x LDA nnnn,Y\12\0"
	.align 2
LC109:
	.ascii "%x TSX \12\0"
	.align 2
LC110:
	.ascii "%x LDY nnnn,X\12\0"
	.align 2
LC111:
	.ascii "%x LDA nnnn,X\12\0"
	.align 2
LC112:
	.ascii "%x LDX nnnn,Y\12\0"
	.align 2
LC113:
	.ascii "%x CPY #ii\12\0"
	.align 2
LC114:
	.ascii "%x CMP (nn,X)\12\0"
	.align 2
LC115:
	.ascii "%x CPY nn\12\0"
	.align 2
LC116:
	.ascii "%x CMP nn\12\0"
	.align 2
LC117:
	.ascii "%x DEC nn\12\0"
	.align 2
LC118:
	.ascii "%x INY \12\0"
	.align 2
LC119:
	.ascii "%x CMP #ii\12\0"
	.align 2
LC120:
	.ascii "%x DEX \12\0"
	.align 2
LC121:
	.ascii "%x CPY nnnn\12\0"
	.align 2
LC122:
	.ascii "%x CMP nnnn\12\0"
	.align 2
LC123:
	.ascii "%x DEC nnnn\12\0"
	.align 2
LC124:
	.ascii "%x BNE rr\12\0"
	.align 2
LC125:
	.ascii "%x CMP (nn),Y\12\0"
	.align 2
LC126:
	.ascii "%x CMP nn,X\12\0"
	.align 2
LC127:
	.ascii "%x DEC nn,X\12\0"
	.align 2
LC128:
	.ascii "%x CLD \12\0"
	.align 2
LC129:
	.ascii "%x CMP nnnn,Y\12\0"
	.align 2
LC130:
	.ascii "%x CMP nnnn,X\12\0"
	.align 2
LC131:
	.ascii "%x DEC nnnn,X\12\0"
	.align 2
LC132:
	.ascii "%x CPX #ii\12\0"
	.align 2
LC133:
	.ascii "%x SBC (nn,X)\12\0"
	.align 2
LC134:
	.ascii "%x CPX nn\12\0"
	.align 2
LC135:
	.ascii "%x SBC nn\12\0"
	.align 2
LC136:
	.ascii "%x INC nn\12\0"
	.align 2
LC137:
	.ascii "%x INX \12\0"
	.align 2
LC138:
	.ascii "%x SBC #ii\12\0"
	.align 2
LC139:
	.ascii "%x NOP \12\0"
	.align 2
LC140:
	.ascii "%x CPX nnnn\12\0"
	.align 2
LC141:
	.ascii "%x SBC nnnn\12\0"
	.align 2
LC142:
	.ascii "%x INC nnnn\12\0"
	.align 2
LC143:
	.ascii "%x BEQ rr\12\0"
	.align 2
LC144:
	.ascii "%x SBC (nn),Y\12\0"
	.align 2
LC145:
	.ascii "%x SBC nn,X\12\0"
	.align 2
LC146:
	.ascii "%x INC nn,X\12\0"
	.align 2
LC147:
	.ascii "%x SED \12\0"
	.align 2
LC148:
	.ascii "%x SBC nnnn,Y\12\0"
	.align 2
LC149:
	.ascii "%x SBC nnnn,X\12\0"
	.align 2
LC150:
	.ascii "%x INC nnnn,X\12\0"
	.text
	.align 2
	.globl _main
_main:
	mflr r0
	bcl 20,31,"L00000000002$pb"
"L00000000002$pb":
	stmw r23,-36(r1)
	mflr r31
	stw r0,8(r1)
	stwu r1,-112(r1)
L1055:
	mr r3,r27
	bl _load_mem8
	addi r0,r27,1
	cmplwi cr7,r3,254
	rlwinm r27,r0,0,0xffff
	bgt- cr7,L1055
	addis r2,r31,ha16(L160-"L00000000002$pb")
	slwi r0,r3,2
	la r2,lo16(L160-"L00000000002$pb")(r2)
	lwzx r9,r2,r0
	add r9,r9,r2
	mtctr r9
	bctr
	.align 2
L160:
	.long L1055-L160
	.long L10-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L11-L160
	.long L12-L160
	.long L1055-L160
	.long L13-L160
	.long L14-L160
	.long L15-L160
	.long L1055-L160
	.long L1055-L160
	.long L16-L160
	.long L17-L160
	.long L1055-L160
	.long L18-L160
	.long L19-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L20-L160
	.long L21-L160
	.long L1055-L160
	.long L22-L160
	.long L23-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L24-L160
	.long L25-L160
	.long L1055-L160
	.long L26-L160
	.long L27-L160
	.long L1055-L160
	.long L1055-L160
	.long L28-L160
	.long L29-L160
	.long L30-L160
	.long L1055-L160
	.long L31-L160
	.long L32-L160
	.long L33-L160
	.long L1055-L160
	.long L34-L160
	.long L35-L160
	.long L36-L160
	.long L1055-L160
	.long L37-L160
	.long L38-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L39-L160
	.long L40-L160
	.long L1055-L160
	.long L41-L160
	.long L42-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L43-L160
	.long L44-L160
	.long L1055-L160
	.long L45-L160
	.long L46-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L47-L160
	.long L48-L160
	.long L1055-L160
	.long L49-L160
	.long L50-L160
	.long L51-L160
	.long L1055-L160
	.long L52-L160
	.long L53-L160
	.long L54-L160
	.long L1055-L160
	.long L55-L160
	.long L56-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L57-L160
	.long L58-L160
	.long L1055-L160
	.long L59-L160
	.long L60-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L61-L160
	.long L62-L160
	.long L1055-L160
	.long L63-L160
	.long L64-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L65-L160
	.long L66-L160
	.long L1055-L160
	.long L67-L160
	.long L68-L160
	.long L69-L160
	.long L1055-L160
	.long L70-L160
	.long L71-L160
	.long L72-L160
	.long L1055-L160
	.long L73-L160
	.long L74-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L75-L160
	.long L76-L160
	.long L1055-L160
	.long L77-L160
	.long L78-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L79-L160
	.long L80-L160
	.long L1055-L160
	.long L1055-L160
	.long L81-L160
	.long L1055-L160
	.long L1055-L160
	.long L82-L160
	.long L83-L160
	.long L84-L160
	.long L1055-L160
	.long L85-L160
	.long L1055-L160
	.long L86-L160
	.long L1055-L160
	.long L87-L160
	.long L88-L160
	.long L89-L160
	.long L1055-L160
	.long L90-L160
	.long L91-L160
	.long L1055-L160
	.long L1055-L160
	.long L92-L160
	.long L93-L160
	.long L94-L160
	.long L1055-L160
	.long L95-L160
	.long L96-L160
	.long L97-L160
	.long L1055-L160
	.long L1055-L160
	.long L98-L160
	.long L1055-L160
	.long L1055-L160
	.long L99-L160
	.long L100-L160
	.long L101-L160
	.long L1055-L160
	.long L102-L160
	.long L103-L160
	.long L104-L160
	.long L1055-L160
	.long L105-L160
	.long L106-L160
	.long L107-L160
	.long L1055-L160
	.long L108-L160
	.long L109-L160
	.long L110-L160
	.long L1055-L160
	.long L111-L160
	.long L112-L160
	.long L1055-L160
	.long L1055-L160
	.long L113-L160
	.long L114-L160
	.long L115-L160
	.long L1055-L160
	.long L116-L160
	.long L117-L160
	.long L118-L160
	.long L1055-L160
	.long L119-L160
	.long L120-L160
	.long L121-L160
	.long L1055-L160
	.long L122-L160
	.long L123-L160
	.long L1055-L160
	.long L1055-L160
	.long L124-L160
	.long L125-L160
	.long L126-L160
	.long L1055-L160
	.long L127-L160
	.long L128-L160
	.long L129-L160
	.long L1055-L160
	.long L130-L160
	.long L131-L160
	.long L132-L160
	.long L1055-L160
	.long L133-L160
	.long L134-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L135-L160
	.long L136-L160
	.long L1055-L160
	.long L137-L160
	.long L138-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L139-L160
	.long L140-L160
	.long L1055-L160
	.long L141-L160
	.long L142-L160
	.long L1055-L160
	.long L1055-L160
	.long L143-L160
	.long L144-L160
	.long L145-L160
	.long L1055-L160
	.long L146-L160
	.long L147-L160
	.long L148-L160
	.long L1055-L160
	.long L149-L160
	.long L150-L160
	.long L151-L160
	.long L1055-L160
	.long L152-L160
	.long L153-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L154-L160
	.long L155-L160
	.long L1055-L160
	.long L156-L160
	.long L157-L160
	.long L1055-L160
	.long L1055-L160
	.long L1055-L160
	.long L158-L160
	.long L159-L160
L10:
	addis r3,r31,ha16(LC1-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC1-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L161
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L163
L161:
	andi. r0,r30,253
L163:
	andi. r2,r4,128
	beq+ cr0,L164
	ori r30,r0,128
	b L166
L164:
	rlwinm r30,r0,0,25,31
L166:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L11:
	addis r3,r31,ha16(LC2-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC2-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L167
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L169
L167:
	andi. r0,r30,253
L169:
	andi. r2,r4,128
	beq+ cr0,L170
	ori r30,r0,128
	b L172
L170:
	rlwinm r30,r0,0,25,31
L172:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L12:
	addis r3,r31,ha16(LC3-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC3-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L173
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L175
L173:
	rlwinm r0,r30,0,24,30
L175:
	rlwinm. r4,r3,1,24,30
	bne- cr0,L176
	ori r0,r0,2
	b L178
L176:
	andi. r0,r0,253
L178:
	andi. r2,r4,128
	beq+ cr0,L179
	ori r30,r0,128
	b L181
L179:
	rlwinm r30,r0,0,25,31
L181:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L13:
	addis r3,r31,ha16(LC4-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC4-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r23
	mr r4,r30
	bl _store_mem8
	addi r0,r23,-1
	rlwinm r23,r0,0,0xffff
	b L1055
L14:
	addis r3,r31,ha16(LC5-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC5-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L182
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L184
L182:
	andi. r0,r30,253
L184:
	andi. r2,r4,128
	beq+ cr0,L185
	ori r30,r0,128
	b L187
L185:
	rlwinm r30,r0,0,25,31
L187:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L15:
	addis r3,r31,ha16(LC6-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC6-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	andi. r0,r26,128
	beq+ cr0,L188
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L190
L188:
	rlwinm r0,r30,0,24,30
L190:
	rlwinm. r4,r26,1,24,30
	bne- cr0,L191
	ori r0,r0,2
	b L193
L191:
	andi. r0,r0,253
L193:
	andi. r2,r4,128
	beq+ cr0,L194
	ori r30,r0,128
	b L196
L194:
	rlwinm r30,r0,0,25,31
L196:
	mr r26,r4
	b L1055
L16:
	addis r3,r31,ha16(LC7-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC7-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L197
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L199
L197:
	andi. r0,r30,253
L199:
	andi. r2,r4,128
	beq+ cr0,L200
	ori r30,r0,128
	b L202
L200:
	rlwinm r30,r0,0,25,31
L202:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L17:
	addis r3,r31,ha16(LC8-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC8-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L203
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L205
L203:
	rlwinm r0,r30,0,24,30
L205:
	rlwinm. r4,r3,1,24,30
	bne- cr0,L206
	ori r0,r0,2
	b L208
L206:
	andi. r0,r0,253
L208:
	andi. r2,r4,128
	beq+ cr0,L209
	ori r30,r0,128
	b L211
L209:
	rlwinm r30,r0,0,25,31
L211:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L18:
	addis r3,r31,ha16(LC9-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC9-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,128
	bne- cr0,L212
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L212:
	addi r27,r29,1
	b L1055
L19:
	addis r3,r31,ha16(LC10-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC10-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L214
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L216
L214:
	andi. r0,r30,253
L216:
	andi. r2,r4,128
	beq+ cr0,L217
	ori r30,r0,128
	b L219
L217:
	rlwinm r30,r0,0,25,31
L219:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L20:
	addis r3,r31,ha16(LC11-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC11-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L220
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L222
L220:
	andi. r0,r30,253
L222:
	andi. r2,r4,128
	beq+ cr0,L223
	ori r30,r0,128
	b L225
L223:
	rlwinm r30,r0,0,25,31
L225:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L21:
	addis r3,r31,ha16(LC12-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC12-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L226
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L228
L226:
	rlwinm r0,r30,0,24,30
L228:
	rlwinm. r4,r3,1,24,30
	bne- cr0,L229
	ori r0,r0,2
	b L231
L229:
	andi. r0,r0,253
L231:
	andi. r2,r4,128
	beq+ cr0,L232
	ori r30,r0,128
	b L234
L232:
	rlwinm r30,r0,0,25,31
L234:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L22:
	addis r3,r31,ha16(LC13-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC13-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	rlwinm r30,r30,0,24,30
	b L1055
L23:
	addis r3,r31,ha16(LC14-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC14-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L235
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L237
L235:
	andi. r0,r30,253
L237:
	andi. r2,r4,128
	beq+ cr0,L238
	ori r30,r0,128
	b L240
L238:
	rlwinm r30,r0,0,25,31
L240:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L24:
	addis r3,r31,ha16(LC15-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC15-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	or r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L241
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L243
L241:
	andi. r0,r30,253
L243:
	andi. r2,r4,128
	beq+ cr0,L244
	ori r30,r0,128
	b L246
L244:
	rlwinm r30,r0,0,25,31
L246:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L25:
	addis r3,r31,ha16(LC16-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC16-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L247
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L249
L247:
	rlwinm r0,r30,0,24,30
L249:
	rlwinm. r4,r3,1,24,30
	bne- cr0,L250
	ori r0,r0,2
	b L252
L250:
	andi. r0,r0,253
L252:
	andi. r2,r4,128
	beq+ cr0,L253
	ori r30,r0,128
	b L255
L253:
	rlwinm r30,r0,0,25,31
L255:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L26:
	addis r3,r31,ha16(LC17-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC17-"L00000000002$pb")(r3)
	extsh r29,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r28,r23
	mr r27,r3
	addi r3,r29,1
	rlwinm r3,r3,0,0xffff
	addi r29,r29,2
	bl _load_mem8
	rlwinm r29,r29,0,0xffff
	slwi r3,r3,8
	srwi r4,r29,8
	add r27,r27,r3
	mr r3,r23
	bl _store_mem8
	addi r3,r28,-1
	rlwinm r3,r3,0,0xffff
	rlwinm r4,r29,0,0xff
	addi r28,r28,-2
	rlwinm r27,r27,0,0xffff
	bl _store_mem8
	rlwinm r23,r28,0,0xffff
	b L1055
L27:
	addis r3,r31,ha16(LC18-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC18-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L256
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L258
L256:
	andi. r0,r30,253
L258:
	andi. r2,r4,128
	beq+ cr0,L259
	ori r30,r0,128
	b L261
L259:
	rlwinm r30,r0,0,25,31
L261:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L28:
	addis r3,r31,ha16(LC19-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC19-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L262
	rlwinm r0,r30,0,0xff
	ori r0,r0,128
	b L264
L262:
	rlwinm r0,r30,0,25,31
L264:
	andi. r2,r3,64
	beq- cr0,L265
	ori r0,r0,64
	rlwinm r2,r0,0,0xff
	b L267
L265:
	andi. r2,r0,191
L267:
	and r0,r26,r3
	rlwinm r0,r0,0,0xff
	cmpwi cr7,r0,0
	bne- cr7,L268
	ori r30,r2,2
	b L270
L268:
	andi. r30,r2,253
L270:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L29:
	addis r3,r31,ha16(LC20-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC20-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L271
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L273
L271:
	andi. r0,r30,253
L273:
	andi. r2,r4,128
	beq+ cr0,L274
	ori r30,r0,128
	b L276
L274:
	rlwinm r30,r0,0,25,31
L276:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L30:
	addis r3,r31,ha16(LC21-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC21-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	andi. r0,r3,128
	rlwinm r0,r30,0,31,31
	slwi r3,r3,1
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L277
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L279
L277:
	rlwinm r0,r30,0,24,30
L279:
	cmpwi cr7,r4,0
	bne- cr7,L280
	ori r0,r0,2
	b L282
L280:
	andi. r0,r0,253
L282:
	andi. r2,r4,128
	beq+ cr0,L283
	ori r30,r0,128
	b L285
L283:
	rlwinm r30,r0,0,25,31
L285:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L31:
	addis r3,r31,ha16(LC22-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC22-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r23,1
	rlwinm r23,r0,0,0xffff
	mr r3,r23
	bl _load_mem8
	mr r30,r3
	b L1055
L32:
	addis r3,r31,ha16(LC23-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC23-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L286
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L288
L286:
	andi. r0,r30,253
L288:
	andi. r2,r4,128
	beq+ cr0,L289
	ori r30,r0,128
	b L291
L289:
	rlwinm r30,r0,0,25,31
L291:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L33:
	addis r3,r31,ha16(LC24-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC24-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	andi. r0,r26,128
	rlwinm r2,r30,0,31,31
	slwi r0,r26,1
	add r0,r0,r2
	rlwinm r4,r0,0,0xff
	beq- cr0,L292
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L294
L292:
	rlwinm r0,r30,0,24,30
L294:
	cmpwi cr7,r4,0
	bne- cr7,L295
	ori r0,r0,2
	b L297
L295:
	andi. r0,r0,253
L297:
	andi. r2,r4,128
	beq+ cr0,L298
	ori r30,r0,128
	b L300
L298:
	rlwinm r30,r0,0,25,31
L300:
	mr r26,r4
	b L1055
L34:
	addis r3,r31,ha16(LC25-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC25-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	andi. r0,r3,128
	beq+ cr0,L301
	rlwinm r0,r30,0,0xff
	ori r0,r0,128
	b L303
L301:
	rlwinm r0,r30,0,25,31
L303:
	andi. r2,r3,64
	beq- cr0,L304
	ori r0,r0,64
	rlwinm r2,r0,0,0xff
	b L306
L304:
	andi. r2,r0,191
L306:
	and r0,r26,r3
	rlwinm r0,r0,0,0xff
	cmpwi cr7,r0,0
	bne- cr7,L307
	ori r30,r2,2
	b L309
L307:
	andi. r30,r2,253
L309:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L35:
	addis r3,r31,ha16(LC26-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC26-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L310
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L312
L310:
	andi. r0,r30,253
L312:
	andi. r2,r4,128
	beq+ cr0,L313
	ori r30,r0,128
	b L315
L313:
	rlwinm r30,r0,0,25,31
L315:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L36:
	addis r3,r31,ha16(LC27-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC27-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	rlwinm r0,r30,0,31,31
	slwi r3,r3,1
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L316
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L318
L316:
	rlwinm r0,r30,0,24,30
L318:
	cmpwi cr7,r4,0
	bne- cr7,L319
	ori r0,r0,2
	b L321
L319:
	andi. r0,r0,253
L321:
	andi. r2,r4,128
	beq+ cr0,L322
	ori r30,r0,128
	b L324
L322:
	rlwinm r30,r0,0,25,31
L324:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L37:
	addis r3,r31,ha16(LC28-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC28-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,128
	beq+ cr0,L325
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L325:
	addi r27,r29,1
	b L1055
L38:
	addis r3,r31,ha16(LC29-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC29-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L327
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L329
L327:
	andi. r0,r30,253
L329:
	andi. r2,r4,128
	beq+ cr0,L330
	ori r30,r0,128
	b L332
L330:
	rlwinm r30,r0,0,25,31
L332:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L39:
	addis r3,r31,ha16(LC30-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC30-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L333
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L335
L333:
	andi. r0,r30,253
L335:
	andi. r2,r4,128
	beq+ cr0,L336
	ori r30,r0,128
	b L338
L336:
	rlwinm r30,r0,0,25,31
L338:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L40:
	addis r3,r31,ha16(LC31-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC31-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	rlwinm r0,r30,0,31,31
	slwi r3,r3,1
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L339
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L341
L339:
	rlwinm r0,r30,0,24,30
L341:
	cmpwi cr7,r4,0
	bne- cr7,L342
	ori r0,r0,2
	b L344
L342:
	andi. r0,r0,253
L344:
	andi. r2,r4,128
	beq+ cr0,L345
	ori r30,r0,128
	b L347
L345:
	rlwinm r30,r0,0,25,31
L347:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L41:
	addis r3,r31,ha16(LC32-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC32-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	ori r0,r30,1
	rlwinm r30,r0,0,0xff
	b L1055
L42:
	addis r3,r31,ha16(LC33-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC33-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L348
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L350
L348:
	andi. r0,r30,253
L350:
	andi. r2,r4,128
	beq+ cr0,L351
	ori r30,r0,128
	b L353
L351:
	rlwinm r30,r0,0,25,31
L353:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L43:
	addis r3,r31,ha16(LC34-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC34-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	and r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L354
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L356
L354:
	andi. r0,r30,253
L356:
	andi. r2,r4,128
	beq+ cr0,L357
	ori r30,r0,128
	b L359
L357:
	rlwinm r30,r0,0,25,31
L359:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L44:
	addis r3,r31,ha16(LC35-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC35-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,128
	rlwinm r0,r30,0,31,31
	slwi r3,r3,1
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L360
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L362
L360:
	rlwinm r0,r30,0,24,30
L362:
	cmpwi cr7,r4,0
	bne- cr7,L363
	ori r0,r0,2
	b L365
L363:
	andi. r0,r0,253
L365:
	andi. r2,r4,128
	beq+ cr0,L366
	ori r30,r0,128
	b L368
L366:
	rlwinm r30,r0,0,25,31
L368:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L45:
	addis r3,r31,ha16(LC36-"L00000000002$pb")
	addi r29,r23,1
	mr r4,r27
	rlwinm r29,r29,0,0xffff
	la r3,lo16(LC36-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r29
	addi r29,r29,2
	bl _load_mem8
	rlwinm r23,r29,0,0xffff
	mr r30,r3
	mr r3,r23
	bl _load_mem8
	addi r0,r23,-1
	slwi r29,r3,8
	rlwinm r3,r0,0,0xffff
	bl _load_mem8
	or r29,r29,r3
	rlwinm r27,r29,0,0xffff
	b L1055
L46:
	addis r3,r31,ha16(LC37-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC37-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L369
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L371
L369:
	andi. r0,r30,253
L371:
	andi. r2,r4,128
	beq+ cr0,L372
	ori r30,r0,128
	b L374
L372:
	rlwinm r30,r0,0,25,31
L374:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L47:
	addis r3,r31,ha16(LC38-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC38-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L375
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L377
L375:
	andi. r0,r30,253
L377:
	andi. r2,r4,128
	beq+ cr0,L378
	ori r30,r0,128
	b L380
L378:
	rlwinm r30,r0,0,25,31
L380:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L48:
	addis r3,r31,ha16(LC39-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC39-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	andi. r0,r3,1
	beq- cr0,L381
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L383
L381:
	rlwinm r0,r30,0,24,30
L383:
	rlwinm r4,r3,31,24,31
	cmpwi cr7,r4,0
	bne- cr7,L384
	ori r0,r0,2
	b L386
L384:
	andi. r0,r0,253
L386:
	andi. r2,r4,128
	beq+ cr0,L387
	ori r30,r0,128
	b L389
L387:
	rlwinm r30,r0,0,25,31
L389:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L49:
	addis r3,r31,ha16(LC40-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC40-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r23
	mr r4,r26
	bl _store_mem8
	addi r0,r23,-1
	rlwinm r23,r0,0,0xffff
	b L1055
L50:
	addis r3,r31,ha16(LC41-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC41-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L390
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L392
L390:
	andi. r0,r30,253
L392:
	andi. r2,r4,128
	beq+ cr0,L393
	ori r30,r0,128
	b L395
L393:
	rlwinm r30,r0,0,25,31
L395:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L51:
	addis r3,r31,ha16(LC42-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC42-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	andi. r0,r26,1
	beq- cr0,L396
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L398
L396:
	rlwinm r0,r30,0,24,30
L398:
	rlwinm r4,r26,31,24,31
	cmpwi cr7,r4,0
	bne- cr7,L399
	ori r0,r0,2
	b L401
L399:
	andi. r0,r0,253
L401:
	andi. r2,r4,128
	beq+ cr0,L402
	ori r30,r0,128
	b L404
L402:
	rlwinm r30,r0,0,25,31
L404:
	mr r26,r4
	b L1055
L52:
	addis r3,r31,ha16(LC43-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC43-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r27,r29,0,0xffff
	b L1055
L53:
	addis r3,r31,ha16(LC44-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC44-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L405
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L407
L405:
	andi. r0,r30,253
L407:
	andi. r2,r4,128
	beq+ cr0,L408
	ori r30,r0,128
	b L410
L408:
	rlwinm r30,r0,0,25,31
L410:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L54:
	addis r3,r31,ha16(LC45-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC45-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	beq- cr0,L411
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L413
L411:
	rlwinm r0,r30,0,24,30
L413:
	rlwinm r4,r3,31,24,31
	cmpwi cr7,r4,0
	bne- cr7,L414
	ori r0,r0,2
	b L416
L414:
	andi. r0,r0,253
L416:
	andi. r2,r4,128
	beq+ cr0,L417
	ori r30,r0,128
	b L419
L417:
	rlwinm r30,r0,0,25,31
L419:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L55:
	addis r3,r31,ha16(LC46-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC46-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,64
	bne+ cr0,L420
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L420:
	addi r27,r29,1
	b L1055
L56:
	addis r3,r31,ha16(LC47-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC47-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L422
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L424
L422:
	andi. r0,r30,253
L424:
	andi. r2,r4,128
	beq+ cr0,L425
	ori r30,r0,128
	b L427
L425:
	rlwinm r30,r0,0,25,31
L427:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L57:
	addis r3,r31,ha16(LC48-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC48-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L428
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L430
L428:
	andi. r0,r30,253
L430:
	andi. r2,r4,128
	beq+ cr0,L431
	ori r30,r0,128
	b L433
L431:
	rlwinm r30,r0,0,25,31
L433:
	addi r0,r27,1
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L58:
	addis r3,r31,ha16(LC49-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC49-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	beq- cr0,L434
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L436
L434:
	rlwinm r0,r30,0,24,30
L436:
	rlwinm r4,r3,31,24,31
	cmpwi cr7,r4,0
	bne- cr7,L437
	ori r0,r0,2
	b L439
L437:
	andi. r0,r0,253
L439:
	andi. r2,r4,128
	beq+ cr0,L440
	ori r30,r0,128
	b L442
L440:
	rlwinm r30,r0,0,25,31
L442:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L59:
	andi. r30,r30,251
	addis r3,r31,ha16(LC50-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC50-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	b L1055
L60:
	addis r3,r31,ha16(LC51-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC51-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L443
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L445
L443:
	andi. r0,r30,253
L445:
	andi. r2,r4,128
	beq+ cr0,L446
	ori r30,r0,128
	b L448
L446:
	rlwinm r30,r0,0,25,31
L448:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L61:
	addis r3,r31,ha16(LC52-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC52-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	xor r3,r26,r3
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L449
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L451
L449:
	andi. r0,r30,253
L451:
	andi. r2,r4,128
	beq+ cr0,L452
	ori r30,r0,128
	b L454
L452:
	rlwinm r30,r0,0,25,31
L454:
	addi r0,r27,2
	mr r26,r4
	rlwinm r27,r0,0,0xffff
	b L1055
L62:
	addis r3,r31,ha16(LC53-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC53-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	beq- cr0,L455
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L457
L455:
	rlwinm r0,r30,0,24,30
L457:
	rlwinm r4,r3,31,24,31
	cmpwi cr7,r4,0
	bne- cr7,L458
	ori r0,r0,2
	b L460
L458:
	andi. r0,r0,253
L460:
	andi. r2,r4,128
	beq+ cr0,L461
	ori r30,r0,128
	b L463
L461:
	rlwinm r30,r0,0,25,31
L463:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L63:
	addis r3,r31,ha16(LC54-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC54-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r23,2
	rlwinm r23,r0,0,0xffff
	mr r3,r23
	bl _load_mem8
	addi r0,r23,-1
	slwi r29,r3,8
	rlwinm r3,r0,0,0xffff
	bl _load_mem8
	or r29,r29,r3
	rlwinm r27,r29,0,0xffff
	b L1055
L64:
	addis r3,r31,ha16(LC55-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC55-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L464
	cmpw cr7,r3,r9
	bne+ cr7,L466
	cmpwi cr7,r26,0
	beq- cr7,L466
L464:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L468
L466:
	rlwinm r0,r30,0,24,30
L468:
	cmpwi cr7,r9,0
	bne- cr7,L469
	ori r0,r0,2
	b L471
L469:
	andi. r0,r0,253
L471:
	andi. r2,r9,128
	beq+ cr0,L472
	ori r30,r0,128
	b L474
L472:
	rlwinm r30,r0,0,25,31
L474:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L65:
	addis r3,r31,ha16(LC56-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC56-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L475
	cmpw cr7,r3,r9
	bne+ cr7,L477
	cmpwi cr7,r26,0
	beq- cr7,L477
L475:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L479
L477:
	rlwinm r0,r30,0,24,30
L479:
	cmpwi cr7,r9,0
	bne- cr7,L480
	ori r0,r0,2
	b L482
L480:
	andi. r0,r0,253
L482:
	andi. r2,r9,128
	beq+ cr0,L483
	ori r30,r0,128
	b L485
L483:
	rlwinm r30,r0,0,25,31
L485:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L66:
	addis r3,r31,ha16(LC57-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC57-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	andi. r0,r3,1
	srwi r3,r3,1
	rlwinm r0,r30,7,24,24
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L486
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L488
L486:
	rlwinm r0,r30,0,24,30
L488:
	cmpwi cr7,r4,0
	bne- cr7,L489
	ori r0,r0,2
	b L491
L489:
	andi. r0,r0,253
L491:
	andi. r2,r4,128
	beq+ cr0,L492
	ori r30,r0,128
	b L494
L492:
	rlwinm r30,r0,0,25,31
L494:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L67:
	addis r3,r31,ha16(LC58-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC58-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r23,1
	rlwinm r23,r0,0,0xffff
	mr r3,r23
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L495
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L497
L495:
	andi. r0,r30,253
L497:
	andi. r2,r3,128
	beq+ cr0,L498
	ori r30,r0,128
	b L500
L498:
	rlwinm r30,r0,0,25,31
L500:
	mr r26,r3
	b L1055
L68:
	addis r3,r31,ha16(LC59-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC59-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L501
	cmpw cr7,r3,r9
	bne+ cr7,L503
	cmpwi cr7,r26,0
	beq- cr7,L503
L501:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L505
L503:
	rlwinm r0,r30,0,24,30
L505:
	cmpwi cr7,r9,0
	bne- cr7,L506
	ori r0,r0,2
	b L508
L506:
	andi. r0,r0,253
L508:
	andi. r2,r9,128
	beq+ cr0,L509
	ori r30,r0,128
	b L511
L509:
	rlwinm r30,r0,0,25,31
L511:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L69:
	addis r3,r31,ha16(LC60-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC60-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	andi. r0,r26,1
	rlwinm r2,r30,7,24,24
	srwi r0,r26,1
	add r0,r0,r2
	rlwinm r3,r0,0,0xff
	beq- cr0,L512
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L514
L512:
	rlwinm r0,r30,0,24,30
L514:
	cmpwi cr7,r3,0
	bne- cr7,L515
	ori r0,r0,2
	b L517
L515:
	andi. r0,r0,253
L517:
	andi. r2,r3,128
	beq+ cr0,L518
	ori r30,r0,128
	b L520
L518:
	rlwinm r30,r0,0,25,31
L520:
	mr r26,r3
	b L1055
L70:
	addis r3,r31,ha16(LC61-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC61-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem16
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r27,r28,0,0xffff
	b L1055
L71:
	addis r3,r31,ha16(LC62-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC62-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L521
	cmpw cr7,r3,r9
	bne+ cr7,L523
	cmpwi cr7,r26,0
	beq- cr7,L523
L521:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L525
L523:
	rlwinm r0,r30,0,24,30
L525:
	cmpwi cr7,r9,0
	bne- cr7,L526
	ori r0,r0,2
	b L528
L526:
	andi. r0,r0,253
L528:
	andi. r2,r9,128
	beq+ cr0,L529
	ori r30,r0,128
	b L531
L529:
	rlwinm r30,r0,0,25,31
L531:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L72:
	addis r3,r31,ha16(LC63-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC63-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	srwi r3,r3,1
	rlwinm r0,r30,7,24,24
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L532
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L534
L532:
	rlwinm r0,r30,0,24,30
L534:
	cmpwi cr7,r4,0
	bne- cr7,L535
	ori r0,r0,2
	b L537
L535:
	andi. r0,r0,253
L537:
	andi. r2,r4,128
	beq+ cr0,L538
	ori r30,r0,128
	b L540
L538:
	rlwinm r30,r0,0,25,31
L540:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L73:
	addis r3,r31,ha16(LC64-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC64-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,64
	beq+ cr0,L541
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L541:
	addi r27,r29,1
	b L1055
L74:
	addis r3,r31,ha16(LC65-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC65-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L543
	cmpw cr7,r3,r9
	bne+ cr7,L545
	cmpwi cr7,r26,0
	beq- cr7,L545
L543:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L547
L545:
	rlwinm r0,r30,0,24,30
L547:
	cmpwi cr7,r9,0
	bne- cr7,L548
	ori r0,r0,2
	b L550
L548:
	andi. r0,r0,253
L550:
	andi. r2,r9,128
	beq+ cr0,L551
	ori r30,r0,128
	b L553
L551:
	rlwinm r30,r0,0,25,31
L553:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L75:
	addis r3,r31,ha16(LC66-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC66-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L554
	cmpw cr7,r3,r9
	bne+ cr7,L556
	cmpwi cr7,r26,0
	beq- cr7,L556
L554:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L558
L556:
	rlwinm r0,r30,0,24,30
L558:
	cmpwi cr7,r9,0
	bne- cr7,L559
	ori r0,r0,2
	b L561
L559:
	andi. r0,r0,253
L561:
	andi. r2,r9,128
	beq+ cr0,L562
	ori r30,r0,128
	b L564
L562:
	rlwinm r30,r0,0,25,31
L564:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L76:
	addis r3,r31,ha16(LC67-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC67-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	srwi r3,r3,1
	rlwinm r0,r30,7,24,24
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L565
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L567
L565:
	rlwinm r0,r30,0,24,30
L567:
	cmpwi cr7,r4,0
	bne- cr7,L568
	ori r0,r0,2
	b L570
L568:
	andi. r0,r0,253
L570:
	andi. r2,r4,128
	beq+ cr0,L571
	ori r30,r0,128
	b L573
L571:
	rlwinm r30,r0,0,25,31
L573:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L77:
	addis r3,r31,ha16(LC68-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC68-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	ori r0,r30,4
	rlwinm r30,r0,0,0xff
	b L1055
L78:
	addis r3,r31,ha16(LC69-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC69-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L574
	cmpw cr7,r3,r9
	bne+ cr7,L576
	cmpwi cr7,r26,0
	beq- cr7,L576
L574:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L578
L576:
	rlwinm r0,r30,0,24,30
L578:
	cmpwi cr7,r9,0
	bne- cr7,L579
	ori r0,r0,2
	b L581
L579:
	andi. r0,r0,253
L581:
	andi. r2,r9,128
	beq+ cr0,L582
	ori r30,r0,128
	b L584
L582:
	rlwinm r30,r0,0,25,31
L584:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L79:
	addis r3,r31,ha16(LC70-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC70-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	add r0,r26,r3
	add r0,r0,r2
	rlwinm r9,r0,0,0xff
	cmplw cr7,r3,r9
	bgt- cr7,L585
	cmpw cr7,r3,r9
	bne+ cr7,L587
	cmpwi cr7,r26,0
	beq- cr7,L587
L585:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L589
L587:
	rlwinm r0,r30,0,24,30
L589:
	cmpwi cr7,r9,0
	bne- cr7,L590
	ori r0,r0,2
	b L592
L590:
	andi. r0,r0,253
L592:
	andi. r2,r9,128
	beq+ cr0,L593
	ori r30,r0,128
	b L595
L593:
	rlwinm r30,r0,0,25,31
L595:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L80:
	addis r3,r31,ha16(LC71-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC71-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	andi. r0,r3,1
	srwi r3,r3,1
	rlwinm r0,r30,7,24,24
	add r3,r3,r0
	rlwinm r4,r3,0,0xff
	beq- cr0,L596
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L598
L596:
	rlwinm r0,r30,0,24,30
L598:
	cmpwi cr7,r4,0
	bne- cr7,L599
	ori r0,r0,2
	b L601
L599:
	andi. r0,r0,253
L601:
	andi. r2,r4,128
	beq+ cr0,L602
	ori r30,r0,128
	b L604
L602:
	rlwinm r30,r0,0,25,31
L604:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L81:
	addis r3,r31,ha16(LC72-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC72-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	mr r4,r26
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L82:
	addis r3,r31,ha16(LC73-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC73-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r24
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L83:
	addis r3,r31,ha16(LC74-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC74-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r26
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L84:
	addis r3,r31,ha16(LC75-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC75-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r25
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L85:
	addis r3,r31,ha16(LC76-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC76-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r24,-1
	rlwinm r4,r0,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L605
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L607
L605:
	andi. r0,r30,253
L607:
	andi. r2,r4,128
	beq+ cr0,L608
	ori r30,r0,128
	b L610
L608:
	rlwinm r30,r0,0,25,31
L610:
	mr r24,r4
	b L1055
L86:
	addis r3,r31,ha16(LC77-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC77-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r25,0
	bne- cr7,L611
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L613
L611:
	andi. r0,r30,253
L613:
	andi. r2,r25,128
	beq+ cr0,L614
	ori r30,r0,128
	b L616
L614:
	rlwinm r30,r0,0,25,31
L616:
	mr r26,r25
	b L1055
L87:
	addis r3,r31,ha16(LC78-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC78-"L00000000002$pb")(r3)
	extsh r28,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r28,1
	rlwinm r3,r3,0,0xffff
	addi r28,r28,2
	bl _load_mem8
	mr r4,r24
	slwi r3,r3,8
	rlwinm r27,r28,0,0xffff
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _store_mem8
	b L1055
L88:
	addis r3,r31,ha16(LC79-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC79-"L00000000002$pb")(r3)
	extsh r28,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r28,1
	rlwinm r3,r3,0,0xffff
	addi r28,r28,2
	bl _load_mem8
	mr r4,r26
	slwi r3,r3,8
	rlwinm r27,r28,0,0xffff
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _store_mem8
	b L1055
L89:
	addis r3,r31,ha16(LC80-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC80-"L00000000002$pb")(r3)
	extsh r28,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r28,1
	rlwinm r3,r3,0,0xffff
	addi r28,r28,2
	bl _load_mem8
	mr r4,r25
	slwi r3,r3,8
	rlwinm r27,r28,0,0xffff
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _store_mem8
	b L1055
L90:
	addis r3,r31,ha16(LC81-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC81-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,1
	bne+ cr0,L617
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L617:
	addi r27,r29,1
	b L1055
L91:
	addis r3,r31,ha16(LC82-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC82-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	mr r4,r26
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L92:
	addis r3,r31,ha16(LC83-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC83-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r24
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L93:
	addis r3,r31,ha16(LC84-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC84-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r26
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L94:
	addis r3,r31,ha16(LC85-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC85-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r4,r25
	add r3,r3,r24
	rlwinm r3,r3,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L95:
	addis r3,r31,ha16(LC86-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC86-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r24,0
	bne- cr7,L619
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L621
L619:
	andi. r0,r30,253
L621:
	andi. r2,r24,128
	beq+ cr0,L622
	ori r30,r0,128
	b L624
L622:
	rlwinm r30,r0,0,25,31
L624:
	mr r26,r24
	b L1055
L96:
	addis r3,r31,ha16(LC87-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC87-"L00000000002$pb")(r3)
	extsh r28,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r28,1
	rlwinm r3,r3,0,0xffff
	addi r28,r28,2
	bl _load_mem8
	mr r4,r26
	slwi r3,r3,8
	rlwinm r27,r28,0,0xffff
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _store_mem8
	b L1055
L97:
	addis r3,r31,ha16(LC88-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC88-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r25,0
	bne- cr7,L625
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L627
L625:
	andi. r0,r30,253
L627:
	andi. r2,r25,128
	beq+ cr0,L628
	ori r30,r0,128
	b L630
L628:
	rlwinm r30,r0,0,25,31
L630:
	ori r0,r25,256
	rlwinm r23,r0,0,0xffff
	b L1055
L98:
	addis r3,r31,ha16(LC89-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC89-"L00000000002$pb")(r3)
	extsh r28,r27
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	addi r3,r28,1
	rlwinm r3,r3,0,0xffff
	addi r28,r28,2
	bl _load_mem8
	mr r4,r26
	slwi r3,r3,8
	rlwinm r27,r28,0,0xffff
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _store_mem8
	b L1055
L99:
	addis r3,r31,ha16(LC90-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC90-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L631
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L633
L631:
	andi. r0,r30,253
L633:
	andi. r2,r3,128
	beq+ cr0,L634
	ori r30,r0,128
	b L636
L634:
	rlwinm r30,r0,0,25,31
L636:
	addi r0,r27,1
	mr r24,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L100:
	addis r3,r31,ha16(LC91-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC91-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L637
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L639
L637:
	andi. r0,r30,253
L639:
	andi. r2,r3,128
	beq+ cr0,L640
	ori r30,r0,128
	b L642
L640:
	rlwinm r30,r0,0,25,31
L642:
	addi r0,r27,1
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L101:
	addis r3,r31,ha16(LC92-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC92-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L643
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L645
L643:
	andi. r0,r30,253
L645:
	andi. r2,r3,128
	beq+ cr0,L646
	ori r30,r0,128
	b L648
L646:
	rlwinm r30,r0,0,25,31
L648:
	addi r0,r27,1
	mr r25,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L102:
	addis r3,r31,ha16(LC93-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC93-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L649
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L651
L649:
	andi. r0,r30,253
L651:
	andi. r2,r3,128
	beq+ cr0,L652
	ori r30,r0,128
	b L654
L652:
	rlwinm r30,r0,0,25,31
L654:
	addi r0,r27,1
	mr r24,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L103:
	addis r3,r31,ha16(LC94-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC94-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L655
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L657
L655:
	andi. r0,r30,253
L657:
	andi. r2,r3,128
	beq+ cr0,L658
	ori r30,r0,128
	b L660
L658:
	rlwinm r30,r0,0,25,31
L660:
	addi r0,r27,1
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L104:
	addis r3,r31,ha16(LC95-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC95-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L661
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L663
L661:
	andi. r0,r30,253
L663:
	andi. r2,r3,128
	beq+ cr0,L664
	ori r30,r0,128
	b L666
L664:
	rlwinm r30,r0,0,25,31
L666:
	addi r0,r27,1
	mr r25,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L105:
	addis r3,r31,ha16(LC96-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC96-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r26,0
	bne- cr7,L667
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L669
L667:
	andi. r0,r30,253
L669:
	andi. r2,r26,128
	beq+ cr0,L670
	ori r30,r0,128
	b L672
L670:
	rlwinm r30,r0,0,25,31
L672:
	mr r24,r26
	b L1055
L106:
	addis r3,r31,ha16(LC97-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC97-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L673
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L675
L673:
	andi. r0,r30,253
L675:
	andi. r2,r3,128
	beq+ cr0,L676
	ori r30,r0,128
	b L678
L676:
	rlwinm r30,r0,0,25,31
L678:
	addi r0,r27,1
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L107:
	addis r3,r31,ha16(LC98-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC98-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r26,0
	bne- cr7,L679
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L681
L679:
	andi. r0,r30,253
L681:
	andi. r2,r26,128
	beq+ cr0,L682
	ori r30,r0,128
	b L684
L682:
	rlwinm r30,r0,0,25,31
L684:
	mr r25,r26
	b L1055
L108:
	addis r3,r31,ha16(LC99-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC99-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L685
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L687
L685:
	andi. r0,r30,253
L687:
	andi. r2,r3,128
	beq+ cr0,L688
	ori r30,r0,128
	b L690
L688:
	rlwinm r30,r0,0,25,31
L690:
	addi r0,r27,2
	mr r24,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L109:
	addis r3,r31,ha16(LC100-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC100-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L691
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L693
L691:
	andi. r0,r30,253
L693:
	andi. r2,r3,128
	beq+ cr0,L694
	ori r30,r0,128
	b L696
L694:
	rlwinm r30,r0,0,25,31
L696:
	addi r0,r27,2
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L110:
	addis r3,r31,ha16(LC101-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC101-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L697
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L699
L697:
	andi. r0,r30,253
L699:
	andi. r2,r3,128
	beq+ cr0,L700
	ori r30,r0,128
	b L702
L700:
	rlwinm r30,r0,0,25,31
L702:
	addi r0,r27,2
	mr r25,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L111:
	addis r3,r31,ha16(LC102-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC102-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,1
	beq+ cr0,L703
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L703:
	addi r27,r29,1
	b L1055
L112:
	addis r3,r31,ha16(LC103-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC103-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L705
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L707
L705:
	andi. r0,r30,253
L707:
	andi. r2,r3,128
	beq+ cr0,L708
	ori r30,r0,128
	b L710
L708:
	rlwinm r30,r0,0,25,31
L710:
	addi r0,r27,1
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L113:
	addis r3,r31,ha16(LC104-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC104-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L711
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L713
L711:
	andi. r0,r30,253
L713:
	andi. r2,r3,128
	beq+ cr0,L714
	ori r30,r0,128
	b L716
L714:
	rlwinm r30,r0,0,25,31
L716:
	addi r0,r27,1
	mr r24,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L114:
	addis r3,r31,ha16(LC105-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC105-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L717
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L719
L717:
	andi. r0,r30,253
L719:
	andi. r2,r3,128
	beq+ cr0,L720
	ori r30,r0,128
	b L722
L720:
	rlwinm r30,r0,0,25,31
L722:
	addi r0,r27,1
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L115:
	addis r3,r31,ha16(LC106-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC106-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r24
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L723
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L725
L723:
	andi. r0,r30,253
L725:
	andi. r2,r3,128
	beq+ cr0,L726
	ori r30,r0,128
	b L728
L726:
	rlwinm r30,r0,0,25,31
L728:
	addi r0,r27,1
	mr r25,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L116:
	addis r3,r31,ha16(LC107-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC107-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	b L1055
L117:
	addis r3,r31,ha16(LC108-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC108-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L729
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L731
L729:
	andi. r0,r30,253
L731:
	andi. r2,r3,128
	beq+ cr0,L732
	ori r30,r0,128
	b L734
L732:
	rlwinm r30,r0,0,25,31
L734:
	addi r0,r27,2
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L118:
	addis r3,r31,ha16(LC109-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC109-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	cmpwi cr7,r23,0
	bne- cr7,L735
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L737
L735:
	andi. r0,r30,253
L737:
	andi. r2,r23,128
	beq- cr0,L738
	ori r30,r0,128
	b L740
L738:
	rlwinm r30,r0,0,25,31
L740:
	rlwinm r25,r23,0,0xff
	b L1055
L119:
	addis r3,r31,ha16(LC110-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC110-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L741
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L743
L741:
	andi. r0,r30,253
L743:
	andi. r2,r3,128
	beq+ cr0,L744
	ori r30,r0,128
	b L746
L744:
	rlwinm r30,r0,0,25,31
L746:
	addi r0,r27,2
	mr r24,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L120:
	addis r3,r31,ha16(LC111-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC111-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L747
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L749
L747:
	andi. r0,r30,253
L749:
	andi. r2,r3,128
	beq+ cr0,L750
	ori r30,r0,128
	b L752
L750:
	rlwinm r30,r0,0,25,31
L752:
	addi r0,r27,2
	mr r26,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L121:
	addis r3,r31,ha16(LC112-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC112-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	cmpwi cr0,r3,0
	bne- cr0,L753
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L755
L753:
	andi. r0,r30,253
L755:
	andi. r2,r3,128
	beq+ cr0,L756
	ori r30,r0,128
	b L758
L756:
	rlwinm r30,r0,0,25,31
L758:
	addi r0,r27,2
	mr r25,r3
	rlwinm r27,r0,0,0xffff
	b L1055
L122:
	addis r3,r31,ha16(LC113-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC113-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	subf r3,r3,r24
	rlwinm r3,r3,0,0xff
	cmplw cr7,r24,r3
	bge- cr7,L759
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L761
L759:
	rlwinm r0,r30,0,24,30
L761:
	cmpwi cr7,r3,0
	bne- cr7,L762
	ori r0,r0,2
	b L764
L762:
	andi. r0,r0,253
L764:
	andi. r2,r3,128
	beq+ cr0,L765
	ori r30,r0,128
	b L767
L765:
	rlwinm r30,r0,0,25,31
L767:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L123:
	addis r3,r31,ha16(LC114-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC114-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L768
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L770
L768:
	rlwinm r0,r30,0,24,30
L770:
	cmpwi cr7,r3,0
	bne- cr7,L771
	ori r0,r0,2
	b L773
L771:
	andi. r0,r0,253
L773:
	andi. r2,r3,128
	beq+ cr0,L774
	ori r30,r0,128
	b L776
L774:
	rlwinm r30,r0,0,25,31
L776:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L124:
	addis r3,r31,ha16(LC115-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC115-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	subf r3,r3,r24
	rlwinm r3,r3,0,0xff
	cmplw cr7,r24,r3
	bge- cr7,L777
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L779
L777:
	rlwinm r0,r30,0,24,30
L779:
	cmpwi cr7,r3,0
	bne- cr7,L780
	ori r0,r0,2
	b L782
L780:
	andi. r0,r0,253
L782:
	andi. r2,r3,128
	beq+ cr0,L783
	ori r30,r0,128
	b L785
L783:
	rlwinm r30,r0,0,25,31
L785:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L125:
	addis r3,r31,ha16(LC116-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC116-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L786
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L788
L786:
	rlwinm r0,r30,0,24,30
L788:
	cmpwi cr7,r3,0
	bne- cr7,L789
	ori r0,r0,2
	b L791
L789:
	andi. r0,r0,253
L791:
	andi. r2,r3,128
	beq+ cr0,L792
	ori r30,r0,128
	b L794
L792:
	rlwinm r30,r0,0,25,31
L794:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L126:
	addis r3,r31,ha16(LC117-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC117-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r3,r3,-1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L795
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L797
L795:
	andi. r0,r30,253
L797:
	andi. r2,r4,128
	beq+ cr0,L798
	ori r30,r0,128
	b L800
L798:
	rlwinm r30,r0,0,25,31
L800:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L127:
	addis r3,r31,ha16(LC118-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC118-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r24,1
	rlwinm r3,r0,0,0xff
	cmpwi cr7,r3,0
	bne- cr7,L801
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L803
L801:
	andi. r0,r30,253
L803:
	andi. r2,r3,128
	beq+ cr0,L804
	ori r30,r0,128
	b L806
L804:
	rlwinm r30,r0,0,25,31
L806:
	mr r24,r3
	b L1055
L128:
	addis r3,r31,ha16(LC119-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC119-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L807
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L809
L807:
	rlwinm r0,r30,0,24,30
L809:
	cmpwi cr7,r3,0
	bne- cr7,L810
	ori r0,r0,2
	b L812
L810:
	andi. r0,r0,253
L812:
	andi. r2,r3,128
	beq+ cr0,L813
	ori r30,r0,128
	b L815
L813:
	rlwinm r30,r0,0,25,31
L815:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L129:
	addis r3,r31,ha16(LC120-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC120-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r25,-1
	rlwinm r3,r0,0,0xff
	cmpwi cr7,r3,0
	bne- cr7,L816
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L818
L816:
	andi. r0,r30,253
L818:
	andi. r2,r3,128
	beq+ cr0,L819
	ori r30,r0,128
	b L821
L819:
	rlwinm r30,r0,0,25,31
L821:
	mr r25,r3
	b L1055
L130:
	addis r3,r31,ha16(LC121-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC121-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	subf r3,r3,r24
	rlwinm r3,r3,0,0xff
	cmplw cr7,r24,r3
	bge- cr7,L822
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L824
L822:
	rlwinm r0,r30,0,24,30
L824:
	cmpwi cr7,r3,0
	bne- cr7,L825
	ori r0,r0,2
	b L827
L825:
	andi. r0,r0,253
L827:
	andi. r2,r3,128
	beq+ cr0,L828
	ori r30,r0,128
	b L830
L828:
	rlwinm r30,r0,0,25,31
L830:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L131:
	addis r3,r31,ha16(LC122-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC122-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L831
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L833
L831:
	rlwinm r0,r30,0,24,30
L833:
	cmpwi cr7,r3,0
	bne- cr7,L834
	ori r0,r0,2
	b L836
L834:
	andi. r0,r0,253
L836:
	andi. r2,r3,128
	beq+ cr0,L837
	ori r30,r0,128
	b L839
L837:
	rlwinm r30,r0,0,25,31
L839:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L132:
	addis r3,r31,ha16(LC123-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC123-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,-1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L840
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L842
L840:
	andi. r0,r30,253
L842:
	andi. r2,r4,128
	beq+ cr0,L843
	ori r30,r0,128
	b L845
L843:
	rlwinm r30,r0,0,25,31
L845:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L133:
	addis r3,r31,ha16(LC124-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC124-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,2
	bne+ cr0,L846
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L846:
	addi r27,r29,1
	b L1055
L134:
	addis r3,r31,ha16(LC125-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC125-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L848
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L850
L848:
	rlwinm r0,r30,0,24,30
L850:
	cmpwi cr7,r3,0
	bne- cr7,L851
	ori r0,r0,2
	b L853
L851:
	andi. r0,r0,253
L853:
	andi. r2,r3,128
	beq+ cr0,L854
	ori r30,r0,128
	b L856
L854:
	rlwinm r30,r0,0,25,31
L856:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L135:
	addis r3,r31,ha16(LC126-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC126-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L857
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L859
L857:
	rlwinm r0,r30,0,24,30
L859:
	cmpwi cr7,r3,0
	bne- cr7,L860
	ori r0,r0,2
	b L862
L860:
	andi. r0,r0,253
L862:
	andi. r2,r3,128
	beq+ cr0,L863
	ori r30,r0,128
	b L865
L863:
	rlwinm r30,r0,0,25,31
L865:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L136:
	addis r3,r31,ha16(LC127-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC127-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,-1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L866
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L868
L866:
	andi. r0,r30,253
L868:
	andi. r2,r4,128
	beq+ cr0,L869
	ori r30,r0,128
	b L871
L869:
	rlwinm r30,r0,0,25,31
L871:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L137:
	andi. r30,r30,247
	addis r3,r31,ha16(LC128-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC128-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	b L1055
L138:
	addis r3,r31,ha16(LC129-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC129-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L872
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L874
L872:
	rlwinm r0,r30,0,24,30
L874:
	cmpwi cr7,r3,0
	bne- cr7,L875
	ori r0,r0,2
	b L877
L875:
	andi. r0,r0,253
L877:
	andi. r2,r3,128
	beq+ cr0,L878
	ori r30,r0,128
	b L880
L878:
	rlwinm r30,r0,0,25,31
L880:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L139:
	addis r3,r31,ha16(LC130-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC130-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	subf r3,r3,r26
	rlwinm r3,r3,0,0xff
	cmplw cr7,r26,r3
	bge- cr7,L881
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L883
L881:
	rlwinm r0,r30,0,24,30
L883:
	cmpwi cr7,r3,0
	bne- cr7,L884
	ori r0,r0,2
	b L886
L884:
	andi. r0,r0,253
L886:
	andi. r2,r3,128
	beq+ cr0,L887
	ori r30,r0,128
	b L889
L887:
	rlwinm r30,r0,0,25,31
L889:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L140:
	addis r3,r31,ha16(LC131-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC131-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,-1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L890
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L892
L890:
	andi. r0,r30,253
L892:
	andi. r2,r4,128
	beq+ cr0,L893
	ori r30,r0,128
	b L895
L893:
	rlwinm r30,r0,0,25,31
L895:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L141:
	addis r3,r31,ha16(LC132-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC132-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	subf r3,r3,r25
	rlwinm r3,r3,0,0xff
	cmplw cr7,r25,r3
	bge- cr7,L896
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L898
L896:
	rlwinm r0,r30,0,24,30
L898:
	cmpwi cr7,r3,0
	bne- cr7,L899
	ori r0,r0,2
	b L901
L899:
	andi. r0,r0,253
L901:
	andi. r2,r3,128
	beq+ cr0,L902
	ori r30,r0,128
	b L904
L902:
	rlwinm r30,r0,0,25,31
L904:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L142:
	addis r3,r31,ha16(LC133-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC133-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r29,r3,r25
	rlwinm r29,r29,0,0xff
	mr r3,r29
	bl _load_mem8
	mr r28,r3
	addi r3,r29,1
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L905
	cmpw cr7,r26,r9
	bne+ cr7,L907
	cmpwi cr7,r3,0
	beq- cr7,L907
L905:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L909
L907:
	rlwinm r0,r30,0,24,30
L909:
	cmpwi cr7,r9,0
	bne- cr7,L910
	ori r0,r0,2
	b L912
L910:
	andi. r0,r0,253
L912:
	andi. r2,r9,128
	beq+ cr0,L913
	ori r30,r0,128
	b L915
L913:
	rlwinm r30,r0,0,25,31
L915:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L143:
	addis r3,r31,ha16(LC134-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC134-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	subf r3,r3,r25
	rlwinm r3,r3,0,0xff
	cmplw cr7,r25,r3
	bge- cr7,L916
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L918
L916:
	rlwinm r0,r30,0,24,30
L918:
	cmpwi cr7,r3,0
	bne- cr7,L919
	ori r0,r0,2
	b L921
L919:
	andi. r0,r0,253
L921:
	andi. r2,r3,128
	beq+ cr0,L922
	ori r30,r0,128
	b L924
L922:
	rlwinm r30,r0,0,25,31
L924:
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L144:
	addis r3,r31,ha16(LC135-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC135-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L925
	cmpw cr7,r26,r9
	bne+ cr7,L927
	cmpwi cr7,r3,0
	beq- cr7,L927
L925:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L929
L927:
	rlwinm r0,r30,0,24,30
L929:
	cmpwi cr7,r9,0
	bne- cr7,L930
	ori r0,r0,2
	b L932
L930:
	andi. r0,r0,253
L932:
	andi. r2,r9,128
	beq+ cr0,L933
	ori r30,r0,128
	b L935
L933:
	rlwinm r30,r0,0,25,31
L935:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L145:
	addis r3,r31,ha16(LC136-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC136-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r3,r3,1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L936
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L938
L936:
	andi. r0,r30,253
L938:
	andi. r2,r4,128
	beq+ cr0,L939
	ori r30,r0,128
	b L941
L939:
	rlwinm r30,r0,0,25,31
L941:
	rlwinm r3,r29,0,0xff
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L146:
	addis r3,r31,ha16(LC137-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC137-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	addi r0,r25,1
	rlwinm r3,r0,0,0xff
	cmpwi cr7,r3,0
	bne- cr7,L942
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L944
L942:
	andi. r0,r30,253
L944:
	andi. r2,r3,128
	beq+ cr0,L945
	ori r30,r0,128
	b L947
L945:
	rlwinm r30,r0,0,25,31
L947:
	mr r25,r3
	b L1055
L147:
	addis r3,r31,ha16(LC138-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC138-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L948
	cmpw cr7,r26,r9
	bne+ cr7,L950
	cmpwi cr7,r3,0
	beq- cr7,L950
L948:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L952
L950:
	rlwinm r0,r30,0,24,30
L952:
	cmpwi cr7,r9,0
	bne- cr7,L953
	ori r0,r0,2
	b L955
L953:
	andi. r0,r0,253
L955:
	andi. r2,r9,128
	beq+ cr0,L956
	ori r30,r0,128
	b L958
L956:
	rlwinm r30,r0,0,25,31
L958:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L148:
	addis r3,r31,ha16(LC139-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC139-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	b L1055
L149:
	addis r3,r31,ha16(LC140-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC140-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	subf r3,r3,r25
	rlwinm r3,r3,0,0xff
	cmplw cr7,r25,r3
	bge- cr7,L959
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L961
L959:
	rlwinm r0,r30,0,24,30
L961:
	cmpwi cr7,r3,0
	bne- cr7,L962
	ori r0,r0,2
	b L964
L962:
	andi. r0,r0,253
L964:
	andi. r2,r3,128
	beq+ cr0,L965
	ori r30,r0,128
	b L967
L965:
	rlwinm r30,r0,0,25,31
L967:
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L150:
	addis r3,r31,ha16(LC141-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC141-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L968
	cmpw cr7,r26,r9
	bne+ cr7,L970
	cmpwi cr7,r3,0
	beq- cr7,L970
L968:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L972
L970:
	rlwinm r0,r30,0,24,30
L972:
	cmpwi cr7,r9,0
	bne- cr7,L973
	ori r0,r0,2
	b L975
L973:
	andi. r0,r0,253
L975:
	andi. r2,r9,128
	beq+ cr0,L976
	ori r30,r0,128
	b L978
L976:
	rlwinm r30,r0,0,25,31
L978:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L151:
	addis r3,r31,ha16(LC142-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC142-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L979
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L981
L979:
	andi. r0,r30,253
L981:
	andi. r2,r4,128
	beq+ cr0,L982
	ori r30,r0,128
	b L984
L982:
	rlwinm r30,r0,0,25,31
L984:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
L152:
	addis r3,r31,ha16(LC143-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC143-"L00000000002$pb")(r3)
	rlwinm r29,r27,0,0xff
	bl "L_printf$LDBLStub$stub"
	andi. r0,r30,2
	beq+ cr0,L985
	mr r3,r27
	bl _load_mem8
	add r3,r3,r29
	rlwinm r29,r3,0,0xff
L985:
	addi r27,r29,1
	b L1055
L153:
	addis r3,r31,ha16(LC144-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC144-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	mr r29,r3
	bl _load_mem8
	addi r29,r29,1
	mr r28,r3
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r28,r28,r3
	add r28,r28,r24
	rlwinm r3,r28,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L987
	cmpw cr7,r26,r9
	bne+ cr7,L989
	cmpwi cr7,r3,0
	beq- cr7,L989
L987:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L991
L989:
	rlwinm r0,r30,0,24,30
L991:
	cmpwi cr7,r9,0
	bne- cr7,L992
	ori r0,r0,2
	b L994
L992:
	andi. r0,r0,253
L994:
	andi. r2,r9,128
	beq+ cr0,L995
	ori r30,r0,128
	b L997
L995:
	rlwinm r30,r0,0,25,31
L997:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L154:
	addis r3,r31,ha16(LC145-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC145-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r3,r3,0,0xff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L998
	cmpw cr7,r26,r9
	bne+ cr7,L1000
	cmpwi cr7,r3,0
	beq- cr7,L1000
L998:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L1002
L1000:
	rlwinm r0,r30,0,24,30
L1002:
	cmpwi cr7,r9,0
	bne- cr7,L1003
	ori r0,r0,2
	b L1005
L1003:
	andi. r0,r0,253
L1005:
	andi. r2,r9,128
	beq+ cr0,L1006
	ori r30,r0,128
	b L1008
L1006:
	rlwinm r30,r0,0,25,31
L1008:
	addi r0,r27,1
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L155:
	addis r3,r31,ha16(LC146-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC146-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	add r3,r3,r25
	rlwinm r29,r3,0,0xff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L1009
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L1011
L1009:
	andi. r0,r30,253
L1011:
	andi. r2,r4,128
	beq+ cr0,L1012
	ori r30,r0,128
	b L1014
L1012:
	rlwinm r30,r0,0,25,31
L1014:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,1
	rlwinm r27,r0,0,0xffff
	b L1055
L156:
	addis r3,r31,ha16(LC147-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC147-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	ori r0,r30,8
	rlwinm r30,r0,0,0xff
	b L1055
L157:
	addis r3,r31,ha16(LC148-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC148-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r24
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L1015
	cmpw cr7,r26,r9
	bne+ cr7,L1017
	cmpwi cr7,r3,0
	beq- cr7,L1017
L1015:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L1019
L1017:
	rlwinm r0,r30,0,24,30
L1019:
	cmpwi cr7,r9,0
	bne- cr7,L1020
	ori r0,r0,2
	b L1022
L1020:
	andi. r0,r0,253
L1022:
	andi. r2,r9,128
	beq+ cr0,L1023
	ori r30,r0,128
	b L1025
L1023:
	rlwinm r30,r0,0,25,31
L1025:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L158:
	addis r3,r31,ha16(LC149-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC149-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r3,r29,0,0xffff
	bl _load_mem8
	rlwinm r2,r30,0,31,31
	subf r0,r3,r26
	subf r0,r2,r0
	rlwinm r9,r0,0,0xff
	cmplw cr7,r26,r9
	blt- cr7,L1026
	cmpw cr7,r26,r9
	bne+ cr7,L1028
	cmpwi cr7,r3,0
	beq- cr7,L1028
L1026:
	ori r0,r30,1
	rlwinm r0,r0,0,0xff
	b L1030
L1028:
	rlwinm r0,r30,0,24,30
L1030:
	cmpwi cr7,r9,0
	bne- cr7,L1031
	ori r0,r0,2
	b L1033
L1031:
	andi. r0,r0,253
L1033:
	andi. r2,r9,128
	beq+ cr0,L1034
	ori r30,r0,128
	b L1036
L1034:
	rlwinm r30,r0,0,25,31
L1036:
	addi r0,r27,2
	mr r26,r9
	rlwinm r27,r0,0,0xffff
	b L1055
L159:
	addis r3,r31,ha16(LC150-"L00000000002$pb")
	mr r4,r27
	la r3,lo16(LC150-"L00000000002$pb")(r3)
	bl "L_printf$LDBLStub$stub"
	mr r3,r27
	bl _load_mem8
	extsh r27,r27
	mr r29,r3
	addi r3,r27,1
	rlwinm r3,r3,0,0xffff
	bl _load_mem8
	slwi r3,r3,8
	add r29,r29,r3
	add r29,r29,r25
	rlwinm r29,r29,0,0xffff
	mr r3,r29
	bl _load_mem8
	addi r3,r3,1
	rlwinm r4,r3,0,0xff
	cmpwi cr7,r4,0
	bne- cr7,L1037
	ori r0,r30,2
	rlwinm r0,r0,0,0xff
	b L1039
L1037:
	andi. r0,r30,253
L1039:
	andi. r2,r4,128
	beq+ cr0,L1040
	ori r30,r0,128
	b L1042
L1040:
	rlwinm r30,r0,0,25,31
L1042:
	mr r3,r29
	bl _store_mem8
	addi r0,r27,2
	rlwinm r27,r0,0,0xffff
	b L1055
	.section __TEXT,__picsymbolstub1,symbol_stubs,pure_instructions,32
	.align 5
"L_printf$LDBLStub$stub":
	.indirect_symbol _printf$LDBLStub
	mflr r0
	bcl 20,31,"L00000000001$spb"
"L00000000001$spb":
	mflr r11
	addis r11,r11,ha16(L_printf$LDBLStub$lazy_ptr-"L00000000001$spb")
	mtlr r0
	lwzu r12,lo16(L_printf$LDBLStub$lazy_ptr-"L00000000001$spb")(r11)
	mtctr r12
	bctr
	.lazy_symbol_pointer
L_printf$LDBLStub$lazy_ptr:
	.indirect_symbol _printf$LDBLStub
	.long	dyld_stub_binding_helper
	.section __TEXT,__picsymbolstub1,symbol_stubs,pure_instructions,32
	.align 5
L_puts$stub:
	.indirect_symbol _puts
	mflr r0
	bcl 20,31,"L00000000002$spb"
"L00000000002$spb":
	mflr r11
	addis r11,r11,ha16(L_puts$lazy_ptr-"L00000000002$spb")
	mtlr r0
	lwzu r12,lo16(L_puts$lazy_ptr-"L00000000002$spb")(r11)
	mtctr r12
	bctr
	.lazy_symbol_pointer
L_puts$lazy_ptr:
	.indirect_symbol _puts
	.long	dyld_stub_binding_helper
	.subsections_via_symbols
