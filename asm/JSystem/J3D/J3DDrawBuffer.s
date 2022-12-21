.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_J3DDrawBuffer_cpp

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global lbl_804A1930
lbl_804A1930:
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryMatSort__13J3DDrawBufferFP12J3DMatPacket
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryZSort__13J3DDrawBufferFP12J3DMatPacket
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryModelSort__13J3DDrawBufferFP12J3DMatPacket
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte entryNonSort__13J3DDrawBufferFP12J3DMatPacket
.global sortFuncTable__13J3DDrawBuffer
sortFuncTable__13J3DDrawBuffer:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte drawHead__13J3DDrawBufferCFv
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte drawTail__13J3DDrawBufferCFv
.global drawFuncTable__13J3DDrawBuffer
drawFuncTable__13J3DDrawBuffer:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global entryNum__13J3DDrawBuffer
entryNum__13J3DDrawBuffer:
	.skip 0x8

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516A00
lbl_80516A00:
	.float 1.0
.global lbl_80516A04
lbl_80516A04:
	.4byte 0x461C4000
.global lbl_80516A08
lbl_80516A08:
	.4byte 0x43300000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global initialize__13J3DDrawBufferFv
initialize__13J3DDrawBufferFv:
/* 800659A4 000628E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800659A8 000628E8  38 A0 00 00 */	li r5, 0
/* 800659AC 000628EC  3C 00 43 30 */	lis r0, 0x4330
/* 800659B0 000628F0  C0 22 86 A0 */	lfs f1, lbl_80516A00@sda21(r2)
/* 800659B4 000628F4  90 A3 00 08 */	stw r5, 8(r3)
/* 800659B8 000628F8  38 80 00 20 */	li r4, 0x20
/* 800659BC 000628FC  C0 02 86 A4 */	lfs f0, lbl_80516A04@sda21(r2)
/* 800659C0 00062900  90 A3 00 0C */	stw r5, 0xc(r3)
/* 800659C4 00062904  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 800659C8 00062908  C8 22 86 A8 */	lfd f1, lbl_80516A08@sda21(r2)
/* 800659CC 0006290C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800659D0 00062910  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 800659D4 00062914  90 A3 00 20 */	stw r5, 0x20(r3)
/* 800659D8 00062918  90 83 00 04 */	stw r4, 4(r3)
/* 800659DC 0006291C  80 83 00 04 */	lwz r4, 4(r3)
/* 800659E0 00062920  90 01 00 08 */	stw r0, 8(r1)
/* 800659E4 00062924  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 800659E8 00062928  90 81 00 0C */	stw r4, 0xc(r1)
/* 800659EC 0006292C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 800659F0 00062930  C8 01 00 08 */	lfd f0, 8(r1)
/* 800659F4 00062934  EC 43 10 28 */	fsubs f2, f3, f2
/* 800659F8 00062938  EC 00 08 28 */	fsubs f0, f0, f1
/* 800659FC 0006293C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80065A00 00062940  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80065A04 00062944  38 21 00 10 */	addi r1, r1, 0x10
/* 80065A08 00062948  4E 80 00 20 */	blr 

.global allocBuffer__13J3DDrawBufferFUl
allocBuffer__13J3DDrawBufferFUl:
/* 80065A0C 0006294C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80065A10 00062950  7C 08 02 A6 */	mflr r0
/* 80065A14 00062954  90 01 00 24 */	stw r0, 0x24(r1)
/* 80065A18 00062958  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80065A1C 0006295C  7C 9F 23 78 */	mr r31, r4
/* 80065A20 00062960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80065A24 00062964  7C 7E 1B 78 */	mr r30, r3
/* 80065A28 00062968  54 83 10 3A */	slwi r3, r4, 2
/* 80065A2C 0006296C  38 80 00 20 */	li r4, 0x20
/* 80065A30 00062970  4B FB E5 C9 */	bl __nwa__FUli
/* 80065A34 00062974  90 7E 00 00 */	stw r3, 0(r30)
/* 80065A38 00062978  7F C3 F3 78 */	mr r3, r30
/* 80065A3C 0006297C  93 FE 00 04 */	stw r31, 4(r30)
/* 80065A40 00062980  48 00 00 51 */	bl frameInit__13J3DDrawBufferFv
/* 80065A44 00062984  80 9E 00 04 */	lwz r4, 4(r30)
/* 80065A48 00062988  3C 00 43 30 */	lis r0, 0x4330
/* 80065A4C 0006298C  90 01 00 08 */	stw r0, 8(r1)
/* 80065A50 00062990  38 60 00 00 */	li r3, 0
/* 80065A54 00062994  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 80065A58 00062998  90 81 00 0C */	stw r4, 0xc(r1)
/* 80065A5C 0006299C  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 80065A60 000629A0  C8 22 86 A8 */	lfd f1, lbl_80516A08@sda21(r2)
/* 80065A64 000629A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80065A68 000629A8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80065A6C 000629AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80065A70 000629B0  EC 02 00 24 */	fdivs f0, f2, f0
/* 80065A74 000629B4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80065A78 000629B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80065A7C 000629BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80065A80 000629C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80065A84 000629C4  7C 08 03 A6 */	mtlr r0
/* 80065A88 000629C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80065A8C 000629CC  4E 80 00 20 */	blr 

