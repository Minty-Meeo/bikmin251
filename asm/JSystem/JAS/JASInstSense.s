.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__12JASInstSense
__vt__12JASInstSense:
	.4byte 0
	.4byte 0
	.4byte getY__12JASInstSenseCFii
	.4byte 0

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516CF8
lbl_80516CF8:
	.4byte 0x42FE0000
.global lbl_80516CFC
lbl_80516CFC:
	.float 1.0
.global lbl_80516D00
lbl_80516D00:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_80516D08
lbl_80516D08:
	.4byte 0x43300000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global getY__12JASInstSenseCFii
getY__12JASInstSenseCFii:
/* 8009B58C 000984CC  88 03 00 08 */	lbz r0, 8(r3)
/* 8009B590 000984D0  38 E0 00 00 */	li r7, 0
/* 8009B594 000984D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009B598 000984D8  2C 00 00 02 */	cmpwi r0, 2
/* 8009B59C 000984DC  41 82 00 1C */	beq .L_8009B5B8
/* 8009B5A0 000984E0  40 80 00 1C */	bge .L_8009B5BC
/* 8009B5A4 000984E4  2C 00 00 01 */	cmpwi r0, 1
/* 8009B5A8 000984E8  40 80 00 08 */	bge .L_8009B5B0
/* 8009B5AC 000984EC  48 00 00 10 */	b .L_8009B5BC
.L_8009B5B0:
/* 8009B5B0 000984F0  7C A7 2B 78 */	mr r7, r5
/* 8009B5B4 000984F4  48 00 00 08 */	b .L_8009B5BC
.L_8009B5B8:
/* 8009B5B8 000984F8  7C 87 23 78 */	mr r7, r4
.L_8009B5BC:
/* 8009B5BC 000984FC  88 C3 00 09 */	lbz r6, 9(r3)
/* 8009B5C0 00098500  28 06 00 7F */	cmplwi r6, 0x7f
/* 8009B5C4 00098504  41 82 00 0C */	beq .L_8009B5D0
/* 8009B5C8 00098508  28 06 00 00 */	cmplwi r6, 0
/* 8009B5CC 0009850C  40 82 00 40 */	bne .L_8009B60C
.L_8009B5D0:
/* 8009B5D0 00098510  6C E4 80 00 */	xoris r4, r7, 0x8000
/* 8009B5D4 00098514  3C 00 43 30 */	lis r0, 0x4330
/* 8009B5D8 00098518  90 81 00 0C */	stw r4, 0xc(r1)
/* 8009B5DC 0009851C  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 8009B5E0 00098520  90 01 00 08 */	stw r0, 8(r1)
/* 8009B5E4 00098524  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8009B5E8 00098528  C8 62 89 A0 */	lfd f3, lbl_80516D00@sda21(r2)
/* 8009B5EC 0009852C  C8 41 00 08 */	lfd f2, 8(r1)
/* 8009B5F0 00098530  EC 20 20 28 */	fsubs f1, f0, f4
/* 8009B5F4 00098534  C0 02 89 98 */	lfs f0, lbl_80516CF8@sda21(r2)
/* 8009B5F8 00098538  EC 42 18 28 */	fsubs f2, f2, f3
/* 8009B5FC 0009853C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8009B600 00098540  EC 01 00 24 */	fdivs f0, f1, f0
/* 8009B604 00098544  EC 24 00 2A */	fadds f1, f4, f0
/* 8009B608 00098548  48 00 00 A0 */	b .L_8009B6A8
.L_8009B60C:
/* 8009B60C 0009854C  7C 07 30 00 */	cmpw r7, r6
/* 8009B610 00098550  40 80 00 4C */	bge .L_8009B65C
/* 8009B614 00098554  3C 00 43 30 */	lis r0, 0x4330
/* 8009B618 00098558  6C E4 80 00 */	xoris r4, r7, 0x8000
/* 8009B61C 0009855C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8009B620 00098560  C8 42 89 A0 */	lfd f2, lbl_80516D00@sda21(r2)
/* 8009B624 00098564  90 01 00 08 */	stw r0, 8(r1)
/* 8009B628 00098568  C8 22 89 A8 */	lfd f1, lbl_80516D08@sda21(r2)
/* 8009B62C 0009856C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8009B630 00098570  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8009B634 00098574  EC 40 10 28 */	fsubs f2, f0, f2
/* 8009B638 00098578  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 8009B63C 0009857C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009B640 00098580  C0 62 89 9C */	lfs f3, lbl_80516CFC@sda21(r2)
/* 8009B644 00098584  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8009B648 00098588  EC 63 20 28 */	fsubs f3, f3, f4
/* 8009B64C 0009858C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8009B650 00098590  EC 02 00 24 */	fdivs f0, f2, f0
/* 8009B654 00098594  EC 23 20 3A */	fmadds f1, f3, f0, f4
/* 8009B658 00098598  48 00 00 50 */	b .L_8009B6A8
.L_8009B65C:
/* 8009B65C 0009859C  7C A6 38 50 */	subf r5, r6, r7
/* 8009B660 000985A0  20 06 00 7F */	subfic r0, r6, 0x7f
/* 8009B664 000985A4  3C 80 43 30 */	lis r4, 0x4330
/* 8009B668 000985A8  C8 42 89 A0 */	lfd f2, lbl_80516D00@sda21(r2)
/* 8009B66C 000985AC  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8009B670 000985B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8009B674 000985B4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8009B678 000985B8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8009B67C 000985BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8009B680 000985C0  C0 82 89 9C */	lfs f4, lbl_80516CFC@sda21(r2)
/* 8009B684 000985C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8009B688 000985C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009B68C 000985CC  EC 61 20 28 */	fsubs f3, f1, f4
/* 8009B690 000985D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8009B694 000985D4  90 81 00 08 */	stw r4, 8(r1)
/* 8009B698 000985D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8009B69C 000985DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8009B6A0 000985E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 8009B6A4 000985E4  EC 23 20 3A */	fmadds f1, f3, f0, f4
.L_8009B6A8:
/* 8009B6A8 000985E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8009B6AC 000985EC  4E 80 00 20 */	blr 

.global setParams__12JASInstSenseFiiff
setParams__12JASInstSenseFiiff:
/* 8009B6B0 000985F0  98 83 00 08 */	stb r4, 8(r3)
/* 8009B6B4 000985F4  98 A3 00 09 */	stb r5, 9(r3)
/* 8009B6B8 000985F8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8009B6BC 000985FC  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8009B6C0 00098600  4E 80 00 20 */	blr 