.global frameInit__13J3DDrawBufferFv
frameInit__13J3DDrawBufferFv:
/* 80065A90 000629D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80065A94 000629D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80065A98 000629D8  93 C1 00 08 */	stw r30, 8(r1)
/* 80065A9C 000629DC  3B C0 00 00 */	li r30, 0
/* 80065AA0 000629E0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80065AA4 000629E4  28 1F 00 00 */	cmplwi r31, 0
/* 80065AA8 000629E8  40 81 00 BC */	ble .L_80065B64
/* 80065AAC 000629EC  28 1F 00 08 */	cmplwi r31, 8
/* 80065AB0 000629F0  38 9F FF F8 */	addi r4, r31, -8
/* 80065AB4 000629F4  40 81 00 88 */	ble .L_80065B3C
/* 80065AB8 000629F8  38 04 00 07 */	addi r0, r4, 7
/* 80065ABC 000629FC  39 80 00 00 */	li r12, 0
/* 80065AC0 00062A00  54 00 E8 FE */	srwi r0, r0, 3
/* 80065AC4 00062A04  7C 09 03 A6 */	mtctr r0
/* 80065AC8 00062A08  28 04 00 00 */	cmplwi r4, 0
/* 80065ACC 00062A0C  40 81 00 70 */	ble .L_80065B3C
.L_80065AD0:
/* 80065AD0 00062A10  80 83 00 00 */	lwz r4, 0(r3)
/* 80065AD4 00062A14  39 60 00 00 */	li r11, 0
/* 80065AD8 00062A18  39 2C 00 04 */	addi r9, r12, 4
/* 80065ADC 00062A1C  39 0C 00 08 */	addi r8, r12, 8
/* 80065AE0 00062A20  7D 64 61 2E */	stwx r11, r4, r12
/* 80065AE4 00062A24  38 EC 00 0C */	addi r7, r12, 0xc
/* 80065AE8 00062A28  38 CC 00 10 */	addi r6, r12, 0x10
/* 80065AEC 00062A2C  38 AC 00 14 */	addi r5, r12, 0x14
/* 80065AF0 00062A30  81 43 00 00 */	lwz r10, 0(r3)
/* 80065AF4 00062A34  38 8C 00 18 */	addi r4, r12, 0x18
/* 80065AF8 00062A38  38 0C 00 1C */	addi r0, r12, 0x1c
/* 80065AFC 00062A3C  39 8C 00 20 */	addi r12, r12, 0x20
/* 80065B00 00062A40  7D 6A 49 2E */	stwx r11, r10, r9
/* 80065B04 00062A44  3B DE 00 08 */	addi r30, r30, 8
/* 80065B08 00062A48  81 23 00 00 */	lwz r9, 0(r3)
/* 80065B0C 00062A4C  7D 69 41 2E */	stwx r11, r9, r8
/* 80065B10 00062A50  81 03 00 00 */	lwz r8, 0(r3)
/* 80065B14 00062A54  7D 68 39 2E */	stwx r11, r8, r7
/* 80065B18 00062A58  80 E3 00 00 */	lwz r7, 0(r3)
/* 80065B1C 00062A5C  7D 67 31 2E */	stwx r11, r7, r6
/* 80065B20 00062A60  80 C3 00 00 */	lwz r6, 0(r3)
/* 80065B24 00062A64  7D 66 29 2E */	stwx r11, r6, r5
/* 80065B28 00062A68  80 A3 00 00 */	lwz r5, 0(r3)
/* 80065B2C 00062A6C  7D 65 21 2E */	stwx r11, r5, r4
/* 80065B30 00062A70  80 83 00 00 */	lwz r4, 0(r3)
/* 80065B34 00062A74  7D 64 01 2E */	stwx r11, r4, r0
/* 80065B38 00062A78  42 00 FF 98 */	bdnz .L_80065AD0
.L_80065B3C:
/* 80065B3C 00062A7C  7C 1E F8 50 */	subf r0, r30, r31
/* 80065B40 00062A80  57 C6 10 3A */	slwi r6, r30, 2
/* 80065B44 00062A84  38 A0 00 00 */	li r5, 0
/* 80065B48 00062A88  7C 09 03 A6 */	mtctr r0
/* 80065B4C 00062A8C  7C 1E F8 40 */	cmplw r30, r31
/* 80065B50 00062A90  40 80 00 14 */	bge .L_80065B64
.L_80065B54:
/* 80065B54 00062A94  80 83 00 00 */	lwz r4, 0(r3)
/* 80065B58 00062A98  7C A4 31 2E */	stwx r5, r4, r6
/* 80065B5C 00062A9C  38 C6 00 04 */	addi r6, r6, 4
/* 80065B60 00062AA0  42 00 FF F4 */	bdnz .L_80065B54
.L_80065B64:
/* 80065B64 00062AA4  38 00 00 00 */	li r0, 0
/* 80065B68 00062AA8  90 03 00 20 */	stw r0, 0x20(r3)
/* 80065B6C 00062AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80065B70 00062AB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80065B74 00062AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80065B78 00062AB8  4E 80 00 20 */	blr 

.global entryMatSort__13J3DDrawBufferFP12J3DMatPacket
entryMatSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80065B7C 00062ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80065B80 00062AC0  7C 08 02 A6 */	mflr r0
/* 80065B84 00062AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80065B88 00062AC8  38 00 00 00 */	li r0, 0
/* 80065B8C 00062ACC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80065B90 00062AD0  7C 9F 23 78 */	mr r31, r4
/* 80065B94 00062AD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80065B98 00062AD8  7C 7E 1B 78 */	mr r30, r3
/* 80065B9C 00062ADC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80065BA0 00062AE0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80065BA4 00062AE4  90 04 00 04 */	stw r0, 4(r4)
/* 80065BA8 00062AE8  90 04 00 08 */	stw r0, 8(r4)
/* 80065BAC 00062AEC  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 80065BB0 00062AF0  90 03 00 04 */	stw r0, 4(r3)
/* 80065BB4 00062AF4  90 03 00 08 */	stw r0, 8(r3)
/* 80065BB8 00062AF8  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80065BBC 00062AFC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80065BC0 00062B00  41 82 00 20 */	beq .L_80065BE0
/* 80065BC4 00062B04  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065BC8 00062B08  38 60 00 01 */	li r3, 1
/* 80065BCC 00062B0C  80 04 00 00 */	lwz r0, 0(r4)
/* 80065BD0 00062B10  90 1F 00 04 */	stw r0, 4(r31)
/* 80065BD4 00062B14  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065BD8 00062B18  93 E4 00 00 */	stw r31, 0(r4)
/* 80065BDC 00062B1C  48 00 00 D8 */	b .L_80065CB4
.L_80065BE0:
/* 80065BE0 00062B20  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80065BE4 00062B24  3C 80 80 51 */	lis r4, j3dSys@ha
/* 80065BE8 00062B28  38 A4 F2 30 */	addi r5, r4, j3dSys@l
/* 80065BEC 00062B2C  38 80 00 00 */	li r4, 0
/* 80065BF0 00062B30  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80065BF4 00062B34  83 A5 00 58 */	lwz r29, 0x58(r5)
/* 80065BF8 00062B38  81 83 00 00 */	lwz r12, 0(r3)
/* 80065BFC 00062B3C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80065C00 00062B40  7D 89 03 A6 */	mtctr r12
/* 80065C04 00062B44  4E 80 04 21 */	bctrl 
/* 80065C08 00062B48  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80065C0C 00062B4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80065C10 00062B50  40 82 00 0C */	bne .L_80065C1C
/* 80065C14 00062B54  38 A0 00 00 */	li r5, 0
/* 80065C18 00062B58  48 00 00 1C */	b .L_80065C34
.L_80065C1C:
/* 80065C1C 00062B5C  80 9D 00 04 */	lwz r4, 4(r29)
/* 80065C20 00062B60  54 60 2A F4 */	rlwinm r0, r3, 5, 0xb, 0x1a
/* 80065C24 00062B64  7C 64 02 14 */	add r3, r4, r0
/* 80065C28 00062B68  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80065C2C 00062B6C  7C 03 02 14 */	add r0, r3, r0
/* 80065C30 00062B70  54 05 D9 7E */	srwi r5, r0, 5
.L_80065C34:
/* 80065C34 00062B74  80 7E 00 04 */	lwz r3, 4(r30)
/* 80065C38 00062B78  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065C3C 00062B7C  38 03 FF FF */	addi r0, r3, -1
/* 80065C40 00062B80  7C A0 00 38 */	and r0, r5, r0
/* 80065C44 00062B84  54 1D 10 3A */	slwi r29, r0, 2
/* 80065C48 00062B88  7C 04 E8 2E */	lwzx r0, r4, r29
/* 80065C4C 00062B8C  28 00 00 00 */	cmplwi r0, 0
/* 80065C50 00062B90  40 82 00 10 */	bne .L_80065C60
/* 80065C54 00062B94  7F E4 E9 2E */	stwx r31, r4, r29
/* 80065C58 00062B98  38 60 00 01 */	li r3, 1
/* 80065C5C 00062B9C  48 00 00 58 */	b .L_80065CB4
.L_80065C60:
/* 80065C60 00062BA0  7C 1C 03 78 */	mr r28, r0
/* 80065C64 00062BA4  48 00 00 30 */	b .L_80065C94
.L_80065C68:
/* 80065C68 00062BA8  7F 83 E3 78 */	mr r3, r28
/* 80065C6C 00062BAC  7F E4 FB 78 */	mr r4, r31
/* 80065C70 00062BB0  4B FF A2 69 */	bl isSame__12J3DMatPacketCFP12J3DMatPacket
/* 80065C74 00062BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80065C78 00062BB8  41 82 00 18 */	beq .L_80065C90
/* 80065C7C 00062BBC  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80065C80 00062BC0  7F 83 E3 78 */	mr r3, r28
/* 80065C84 00062BC4  4B FF A1 71 */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 80065C88 00062BC8  38 60 00 00 */	li r3, 0
/* 80065C8C 00062BCC  48 00 00 28 */	b .L_80065CB4
.L_80065C90:
/* 80065C90 00062BD0  83 9C 00 04 */	lwz r28, 4(r28)
.L_80065C94:
/* 80065C94 00062BD4  28 1C 00 00 */	cmplwi r28, 0
/* 80065C98 00062BD8  40 82 FF D0 */	bne .L_80065C68
/* 80065C9C 00062BDC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065CA0 00062BE0  38 60 00 01 */	li r3, 1
/* 80065CA4 00062BE4  7C 04 E8 2E */	lwzx r0, r4, r29
/* 80065CA8 00062BE8  90 1F 00 04 */	stw r0, 4(r31)
/* 80065CAC 00062BEC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065CB0 00062BF0  7F E4 E9 2E */	stwx r31, r4, r29
.L_80065CB4:
/* 80065CB4 00062BF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80065CB8 00062BF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80065CBC 00062BFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80065CC0 00062C00  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80065CC4 00062C04  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80065CC8 00062C08  7C 08 03 A6 */	mtlr r0
/* 80065CCC 00062C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80065CD0 00062C10  4E 80 00 20 */	blr 

.global getTexNo__11J3DTevBlockCFUl
getTexNo__11J3DTevBlockCFUl:
/* 80065CD4 00062C14  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80065CD8 00062C18  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 80065CDC 00062C1C  4E 80 00 20 */	blr 

.global entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket
entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80065CE0 00062C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80065CE4 00062C24  7C 08 02 A6 */	mflr r0
/* 80065CE8 00062C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80065CEC 00062C2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80065CF0 00062C30  7C 9F 23 78 */	mr r31, r4
/* 80065CF4 00062C34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80065CF8 00062C38  7C 7E 1B 78 */	mr r30, r3
/* 80065CFC 00062C3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80065D00 00062C40  93 81 00 10 */	stw r28, 0x10(r1)
/* 80065D04 00062C44  80 C4 00 3C */	lwz r6, 0x3c(r4)
/* 80065D08 00062C48  80 63 00 04 */	lwz r3, 4(r3)
/* 80065D0C 00062C4C  28 06 00 00 */	cmplwi r6, 0
/* 80065D10 00062C50  38 03 FF FF */	addi r0, r3, -1
/* 80065D14 00062C54  7C C3 00 38 */	and r3, r6, r0
/* 80065D18 00062C58  40 82 01 18 */	bne .L_80065E30
/* 80065D1C 00062C5C  38 00 00 00 */	li r0, 0
/* 80065D20 00062C60  90 1F 00 04 */	stw r0, 4(r31)
/* 80065D24 00062C64  90 1F 00 08 */	stw r0, 8(r31)
/* 80065D28 00062C68  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80065D2C 00062C6C  90 03 00 04 */	stw r0, 4(r3)
/* 80065D30 00062C70  90 03 00 08 */	stw r0, 8(r3)
/* 80065D34 00062C74  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80065D38 00062C78  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80065D3C 00062C7C  41 82 00 20 */	beq .L_80065D5C
/* 80065D40 00062C80  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065D44 00062C84  38 60 00 01 */	li r3, 1
/* 80065D48 00062C88  80 04 00 00 */	lwz r0, 0(r4)
/* 80065D4C 00062C8C  90 1F 00 04 */	stw r0, 4(r31)
/* 80065D50 00062C90  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065D54 00062C94  93 E4 00 00 */	stw r31, 0(r4)
/* 80065D58 00062C98  48 00 01 50 */	b .L_80065EA8
.L_80065D5C:
/* 80065D5C 00062C9C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80065D60 00062CA0  3C 80 80 51 */	lis r4, j3dSys@ha
/* 80065D64 00062CA4  38 A4 F2 30 */	addi r5, r4, j3dSys@l
/* 80065D68 00062CA8  38 80 00 00 */	li r4, 0
/* 80065D6C 00062CAC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80065D70 00062CB0  83 A5 00 58 */	lwz r29, 0x58(r5)
/* 80065D74 00062CB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80065D78 00062CB8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80065D7C 00062CBC  7D 89 03 A6 */	mtctr r12
/* 80065D80 00062CC0  4E 80 04 21 */	bctrl 
/* 80065D84 00062CC4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80065D88 00062CC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80065D8C 00062CCC  40 82 00 0C */	bne .L_80065D98
/* 80065D90 00062CD0  38 A0 00 00 */	li r5, 0
/* 80065D94 00062CD4  48 00 00 1C */	b .L_80065DB0
.L_80065D98:
/* 80065D98 00062CD8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80065D9C 00062CDC  54 60 2A F4 */	rlwinm r0, r3, 5, 0xb, 0x1a
/* 80065DA0 00062CE0  7C 64 02 14 */	add r3, r4, r0
/* 80065DA4 00062CE4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80065DA8 00062CE8  7C 03 02 14 */	add r0, r3, r0
/* 80065DAC 00062CEC  54 05 D9 7E */	srwi r5, r0, 5
.L_80065DB0:
/* 80065DB0 00062CF0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80065DB4 00062CF4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065DB8 00062CF8  38 03 FF FF */	addi r0, r3, -1
/* 80065DBC 00062CFC  7C A0 00 38 */	and r0, r5, r0
/* 80065DC0 00062D00  54 1C 10 3A */	slwi r28, r0, 2
/* 80065DC4 00062D04  7F A4 E0 2E */	lwzx r29, r4, r28
/* 80065DC8 00062D08  28 1D 00 00 */	cmplwi r29, 0
/* 80065DCC 00062D0C  40 82 00 40 */	bne .L_80065E0C
/* 80065DD0 00062D10  7F E4 E1 2E */	stwx r31, r4, r28
/* 80065DD4 00062D14  38 60 00 01 */	li r3, 1
/* 80065DD8 00062D18  48 00 00 D0 */	b .L_80065EA8
/* 80065DDC 00062D1C  48 00 00 30 */	b .L_80065E0C
.L_80065DE0:
/* 80065DE0 00062D20  7F A3 EB 78 */	mr r3, r29
/* 80065DE4 00062D24  7F E4 FB 78 */	mr r4, r31
/* 80065DE8 00062D28  4B FF A0 F1 */	bl isSame__12J3DMatPacketCFP12J3DMatPacket
/* 80065DEC 00062D2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80065DF0 00062D30  41 82 00 18 */	beq .L_80065E08
/* 80065DF4 00062D34  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80065DF8 00062D38  7F A3 EB 78 */	mr r3, r29
/* 80065DFC 00062D3C  4B FF 9F F9 */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 80065E00 00062D40  38 60 00 00 */	li r3, 0
/* 80065E04 00062D44  48 00 00 A4 */	b .L_80065EA8
.L_80065E08:
/* 80065E08 00062D48  83 BD 00 04 */	lwz r29, 4(r29)
.L_80065E0C:
/* 80065E0C 00062D4C  28 1D 00 00 */	cmplwi r29, 0
/* 80065E10 00062D50  40 82 FF D0 */	bne .L_80065DE0
/* 80065E14 00062D54  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065E18 00062D58  38 60 00 01 */	li r3, 1
/* 80065E1C 00062D5C  7C 04 E0 2E */	lwzx r0, r4, r28
/* 80065E20 00062D60  90 1F 00 04 */	stw r0, 4(r31)
/* 80065E24 00062D64  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065E28 00062D68  7F E4 E1 2E */	stwx r31, r4, r28
/* 80065E2C 00062D6C  48 00 00 7C */	b .L_80065EA8
.L_80065E30:
/* 80065E30 00062D70  38 00 00 00 */	li r0, 0
/* 80065E34 00062D74  54 65 10 3A */	slwi r5, r3, 2
/* 80065E38 00062D78  90 1F 00 04 */	stw r0, 4(r31)
/* 80065E3C 00062D7C  90 1F 00 08 */	stw r0, 8(r31)
/* 80065E40 00062D80  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80065E44 00062D84  90 03 00 04 */	stw r0, 4(r3)
/* 80065E48 00062D88  90 03 00 08 */	stw r0, 8(r3)
/* 80065E4C 00062D8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 80065E50 00062D90  7C 83 28 2E */	lwzx r4, r3, r5
/* 80065E54 00062D94  28 04 00 00 */	cmplwi r4, 0
/* 80065E58 00062D98  40 82 00 10 */	bne .L_80065E68
/* 80065E5C 00062D9C  7F E3 29 2E */	stwx r31, r3, r5
/* 80065E60 00062DA0  38 60 00 01 */	li r3, 1
/* 80065E64 00062DA4  48 00 00 44 */	b .L_80065EA8
.L_80065E68:
/* 80065E68 00062DA8  7C 83 23 78 */	mr r3, r4
/* 80065E6C 00062DAC  48 00 00 24 */	b .L_80065E90
.L_80065E70:
/* 80065E70 00062DB0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80065E74 00062DB4  7C 00 30 40 */	cmplw r0, r6
/* 80065E78 00062DB8  40 82 00 14 */	bne .L_80065E8C
/* 80065E7C 00062DBC  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80065E80 00062DC0  4B FF 9F 75 */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 80065E84 00062DC4  38 60 00 00 */	li r3, 0
/* 80065E88 00062DC8  48 00 00 20 */	b .L_80065EA8
.L_80065E8C:
/* 80065E8C 00062DCC  80 63 00 04 */	lwz r3, 4(r3)
.L_80065E90:
/* 80065E90 00062DD0  28 03 00 00 */	cmplwi r3, 0
/* 80065E94 00062DD4  40 82 FF DC */	bne .L_80065E70
/* 80065E98 00062DD8  90 9F 00 04 */	stw r4, 4(r31)
/* 80065E9C 00062DDC  38 60 00 01 */	li r3, 1
/* 80065EA0 00062DE0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065EA4 00062DE4  7F E4 29 2E */	stwx r31, r4, r5
.L_80065EA8:
/* 80065EA8 00062DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80065EAC 00062DEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80065EB0 00062DF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80065EB4 00062DF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80065EB8 00062DF8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80065EBC 00062DFC  7C 08 03 A6 */	mtlr r0
/* 80065EC0 00062E00  38 21 00 20 */	addi r1, r1, 0x20
/* 80065EC4 00062E04  4E 80 00 20 */	blr 

.global entryZSort__13J3DDrawBufferFP12J3DMatPacket
entryZSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80065EC8 00062E08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80065ECC 00062E0C  7C 08 02 A6 */	mflr r0
/* 80065ED0 00062E10  C0 62 86 A0 */	lfs f3, lbl_80516A00@sda21(r2)
/* 80065ED4 00062E14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80065ED8 00062E18  38 00 00 00 */	li r0, 0
/* 80065EDC 00062E1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80065EE0 00062E20  7C 9F 23 78 */	mr r31, r4
/* 80065EE4 00062E24  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80065EE8 00062E28  7C 7E 1B 78 */	mr r30, r3
/* 80065EEC 00062E2C  90 04 00 04 */	stw r0, 4(r4)
/* 80065EF0 00062E30  3C 80 80 51 */	lis r4, j3dSys@ha
/* 80065EF4 00062E34  38 64 F2 30 */	addi r3, r4, j3dSys@l
/* 80065EF8 00062E38  90 1F 00 08 */	stw r0, 8(r31)
/* 80065EFC 00062E3C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80065F00 00062E40  90 04 00 04 */	stw r0, 4(r4)
/* 80065F04 00062E44  90 04 00 08 */	stw r0, 8(r4)
/* 80065F08 00062E48  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 80065F0C 00062E4C  E0 A3 00 20 */	psq_l f5, 32(r3), 0, qr0
/* 80065F10 00062E50  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80065F14 00062E54  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80065F18 00062E58  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 80065F1C 00062E5C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80065F20 00062E60  E0 43 00 28 */	psq_l f2, 40(r3), 0, qr0
/* 80065F24 00062E64  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80065F28 00062E68  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80065F2C 00062E6C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80065F30 00062E70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80065F34 00062E74  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80065F38 00062E78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80065F3C 00062E7C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80065F40 00062E80  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 80065F44 00062E84  90 81 00 08 */	stw r4, 8(r1)
/* 80065F48 00062E88  10 84 1C 20 */	ps_merge00 f4, f4, f3
/* 80065F4C 00062E8C  C0 DE 00 18 */	lfs f6, 0x18(r30)
/* 80065F50 00062E90  90 61 00 0C */	stw r3, 0xc(r1)
/* 80065F54 00062E94  EC 00 30 2A */	fadds f0, f0, f6
/* 80065F58 00062E98  E0 21 00 08 */	psq_l f1, 8(r1), 0, qr0
/* 80065F5C 00062E9C  10 A1 01 72 */	ps_mul f5, f1, f5
/* 80065F60 00062EA0  10 44 28 BA */	ps_madd f2, f4, f2, f5
/* 80065F64 00062EA4  10 42 10 94 */	ps_sum0 f2, f2, f2, f2
/* 80065F68 00062EA8  FC 20 10 50 */	fneg f1, f2
/* 80065F6C 00062EAC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80065F70 00062EB0  40 80 00 30 */	bge .L_80065FA0
/* 80065F74 00062EB4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80065F78 00062EB8  EC 00 30 28 */	fsubs f0, f0, f6
/* 80065F7C 00062EBC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80065F80 00062EC0  40 81 00 14 */	ble .L_80065F94
/* 80065F84 00062EC4  EC 21 30 24 */	fdivs f1, f1, f6
/* 80065F88 00062EC8  48 05 BB C5 */	bl __cvt_fp2unsigned
/* 80065F8C 00062ECC  7C 66 1B 78 */	mr r6, r3
/* 80065F90 00062ED0  48 00 00 14 */	b .L_80065FA4
.L_80065F94:
/* 80065F94 00062ED4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80065F98 00062ED8  38 C3 FF FF */	addi r6, r3, -1
/* 80065F9C 00062EDC  48 00 00 08 */	b .L_80065FA4
.L_80065FA0:
/* 80065FA0 00062EE0  38 C0 00 00 */	li r6, 0
.L_80065FA4:
/* 80065FA4 00062EE4  80 BE 00 04 */	lwz r5, 4(r30)
/* 80065FA8 00062EE8  38 60 00 01 */	li r3, 1
/* 80065FAC 00062EEC  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065FB0 00062EF0  38 05 FF FF */	addi r0, r5, -1
/* 80065FB4 00062EF4  7C 06 00 50 */	subf r0, r6, r0
/* 80065FB8 00062EF8  54 05 10 3A */	slwi r5, r0, 2
/* 80065FBC 00062EFC  7C 04 28 2E */	lwzx r0, r4, r5
/* 80065FC0 00062F00  90 1F 00 04 */	stw r0, 4(r31)
/* 80065FC4 00062F04  80 9E 00 00 */	lwz r4, 0(r30)
/* 80065FC8 00062F08  7F E4 29 2E */	stwx r31, r4, r5
/* 80065FCC 00062F0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80065FD0 00062F10  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80065FD4 00062F14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80065FD8 00062F18  7C 08 03 A6 */	mtlr r0
/* 80065FDC 00062F1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80065FE0 00062F20  4E 80 00 20 */	blr 

.global entryModelSort__13J3DDrawBufferFP12J3DMatPacket
entryModelSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80065FE4 00062F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80065FE8 00062F28  7C 08 02 A6 */	mflr r0
/* 80065FEC 00062F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80065FF0 00062F30  38 00 00 00 */	li r0, 0
/* 80065FF4 00062F34  90 04 00 04 */	stw r0, 4(r4)
/* 80065FF8 00062F38  90 04 00 08 */	stw r0, 8(r4)
/* 80065FFC 00062F3C  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80066000 00062F40  90 05 00 04 */	stw r0, 4(r5)
/* 80066004 00062F44  90 05 00 08 */	stw r0, 8(r5)
/* 80066008 00062F48  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8006600C 00062F4C  28 03 00 00 */	cmplwi r3, 0
/* 80066010 00062F50  41 82 00 10 */	beq .L_80066020
/* 80066014 00062F54  4B FF 9A E5 */	bl addChildPacket__9J3DPacketFP9J3DPacket
/* 80066018 00062F58  38 60 00 01 */	li r3, 1
/* 8006601C 00062F5C  48 00 00 08 */	b .L_80066024
.L_80066020:
/* 80066020 00062F60  38 60 00 00 */	li r3, 0
.L_80066024:
/* 80066024 00062F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80066028 00062F68  7C 08 03 A6 */	mtlr r0
/* 8006602C 00062F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80066030 00062F70  4E 80 00 20 */	blr 

.global entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket
entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80066034 00062F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80066038 00062F78  7C 08 02 A6 */	mflr r0
/* 8006603C 00062F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80066040 00062F80  38 00 00 00 */	li r0, 0
/* 80066044 00062F84  90 04 00 04 */	stw r0, 4(r4)
/* 80066048 00062F88  90 04 00 08 */	stw r0, 8(r4)
/* 8006604C 00062F8C  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80066050 00062F90  90 05 00 04 */	stw r0, 4(r5)
/* 80066054 00062F94  90 05 00 08 */	stw r0, 8(r5)
/* 80066058 00062F98  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8006605C 00062F9C  28 03 00 00 */	cmplwi r3, 0
/* 80066060 00062FA0  41 82 00 14 */	beq .L_80066074
/* 80066064 00062FA4  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 80066068 00062FA8  4B FF 9A 91 */	bl addChildPacket__9J3DPacketFP9J3DPacket
/* 8006606C 00062FAC  38 60 00 01 */	li r3, 1
/* 80066070 00062FB0  48 00 00 08 */	b .L_80066078
.L_80066074:
/* 80066074 00062FB4  38 60 00 00 */	li r3, 0
.L_80066078:
/* 80066078 00062FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006607C 00062FBC  7C 08 03 A6 */	mtlr r0
/* 80066080 00062FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80066084 00062FC4  4E 80 00 20 */	blr 

.global entryNonSort__13J3DDrawBufferFP12J3DMatPacket
entryNonSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80066088 00062FC8  38 00 00 00 */	li r0, 0
/* 8006608C 00062FCC  90 04 00 04 */	stw r0, 4(r4)
/* 80066090 00062FD0  90 04 00 08 */	stw r0, 8(r4)
/* 80066094 00062FD4  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80066098 00062FD8  90 05 00 04 */	stw r0, 4(r5)
/* 8006609C 00062FDC  90 05 00 08 */	stw r0, 8(r5)
/* 800660A0 00062FE0  80 A3 00 00 */	lwz r5, 0(r3)
/* 800660A4 00062FE4  80 05 00 00 */	lwz r0, 0(r5)
/* 800660A8 00062FE8  90 04 00 04 */	stw r0, 4(r4)
/* 800660AC 00062FEC  80 A3 00 00 */	lwz r5, 0(r3)
/* 800660B0 00062FF0  38 60 00 01 */	li r3, 1
/* 800660B4 00062FF4  90 85 00 00 */	stw r4, 0(r5)
/* 800660B8 00062FF8  4E 80 00 20 */	blr 

.global draw__13J3DDrawBufferCFv
draw__13J3DDrawBufferCFv:
/* 800660BC 00062FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800660C0 00063000  7C 08 02 A6 */	mflr r0
/* 800660C4 00063004  80 A3 00 08 */	lwz r5, 8(r3)
/* 800660C8 00063008  3C 80 80 4A */	lis r4, drawFuncTable__13J3DDrawBuffer@ha
/* 800660CC 0006300C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800660D0 00063010  38 04 19 D8 */	addi r0, r4, drawFuncTable__13J3DDrawBuffer@l
/* 800660D4 00063014  1C 85 00 0C */	mulli r4, r5, 0xc
/* 800660D8 00063018  39 81 00 08 */	addi r12, r1, 8
/* 800660DC 0006301C  7C C0 22 14 */	add r6, r0, r4
/* 800660E0 00063020  80 A6 00 00 */	lwz r5, 0(r6)
/* 800660E4 00063024  80 86 00 04 */	lwz r4, 4(r6)
/* 800660E8 00063028  80 06 00 08 */	lwz r0, 8(r6)
/* 800660EC 0006302C  90 A1 00 08 */	stw r5, 8(r1)
/* 800660F0 00063030  90 81 00 0C */	stw r4, 0xc(r1)
/* 800660F4 00063034  90 01 00 10 */	stw r0, 0x10(r1)
/* 800660F8 00063038  48 05 BA 2D */	bl __ptmf_scall
/* 800660FC 0006303C  60 00 00 00 */	nop 
/* 80066100 00063040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066104 00063044  7C 08 03 A6 */	mtlr r0
/* 80066108 00063048  38 21 00 20 */	addi r1, r1, 0x20
/* 8006610C 0006304C  4E 80 00 20 */	blr 

.global drawHead__13J3DDrawBufferCFv
drawHead__13J3DDrawBufferCFv:
/* 80066110 00063050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80066114 00063054  7C 08 02 A6 */	mflr r0
/* 80066118 00063058  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006611C 0006305C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80066120 00063060  83 E3 00 00 */	lwz r31, 0(r3)
/* 80066124 00063064  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80066128 00063068  83 C3 00 04 */	lwz r30, 4(r3)
/* 8006612C 0006306C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80066130 00063070  3B A0 00 00 */	li r29, 0
/* 80066134 00063074  93 81 00 10 */	stw r28, 0x10(r1)
/* 80066138 00063078  48 00 00 34 */	b .L_8006616C
.L_8006613C:
/* 8006613C 0006307C  83 9F 00 00 */	lwz r28, 0(r31)
/* 80066140 00063080  48 00 00 1C */	b .L_8006615C
.L_80066144:
/* 80066144 00063084  7F 83 E3 78 */	mr r3, r28
/* 80066148 00063088  81 9C 00 00 */	lwz r12, 0(r28)
/* 8006614C 0006308C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80066150 00063090  7D 89 03 A6 */	mtctr r12
/* 80066154 00063094  4E 80 04 21 */	bctrl 
/* 80066158 00063098  83 9C 00 04 */	lwz r28, 4(r28)
.L_8006615C:
/* 8006615C 0006309C  28 1C 00 00 */	cmplwi r28, 0
/* 80066160 000630A0  40 82 FF E4 */	bne .L_80066144
/* 80066164 000630A4  3B FF 00 04 */	addi r31, r31, 4
/* 80066168 000630A8  3B BD 00 01 */	addi r29, r29, 1
.L_8006616C:
/* 8006616C 000630AC  7C 1D F0 40 */	cmplw r29, r30
/* 80066170 000630B0  41 80 FF CC */	blt .L_8006613C
/* 80066174 000630B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066178 000630B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006617C 000630BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80066180 000630C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80066184 000630C4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80066188 000630C8  7C 08 03 A6 */	mtlr r0
/* 8006618C 000630CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80066190 000630D0  4E 80 00 20 */	blr 

.global drawTail__13J3DDrawBufferCFv
drawTail__13J3DDrawBufferCFv:
/* 80066194 000630D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80066198 000630D8  7C 08 02 A6 */	mflr r0
/* 8006619C 000630DC  80 83 00 04 */	lwz r4, 4(r3)
/* 800661A0 000630E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800661A4 000630E4  80 03 00 00 */	lwz r0, 0(r3)
/* 800661A8 000630E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800661AC 000630EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800661B0 000630F0  3B C4 FF FF */	addi r30, r4, -1
/* 800661B4 000630F4  57 C3 10 3A */	slwi r3, r30, 2
/* 800661B8 000630F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800661BC 000630FC  7F E0 1A 14 */	add r31, r0, r3
/* 800661C0 00063100  48 00 00 34 */	b .L_800661F4
.L_800661C4:
/* 800661C4 00063104  83 BF 00 00 */	lwz r29, 0(r31)
/* 800661C8 00063108  48 00 00 1C */	b .L_800661E4
.L_800661CC:
/* 800661CC 0006310C  7F A3 EB 78 */	mr r3, r29
/* 800661D0 00063110  81 9D 00 00 */	lwz r12, 0(r29)
/* 800661D4 00063114  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800661D8 00063118  7D 89 03 A6 */	mtctr r12
/* 800661DC 0006311C  4E 80 04 21 */	bctrl 
/* 800661E0 00063120  83 BD 00 04 */	lwz r29, 4(r29)
.L_800661E4:
/* 800661E4 00063124  28 1D 00 00 */	cmplwi r29, 0
/* 800661E8 00063128  40 82 FF E4 */	bne .L_800661CC
/* 800661EC 0006312C  3B FF FF FC */	addi r31, r31, -4
/* 800661F0 00063130  3B DE FF FF */	addi r30, r30, -1
.L_800661F4:
/* 800661F4 00063134  2C 1E 00 00 */	cmpwi r30, 0
/* 800661F8 00063138  40 80 FF CC */	bge .L_800661C4
/* 800661FC 0006313C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80066200 00063140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80066204 00063144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80066208 00063148  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8006620C 0006314C  7C 08 03 A6 */	mtlr r0
/* 80066210 00063150  38 21 00 20 */	addi r1, r1, 0x20
/* 80066214 00063154  4E 80 00 20 */	blr 

fn local __sinit_J3DDrawBuffer_cpp
/* 80066218 00063158  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8006621C 0006315C  3C 60 80 4A */	lis r3, lbl_804A1930@ha
/* 80066220 00063160  BE 01 00 10 */	stmw r16, 0x10(r1)
/* 80066224 00063164  3A 03 19 30 */	addi r16, r3, lbl_804A1930@l
/* 80066228 00063168  3A 90 00 48 */	addi r20, r16, 0x48
/* 8006622C 0006316C  38 B0 00 A8 */	addi r5, r16, 0xa8
/* 80066230 00063170  82 30 00 00 */	lwz r17, 0(r16)
/* 80066234 00063174  82 50 00 04 */	lwz r18, 4(r16)
/* 80066238 00063178  82 70 00 08 */	lwz r19, 8(r16)
/* 8006623C 0006317C  82 B0 00 0C */	lwz r21, 0xc(r16)
/* 80066240 00063180  82 D0 00 10 */	lwz r22, 0x10(r16)
/* 80066244 00063184  82 F0 00 14 */	lwz r23, 0x14(r16)
/* 80066248 00063188  83 10 00 18 */	lwz r24, 0x18(r16)
/* 8006624C 0006318C  83 30 00 1C */	lwz r25, 0x1c(r16)
/* 80066250 00063190  83 50 00 20 */	lwz r26, 0x20(r16)
/* 80066254 00063194  83 70 00 24 */	lwz r27, 0x24(r16)
/* 80066258 00063198  83 90 00 28 */	lwz r28, 0x28(r16)
/* 8006625C 0006319C  83 B0 00 2C */	lwz r29, 0x2c(r16)
/* 80066260 000631A0  83 D0 00 30 */	lwz r30, 0x30(r16)
/* 80066264 000631A4  83 F0 00 34 */	lwz r31, 0x34(r16)
/* 80066268 000631A8  81 90 00 38 */	lwz r12, 0x38(r16)
/* 8006626C 000631AC  81 70 00 3C */	lwz r11, 0x3c(r16)
/* 80066270 000631B0  81 50 00 40 */	lwz r10, 0x40(r16)
/* 80066274 000631B4  81 30 00 44 */	lwz r9, 0x44(r16)
/* 80066278 000631B8  81 10 00 90 */	lwz r8, 0x90(r16)
/* 8006627C 000631BC  80 F0 00 94 */	lwz r7, 0x94(r16)
/* 80066280 000631C0  80 D0 00 98 */	lwz r6, 0x98(r16)
/* 80066284 000631C4  80 90 00 9C */	lwz r4, 0x9c(r16)
/* 80066288 000631C8  80 70 00 A0 */	lwz r3, 0xa0(r16)
/* 8006628C 000631CC  80 10 00 A4 */	lwz r0, 0xa4(r16)
/* 80066290 000631D0  92 30 00 48 */	stw r17, 0x48(r16)
/* 80066294 000631D4  92 50 00 4C */	stw r18, 0x4c(r16)
/* 80066298 000631D8  92 70 00 50 */	stw r19, 0x50(r16)
/* 8006629C 000631DC  92 B4 00 0C */	stw r21, 0xc(r20)
/* 800662A0 000631E0  92 D4 00 10 */	stw r22, 0x10(r20)
/* 800662A4 000631E4  92 F4 00 14 */	stw r23, 0x14(r20)
/* 800662A8 000631E8  93 14 00 18 */	stw r24, 0x18(r20)
/* 800662AC 000631EC  93 34 00 1C */	stw r25, 0x1c(r20)
/* 800662B0 000631F0  93 54 00 20 */	stw r26, 0x20(r20)
/* 800662B4 000631F4  93 74 00 24 */	stw r27, 0x24(r20)
/* 800662B8 000631F8  93 94 00 28 */	stw r28, 0x28(r20)
/* 800662BC 000631FC  93 B4 00 2C */	stw r29, 0x2c(r20)
/* 800662C0 00063200  93 D4 00 30 */	stw r30, 0x30(r20)
/* 800662C4 00063204  93 F4 00 34 */	stw r31, 0x34(r20)
/* 800662C8 00063208  91 94 00 38 */	stw r12, 0x38(r20)
/* 800662CC 0006320C  91 74 00 3C */	stw r11, 0x3c(r20)
/* 800662D0 00063210  91 54 00 40 */	stw r10, 0x40(r20)
/* 800662D4 00063214  91 34 00 44 */	stw r9, 0x44(r20)
/* 800662D8 00063218  91 10 00 A8 */	stw r8, 0xa8(r16)
/* 800662DC 0006321C  90 F0 00 AC */	stw r7, 0xac(r16)
/* 800662E0 00063220  90 D0 00 B0 */	stw r6, 0xb0(r16)
/* 800662E4 00063224  90 85 00 0C */	stw r4, 0xc(r5)
/* 800662E8 00063228  90 65 00 10 */	stw r3, 0x10(r5)
/* 800662EC 0006322C  90 05 00 14 */	stw r0, 0x14(r5)
/* 800662F0 00063230  BA 01 00 10 */	lmw r16, 0x10(r1)
/* 800662F4 00063234  38 21 00 50 */	addi r1, r1, 0x50
/* 800662F8 00063238  4E 80 00 20 */	blr 
end __sinit_J3DDrawBuffer_cpp
