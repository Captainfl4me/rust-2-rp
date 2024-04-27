
multicore-lockout-irq:	file format elf32-littlearm

Disassembly of section .text:

100001c0 <__stext>:
100001c0: f001 fd5b    	bl	0x10001c7a <__pre_init> @ imm = #0x1ab6
100001c4: 4808         	ldr	r0, [pc, #0x20]         @ 0x100001e8 <__stext+0x28>
100001c6: 4909         	ldr	r1, [pc, #0x24]         @ 0x100001ec <__stext+0x2c>
100001c8: 2200         	movs	r2, #0x0
100001ca: 4281         	cmp	r1, r0
100001cc: d001         	beq	0x100001d2 <__stext+0x12> @ imm = #0x2
100001ce: c004         	stm	r0!, {r2}
100001d0: e7fb         	b	0x100001ca <__stext+0xa> @ imm = #-0xa
100001d2: 4807         	ldr	r0, [pc, #0x1c]         @ 0x100001f0 <__stext+0x30>
100001d4: 4907         	ldr	r1, [pc, #0x1c]         @ 0x100001f4 <__stext+0x34>
100001d6: 4a08         	ldr	r2, [pc, #0x20]         @ 0x100001f8 <__stext+0x38>
100001d8: 4281         	cmp	r1, r0
100001da: d002         	beq	0x100001e2 <__stext+0x22> @ imm = #0x4
100001dc: ca08         	ldm	r2!, {r3}
100001de: c008         	stm	r0!, {r3}
100001e0: e7fa         	b	0x100001d8 <__stext+0x18> @ imm = #-0xc
100001e2: f000 fa07    	bl	0x100005f4 <main>       @ imm = #0x40e
100001e6: de00         	udf	#0x0

100001e8 <$d.10>:
100001e8: 40 01 00 20  	.word	0x20000140
100001ec: 54 41 00 20  	.word	0x20004154
100001f0: 00 00 00 20  	.word	0x20000000
100001f4: 28 01 00 20  	.word	0x20000128
100001f8: 98 3b 00 10  	.word	0x10003b98

100001fc <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845>:
100001fc: b5f0         	push	{r4, r5, r6, r7, lr}
100001fe: af03         	add	r7, sp, #0xc
10000200: b091         	sub	sp, #0x44
10000202: 9102         	str	r1, [sp, #0x8]
10000204: 9005         	str	r0, [sp, #0x14]
10000206: 261f         	movs	r6, #0x1f
10000208: 43f0         	mvns	r0, r6
1000020a: 9203         	str	r2, [sp, #0xc]
1000020c: 6c51         	ldr	r1, [r2, #0x44]
1000020e: 9104         	str	r1, [sp, #0x10]
10000210: 3921         	subs	r1, #0x21
10000212: 4281         	cmp	r1, r0
10000214: d31e         	blo	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #0x3c
10000216: 9803         	ldr	r0, [sp, #0xc]
10000218: 3048         	adds	r0, #0x48
1000021a: 2100         	movs	r1, #0x0
1000021c: 9101         	str	r1, [sp, #0x4]
1000021e: 43cc         	mvns	r4, r1
10000220: 9a04         	ldr	r2, [sp, #0x10]
10000222: 2a20         	cmp	r2, #0x20
10000224: d203         	bhs	0x1000022e <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x32> @ imm = #0x6
10000226: 4611         	mov	r1, r2
10000228: 4031         	ands	r1, r6
1000022a: 408c         	lsls	r4, r1
1000022c: 43e4         	mvns	r4, r4
1000022e: 9902         	ldr	r1, [sp, #0x8]
10000230: 6809         	ldr	r1, [r1]
10000232: 9109         	str	r1, [sp, #0x24]
10000234: 7801         	ldrb	r1, [r0]
10000236: 2900         	cmp	r1, #0x0
10000238: 9407         	str	r4, [sp, #0x1c]
1000023a: d010         	beq	0x1000025e <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x62> @ imm = #0x20
1000023c: 7845         	ldrb	r5, [r0, #0x1]
1000023e: 2020         	movs	r0, #0x20
10000240: 1a80         	subs	r0, r0, r2
10000242: 42a8         	cmp	r0, r5
10000244: d306         	blo	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #0xc
10000246: 4628         	mov	r0, r5
10000248: 4030         	ands	r0, r6
1000024a: 4621         	mov	r1, r4
1000024c: 4081         	lsls	r1, r0
1000024e: 9809         	ldr	r0, [sp, #0x24]
10000250: 4201         	tst	r1, r0
10000252: d045         	beq	0x100002e0 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xe4> @ imm = #0x8a
10000254: 2002         	movs	r0, #0x2
10000256: 9905         	ldr	r1, [sp, #0x14]
10000258: 7008         	strb	r0, [r1]
1000025a: b011         	add	sp, #0x44
1000025c: bdf0         	pop	{r4, r5, r6, r7, pc}
1000025e: 2020         	movs	r0, #0x20
10000260: 1a80         	subs	r0, r0, r2
10000262: 2301         	movs	r3, #0x1
10000264: e00b         	b	0x1000027e <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x82> @ imm = #0x16
10000266: 1edb         	subs	r3, r3, #0x3
10000268: 1e59         	subs	r1, r3, #0x1
1000026a: 418b         	sbcs	r3, r1
1000026c: 4611         	mov	r1, r2
1000026e: 4031         	ands	r1, r6
10000270: 9c07         	ldr	r4, [sp, #0x1c]
10000272: 408c         	lsls	r4, r1
10000274: 9909         	ldr	r1, [sp, #0x24]
10000276: 420c         	tst	r4, r1
10000278: 9c07         	ldr	r4, [sp, #0x1c]
1000027a: 4615         	mov	r5, r2
1000027c: d02d         	beq	0x100002da <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xde> @ imm = #0x5a
1000027e: 07d9         	lsls	r1, r3, #0x1f
10000280: d0e8         	beq	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #-0x30
10000282: b2c3         	uxtb	r3, r0
10000284: 1e5d         	subs	r5, r3, #0x1
10000286: d200         	bhs	0x1000028a <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x8e> @ imm = #0x0
10000288: 9d01         	ldr	r5, [sp, #0x4]
1000028a: 4601         	mov	r1, r0
1000028c: 4031         	ands	r1, r6
1000028e: 4622         	mov	r2, r4
10000290: 408a         	lsls	r2, r1
10000292: 9909         	ldr	r1, [sp, #0x24]
10000294: 420a         	tst	r2, r1
10000296: d01f         	beq	0x100002d8 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xdc> @ imm = #0x3e
10000298: 0600         	lsls	r0, r0, #0x18
1000029a: d0db         	beq	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #-0x4a
1000029c: 1e98         	subs	r0, r3, #0x2
1000029e: d200         	bhs	0x100002a2 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xa6> @ imm = #0x0
100002a0: 2000         	movs	r0, #0x0
100002a2: 4629         	mov	r1, r5
100002a4: 4031         	ands	r1, r6
100002a6: 4622         	mov	r2, r4
100002a8: 408a         	lsls	r2, r1
100002aa: 9909         	ldr	r1, [sp, #0x24]
100002ac: 420a         	tst	r2, r1
100002ae: d014         	beq	0x100002da <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xde> @ imm = #0x28
100002b0: 2b02         	cmp	r3, #0x2
100002b2: d3cf         	blo	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #-0x62
100002b4: 1eda         	subs	r2, r3, #0x3
100002b6: d200         	bhs	0x100002ba <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xbe> @ imm = #0x0
100002b8: 2200         	movs	r2, #0x0
100002ba: 4601         	mov	r1, r0
100002bc: 4031         	ands	r1, r6
100002be: 9c07         	ldr	r4, [sp, #0x1c]
100002c0: 408c         	lsls	r4, r1
100002c2: 9909         	ldr	r1, [sp, #0x24]
100002c4: 420c         	tst	r4, r1
100002c6: 9c07         	ldr	r4, [sp, #0x1c]
100002c8: 4605         	mov	r5, r0
100002ca: d006         	beq	0x100002da <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xde> @ imm = #0xc
100002cc: 2b03         	cmp	r3, #0x3
100002ce: d3c1         	blo	0x10000254 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x58> @ imm = #-0x7e
100002d0: 1f18         	subs	r0, r3, #0x4
100002d2: d2c8         	bhs	0x10000266 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x6a> @ imm = #-0x70
100002d4: 2000         	movs	r0, #0x0
100002d6: e7c6         	b	0x10000266 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x6a> @ imm = #-0x74
100002d8: 4605         	mov	r5, r0
100002da: 9804         	ldr	r0, [sp, #0x10]
100002dc: 2800         	cmp	r0, #0x0
100002de: d02a         	beq	0x10000336 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x13a> @ imm = #0x54
100002e0: 960a         	str	r6, [sp, #0x28]
100002e2: 9506         	str	r5, [sp, #0x18]
100002e4: b2eb         	uxtb	r3, r5
100002e6: 009c         	lsls	r4, r3, #0x2
100002e8: 4d29         	ldr	r5, [pc, #0xa4]         @ 0x10000390 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x194>
100002ea: 2b20         	cmp	r3, #0x20
100002ec: 4619         	mov	r1, r3
100002ee: d300         	blo	0x100002f2 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0xf6> @ imm = #0x0
100002f0: 2320         	movs	r3, #0x20
100002f2: 9803         	ldr	r0, [sp, #0xc]
100002f4: 1d02         	adds	r2, r0, #0x4
100002f6: 1966         	adds	r6, r4, r5
100002f8: 3b20         	subs	r3, #0x20
100002fa: 9d04         	ldr	r5, [sp, #0x10]
100002fc: 4608         	mov	r0, r1
100002fe: 8814         	ldrh	r4, [r2]
10000300: 0b61         	lsrs	r1, r4, #0xd
10000302: d10c         	bne	0x1000031e <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x122> @ imm = #0x18
10000304: 9008         	str	r0, [sp, #0x20]
10000306: 4621         	mov	r1, r4
10000308: 980a         	ldr	r0, [sp, #0x28]
1000030a: 4001         	ands	r1, r0
1000030c: 9806         	ldr	r0, [sp, #0x18]
1000030e: 1809         	adds	r1, r1, r0
10000310: b2c9         	uxtb	r1, r1
10000312: 2920         	cmp	r1, #0x20
10000314: d22e         	bhs	0x10000374 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x178> @ imm = #0x5c
10000316: 980a         	ldr	r0, [sp, #0x28]
10000318: 4384         	bics	r4, r0
1000031a: 430c         	orrs	r4, r1
1000031c: 9808         	ldr	r0, [sp, #0x20]
1000031e: 2b00         	cmp	r3, #0x0
10000320: d023         	beq	0x1000036a <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x16e> @ imm = #0x46
10000322: c610         	stm	r6!, {r4}
10000324: 1c40         	adds	r0, r0, #0x1
10000326: 1e6d         	subs	r5, r5, #0x1
10000328: 1c92         	adds	r2, r2, #0x2
1000032a: 1c5b         	adds	r3, r3, #0x1
1000032c: 2d00         	cmp	r5, #0x0
1000032e: d1e6         	bne	0x100002fe <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x102> @ imm = #-0x34
10000330: 9e0a         	ldr	r6, [sp, #0x28]
10000332: 9c07         	ldr	r4, [sp, #0x1c]
10000334: 9d06         	ldr	r5, [sp, #0x18]
10000336: 9a05         	ldr	r2, [sp, #0x14]
10000338: 9804         	ldr	r0, [sp, #0x10]
1000033a: 7150         	strb	r0, [r2, #0x5]
1000033c: 7115         	strb	r5, [r2, #0x4]
1000033e: 9b03         	ldr	r3, [sp, #0xc]
10000340: 6818         	ldr	r0, [r3]
10000342: 334a         	adds	r3, #0x4a
10000344: 7010         	strb	r0, [r2]
10000346: 7859         	ldrb	r1, [r3, #0x1]
10000348: 71d1         	strb	r1, [r2, #0x7]
1000034a: 7819         	ldrb	r1, [r3]
1000034c: 7191         	strb	r1, [r2, #0x6]
1000034e: 0e01         	lsrs	r1, r0, #0x18
10000350: 70d1         	strb	r1, [r2, #0x3]
10000352: 0c01         	lsrs	r1, r0, #0x10
10000354: 7091         	strb	r1, [r2, #0x2]
10000356: 0a00         	lsrs	r0, r0, #0x8
10000358: 7050         	strb	r0, [r2, #0x1]
1000035a: 402e         	ands	r6, r5
1000035c: 40b4         	lsls	r4, r6
1000035e: 9809         	ldr	r0, [sp, #0x24]
10000360: 4304         	orrs	r4, r0
10000362: 9802         	ldr	r0, [sp, #0x8]
10000364: 6004         	str	r4, [r0]
10000366: b011         	add	sp, #0x44
10000368: bdf0         	pop	{r4, r5, r6, r7, pc}
1000036a: 2120         	movs	r1, #0x20
1000036c: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x100003a0 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x1a4>
1000036e: f001 fd3d    	bl	0x10001dec <core::panicking::panic_bounds_check::h324c9df020fc5d5d> @ imm = #0x1a7a
10000372: defe         	trap
10000374: 9901         	ldr	r1, [sp, #0x4]
10000376: 910f         	str	r1, [sp, #0x3c]
10000378: 2001         	movs	r0, #0x1
1000037a: 900c         	str	r0, [sp, #0x30]
1000037c: 4805         	ldr	r0, [pc, #0x14]         @ 0x10000394 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x198>
1000037e: 900b         	str	r0, [sp, #0x2c]
10000380: 910e         	str	r1, [sp, #0x38]
10000382: 4805         	ldr	r0, [pc, #0x14]         @ 0x10000398 <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x19c>
10000384: 900d         	str	r0, [sp, #0x34]
10000386: a80b         	add	r0, sp, #0x2c
10000388: 4904         	ldr	r1, [pc, #0x10]         @ 0x1000039c <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845+0x1a0>
1000038a: f001 fd05    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x1a0a
1000038e: defe         	trap

10000390 <$d.1>:
10000390: 48 00 20 50  	.word	0x50200048
10000394: 44 34 00 10  	.word	0x10003444
10000398: 4c 34 00 10  	.word	0x1000344c
1000039c: 4c 34 00 10  	.word	0x1000344c
100003a0: 00 34 00 10  	.word	0x10003400

100003a4 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282>:
100003a4: b5f0         	push	{r4, r5, r6, r7, lr}
100003a6: af03         	add	r7, sp, #0xc
100003a8: b087         	sub	sp, #0x1c
100003aa: 460c         	mov	r4, r1
100003ac: 2103         	movs	r1, #0x3
100003ae: 0309         	lsls	r1, r1, #0xc
100003b0: 2601         	movs	r6, #0x1
100003b2: 5056         	str	r6, [r2, r1]
100003b4: 89a1         	ldrh	r1, [r4, #0xc]
100003b6: 0409         	lsls	r1, r1, #0x10
100003b8: 7ba5         	ldrb	r5, [r4, #0xe]
100003ba: 022d         	lsls	r5, r5, #0x8
100003bc: 1869         	adds	r1, r5, r1
100003be: 6019         	str	r1, [r3]
100003c0: 7821         	ldrb	r1, [r4]
100003c2: 251f         	movs	r5, #0x1f
100003c4: 2900         	cmp	r1, #0x0
100003c6: 9204         	str	r2, [sp, #0x10]
100003c8: 9003         	str	r0, [sp, #0xc]
100003ca: 9502         	str	r5, [sp, #0x8]
100003cc: d001         	beq	0x100003d2 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x2e> @ imm = #0x2
100003ce: 4942         	ldr	r1, [pc, #0x108]        @ 0x100004d8 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x134>
100003d0: e000         	b	0x100003d4 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x30> @ imm = #0x0
100003d2: 0329         	lsls	r1, r5, #0xc
100003d4: 7862         	ldrb	r2, [r4, #0x1]
100003d6: 0752         	lsls	r2, r2, #0x1d
100003d8: 430a         	orrs	r2, r1
100003da: 7da1         	ldrb	r1, [r4, #0x16]
100003dc: 06c9         	lsls	r1, r1, #0x1b
100003de: 08c9         	lsrs	r1, r1, #0x3
100003e0: 1889         	adds	r1, r1, r2
100003e2: 7920         	ldrb	r0, [r4, #0x4]
100003e4: 04b5         	lsls	r5, r6, #0x12
100003e6: 7a22         	ldrb	r2, [r4, #0x8]
100003e8: 2a00         	cmp	r2, #0x0
100003ea: d005         	beq	0x100003f8 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x54> @ imm = #0xa
100003ec: 7a62         	ldrb	r2, [r4, #0x9]
100003ee: 06d2         	lsls	r2, r2, #0x1b
100003f0: 0a12         	lsrs	r2, r2, #0x8
100003f2: 430a         	orrs	r2, r1
100003f4: 432a         	orrs	r2, r5
100003f6: e000         	b	0x100003fa <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x56> @ imm = #0x0
100003f8: 460a         	mov	r2, r1
100003fa: 4938         	ldr	r1, [pc, #0xe0]         @ 0x100004dc <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x138>
100003fc: 4011         	ands	r1, r2
100003fe: 7c22         	ldrb	r2, [r4, #0x10]
10000400: 0452         	lsls	r2, r2, #0x11
10000402: 430a         	orrs	r2, r1
10000404: 79a1         	ldrb	r1, [r4, #0x6]
10000406: 1809         	adds	r1, r1, r0
10000408: 06c9         	lsls	r1, r1, #0x1b
1000040a: 0bc9         	lsrs	r1, r1, #0xf
1000040c: 1889         	adds	r1, r1, r2
1000040e: 79e2         	ldrb	r2, [r4, #0x7]
10000410: 1812         	adds	r2, r2, r0
10000412: 06d2         	lsls	r2, r2, #0x1b
10000414: 0d12         	lsrs	r2, r2, #0x14
10000416: 1851         	adds	r1, r2, r1
10000418: 7aa2         	ldrb	r2, [r4, #0xa]
1000041a: 0112         	lsls	r2, r2, #0x4
1000041c: 430a         	orrs	r2, r1
1000041e: 7ae1         	ldrb	r1, [r4, #0xb]
10000420: 9001         	str	r0, [sp, #0x4]
10000422: 200f         	movs	r0, #0xf
10000424: 4008         	ands	r0, r1
10000426: 1810         	adds	r0, r2, r0
10000428: 6058         	str	r0, [r3, #0x4]
1000042a: 7ca1         	ldrb	r1, [r4, #0x12]
1000042c: 2900         	cmp	r1, #0x0
1000042e: d100         	bne	0x10000432 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282+0x8e> @ imm = #0x0
10000430: 460d         	mov	r5, r1
10000432: 7d60         	ldrb	r0, [r4, #0x15]
10000434: 0780         	lsls	r0, r0, #0x1e
10000436: 7de1         	ldrb	r1, [r4, #0x17]
10000438: 06c9         	lsls	r1, r1, #0x1b
1000043a: 0889         	lsrs	r1, r1, #0x2
1000043c: 1808         	adds	r0, r1, r0
1000043e: 7e21         	ldrb	r1, [r4, #0x18]
10000440: 06c9         	lsls	r1, r1, #0x1b
10000442: 09c9         	lsrs	r1, r1, #0x7
10000444: 1808         	adds	r0, r1, r0
10000446: 7c61         	ldrb	r1, [r4, #0x11]
10000448: 04c9         	lsls	r1, r1, #0x13
1000044a: 4301         	orrs	r1, r0
1000044c: 1948         	adds	r0, r1, r5
1000044e: 7ce1         	ldrb	r1, [r4, #0x13]
10000450: 0449         	lsls	r1, r1, #0x11
10000452: 4301         	orrs	r1, r0
10000454: 7d20         	ldrb	r0, [r4, #0x14]
10000456: 0400         	lsls	r0, r0, #0x10
10000458: 4308         	orrs	r0, r1
1000045a: 6098         	str	r0, [r3, #0x8]
1000045c: 7fa2         	ldrb	r2, [r4, #0x1e]
1000045e: 9802         	ldr	r0, [sp, #0x8]
10000460: 4002         	ands	r2, r0
10000462: 78a0         	ldrb	r0, [r4, #0x2]
10000464: 0740         	lsls	r0, r0, #0x1d
10000466: 7e61         	ldrb	r1, [r4, #0x19]
10000468: 0749         	lsls	r1, r1, #0x1d
1000046a: 08c9         	lsrs	r1, r1, #0x3
1000046c: 1808         	adds	r0, r1, r0
1000046e: 7ea1         	ldrb	r1, [r4, #0x1a]
10000470: 0689         	lsls	r1, r1, #0x1a
10000472: 0989         	lsrs	r1, r1, #0x6
10000474: 1808         	adds	r0, r1, r0
10000476: 7ee1         	ldrb	r1, [r4, #0x1b]
10000478: 06c9         	lsls	r1, r1, #0x1b
1000047a: 0b09         	lsrs	r1, r1, #0xc
1000047c: 1808         	adds	r0, r1, r0
1000047e: 7f21         	ldrb	r1, [r4, #0x1c]
10000480: 06c9         	lsls	r1, r1, #0x1b
10000482: 0c49         	lsrs	r1, r1, #0x11
10000484: 1808         	adds	r0, r1, r0
10000486: 7f61         	ldrb	r1, [r4, #0x1d]
10000488: 06c9         	lsls	r1, r1, #0x1b
1000048a: 0d89         	lsrs	r1, r1, #0x16
1000048c: 1808         	adds	r0, r1, r0
1000048e: 4310         	orrs	r0, r2
10000490: 6158         	str	r0, [r3, #0x14]
10000492: 0370         	lsls	r0, r6, #0xd
10000494: 2110         	movs	r1, #0x10
10000496: 4632         	mov	r2, r6
10000498: 461e         	mov	r6, r3
1000049a: 9d04         	ldr	r5, [sp, #0x10]
1000049c: 5029         	str	r1, [r5, r0]
1000049e: 0211         	lsls	r1, r2, #0x8
100004a0: 5029         	str	r1, [r5, r0]
100004a2: a805         	add	r0, sp, #0x14
100004a4: 9901         	ldr	r1, [sp, #0x4]
100004a6: 7041         	strb	r1, [r0, #0x1]
100004a8: 2100         	movs	r1, #0x0
100004aa: 7081         	strb	r1, [r0, #0x2]
100004ac: 7001         	strb	r1, [r0]
100004ae: f001 fb39    	bl	0x10001b24 <pio::InstructionOperands::encode::h9ed9e01677b4311a> @ imm = #0x1672
100004b2: b280         	uxth	r0, r0
100004b4: 6130         	str	r0, [r6, #0x10]
100004b6: 88a0         	ldrh	r0, [r4, #0x4]
100004b8: 88e1         	ldrh	r1, [r4, #0x6]
100004ba: 0409         	lsls	r1, r1, #0x10
100004bc: 1808         	adds	r0, r1, r0
100004be: 8821         	ldrh	r1, [r4]
100004c0: 8862         	ldrh	r2, [r4, #0x2]
100004c2: 0412         	lsls	r2, r2, #0x10
100004c4: 1851         	adds	r1, r2, r1
100004c6: 9a03         	ldr	r2, [sp, #0xc]
100004c8: 6011         	str	r1, [r2]
100004ca: 1d11         	adds	r1, r2, #0x4
100004cc: c161         	stm	r1!, {r0, r5, r6}
100004ce: 6115         	str	r5, [r2, #0x10]
100004d0: 6155         	str	r5, [r2, #0x14]
100004d2: b007         	add	sp, #0x1c
100004d4: bdf0         	pop	{r4, r5, r6, r7, pc}
100004d6: 46c0         	mov	r8, r8

100004d8 <$d.7>:
100004d8: 00 f0 01 40  	.word	0x4001f000
100004dc: 60 00 fc ff  	.word	0xfffc0060

100004e0 <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1>:
100004e0: b580         	push	{r7, lr}
100004e2: af00         	add	r7, sp, #0x0
100004e4: b082         	sub	sp, #0x8
100004e6: 4812         	ldr	r0, [pc, #0x48]         @ 0x10000530 <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1+0x50>
100004e8: 2101         	movs	r1, #0x1
100004ea: 7001         	strb	r1, [r0]
100004ec: 4811         	ldr	r0, [pc, #0x44]         @ 0x10000534 <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1+0x54>
100004ee: 6802         	ldr	r2, [r0]
100004f0: 2a00         	cmp	r2, #0x0
100004f2: d11a         	bne	0x1000052a <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1+0x4a> @ imm = #0x34
100004f4: 68fb         	ldr	r3, [r7, #0xc]
100004f6: 68ba         	ldr	r2, [r7, #0x8]
100004f8: 2405         	movs	r4, #0x5
100004fa: 6004         	str	r4, [r0]
100004fc: 331f         	adds	r3, #0x1f
100004fe: 2410         	movs	r4, #0x10
10000500: 431c         	orrs	r4, r3
10000502: 25ef         	movs	r5, #0xef
10000504: 43ac         	bics	r4, r5
10000506: 6084         	str	r4, [r0, #0x8]
10000508: 020c         	lsls	r4, r1, #0x8
1000050a: 061b         	lsls	r3, r3, #0x18
1000050c: 0f5b         	lsrs	r3, r3, #0x1d
1000050e: 409c         	lsls	r4, r3
10000510: 4b09         	ldr	r3, [pc, #0x24]         @ 0x10000538 <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1+0x58>
10000512: 4063         	eors	r3, r4
10000514: 60c3         	str	r3, [r0, #0xc]
10000516: 6814         	ldr	r4, [r2]
10000518: 4808         	ldr	r0, [pc, #0x20]         @ 0x1000053c <rp2040_hal::multicore::Core::spawn::core1_startup::h37853fe312d3b9d1+0x5c>
1000051a: 7001         	strb	r1, [r0]
1000051c: a801         	add	r0, sp, #0x4
1000051e: f000 fee5    	bl	0x100012ec <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084> @ imm = #0xdca
10000522: 4620         	mov	r0, r4
10000524: f000 f820    	bl	0x10000568 <multicore_lockout_irq::core1_task::h05d5883d3452c8db> @ imm = #0x40
10000528: defe         	trap
1000052a: f001 fc1f    	bl	0x10001d6c <__udf>      @ imm = #0x183e
1000052e: defe         	trap

10000530 <$d.1>:
10000530: 51 41 00 20  	.word	0x20004151
10000534: 94 ed 00 e0  	.word	0xe000ed94
10000538: 0f ff 00 10  	.word	0x1000ff0f
1000053c: 50 41 00 20  	.word	0x20004150

10000540 <<&T as core::fmt::Display>::fmt::he37dd48b6390a6de>:
10000540: b580         	push	{r7, lr}
10000542: af00         	add	r7, sp, #0x0
10000544: 460a         	mov	r2, r1
10000546: 6803         	ldr	r3, [r0]
10000548: 6841         	ldr	r1, [r0, #0x4]
1000054a: 4618         	mov	r0, r3
1000054c: f001 fffc    	bl	0x10002548 <<str as core::fmt::Display>::fmt::h7d7adb2d9533cabe> @ imm = #0x1ff8
10000550: bd80         	pop	{r7, pc}

10000552 <core::ptr::drop_in_place<rp2040_hal::pio::InstallError>::hd885665872b7a052>:
10000552: 4770         	bx	lr

10000554 <<rp2040_hal::pio::InstallError as core::fmt::Debug>::fmt::h11c6744aa990cf14>:
10000554: b580         	push	{r7, lr}
10000556: af00         	add	r7, sp, #0x0
10000558: 4608         	mov	r0, r1
1000055a: 4902         	ldr	r1, [pc, #0x8]          @ 0x10000564 <<rp2040_hal::pio::InstallError as core::fmt::Debug>::fmt::h11c6744aa990cf14+0x10>
1000055c: 2207         	movs	r2, #0x7
1000055e: f001 ffe2    	bl	0x10002526 <<core::fmt::Formatter as core::fmt::Write>::write_str::h422771b59ce6586b> @ imm = #0x1fc4
10000562: bd80         	pop	{r7, pc}

10000564 <$d.5>:
10000564: 08 32 00 10  	.word	0x10003208

10000568 <multicore_lockout_irq::core1_task::h05d5883d3452c8db>:
10000568: b580         	push	{r7, lr}
1000056a: af00         	add	r7, sp, #0x0
1000056c: b082         	sub	sp, #0x8
1000056e: 491a         	ldr	r1, [pc, #0x68]         @ 0x100005d8 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x70>
10000570: 2401         	movs	r4, #0x1
10000572: 700c         	strb	r4, [r1]
10000574: 4919         	ldr	r1, [pc, #0x64]         @ 0x100005dc <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x74>
10000576: 700c         	strb	r4, [r1]
10000578: 4919         	ldr	r1, [pc, #0x64]         @ 0x100005e0 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x78>
1000057a: 680a         	ldr	r2, [r1]
1000057c: 2304         	movs	r3, #0x4
1000057e: 4313         	orrs	r3, r2
10000580: 600b         	str	r3, [r1]
10000582: 9000         	str	r0, [sp]
10000584: 4e1a         	ldr	r6, [pc, #0x68]         @ 0x100005f0 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x88>
10000586: e008         	b	0x1000059a <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x32> @ imm = #0x10
10000588: 4668         	mov	r0, sp
1000058a: 4631         	mov	r1, r6
1000058c: f001 fb76    	bl	0x10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238> @ imm = #0x16ec
10000590: 2021         	movs	r0, #0x21
10000592: 0241         	lsls	r1, r0, #0x9
10000594: a801         	add	r0, sp, #0x4
10000596: f000 fea9    	bl	0x100012ec <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084> @ imm = #0xd52
1000059a: 466d         	mov	r5, sp
1000059c: 4628         	mov	r0, r5
1000059e: 4911         	ldr	r1, [pc, #0x44]         @ 0x100005e4 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x7c>
100005a0: f001 fb6c    	bl	0x10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238> @ imm = #0x16d8
100005a4: a801         	add	r0, sp, #0x4
100005a6: 2169         	movs	r1, #0x69
100005a8: f000 fea0    	bl	0x100012ec <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084> @ imm = #0xd40
100005ac: 4628         	mov	r0, r5
100005ae: 490e         	ldr	r1, [pc, #0x38]         @ 0x100005e8 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x80>
100005b0: f001 fb64    	bl	0x10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238> @ imm = #0x16c8
100005b4: f001 fbd5    	bl	0x10001d62 <__primask_r> @ imm = #0x17aa
100005b8: 4605         	mov	r5, r0
100005ba: f001 fbc7    	bl	0x10001d4c <__cpsid>    @ imm = #0x178e
100005be: 2019         	movs	r0, #0x19
100005c0: 0380         	lsls	r0, r0, #0xe
100005c2: 0222         	lsls	r2, r4, #0x8
100005c4: 4909         	ldr	r1, [pc, #0x24]         @ 0x100005ec <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x84>
100005c6: 4623         	mov	r3, r4
100005c8: f000 fbe6    	bl	0x10000d98 <rp2040_flash::flash::flash_range_program::hca4b43b1283ad4a5> @ imm = #0x7cc
100005cc: 07e8         	lsls	r0, r5, #0x1f
100005ce: d1db         	bne	0x10000588 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x20> @ imm = #-0x4a
100005d0: f001 fbbe    	bl	0x10001d50 <__cpsie>    @ imm = #0x177c
100005d4: e7d8         	b	0x10000588 <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x20> @ imm = #-0x50
100005d6: 46c0         	mov	r8, r8

100005d8 <$d.10>:
100005d8: 51 41 00 20  	.word	0x20004151
100005dc: 50 41 00 20  	.word	0x20004150
100005e0: 10 e0 00 e0  	.word	0xe000e010
100005e4: c0 c6 2d 00  	.word	0x002dc6c0
100005e8: a0 86 01 00  	.word	0x000186a0
100005ec: 24 32 00 10  	.word	0x10003224
100005f0: a0 bb 0d 00  	.word	0x000dbba0

100005f4 <main>:
100005f4: b580         	push	{r7, lr}
100005f6: af00         	add	r7, sp, #0x0
100005f8: f000 f802    	bl	0x10000600 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f> @ imm = #0x4
100005fc: defe         	trap
100005fe: d4d4         	bmi	0x100005aa <multicore_lockout_irq::core1_task::h05d5883d3452c8db+0x42> @ imm = #-0x58

10000600 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f>:
10000600: b5f0         	push	{r4, r5, r6, r7, lr}
10000602: af03         	add	r7, sp, #0xc
10000604: b0ff         	sub	sp, #0x1fc
10000606: b0fc         	sub	sp, #0x1f0
10000608: 466c         	mov	r4, sp
1000060a: 0a24         	lsrs	r4, r4, #0x8
1000060c: 0224         	lsls	r4, r4, #0x8
1000060e: 46a5         	mov	sp, r4
10000610: 48dd         	ldr	r0, [pc, #0x374]        @ 0x10000988 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x388>
10000612: 2501         	movs	r5, #0x1
10000614: 6005         	str	r5, [r0]
10000616: 6045         	str	r5, [r0, #0x4]
10000618: 6085         	str	r5, [r0, #0x8]
1000061a: 60c5         	str	r5, [r0, #0xc]
1000061c: 6105         	str	r5, [r0, #0x10]
1000061e: 6145         	str	r5, [r0, #0x14]
10000620: 6185         	str	r5, [r0, #0x18]
10000622: 61c5         	str	r5, [r0, #0x1c]
10000624: 6205         	str	r5, [r0, #0x20]
10000626: 6245         	str	r5, [r0, #0x24]
10000628: 6285         	str	r5, [r0, #0x28]
1000062a: 62c5         	str	r5, [r0, #0x2c]
1000062c: 6305         	str	r5, [r0, #0x30]
1000062e: 6345         	str	r5, [r0, #0x34]
10000630: 6385         	str	r5, [r0, #0x38]
10000632: 63c5         	str	r5, [r0, #0x3c]
10000634: 6405         	str	r5, [r0, #0x40]
10000636: 6445         	str	r5, [r0, #0x44]
10000638: 6485         	str	r5, [r0, #0x48]
1000063a: 64c5         	str	r5, [r0, #0x4c]
1000063c: 6505         	str	r5, [r0, #0x50]
1000063e: 6545         	str	r5, [r0, #0x54]
10000640: 6585         	str	r5, [r0, #0x58]
10000642: 65c5         	str	r5, [r0, #0x5c]
10000644: 6605         	str	r5, [r0, #0x60]
10000646: 6645         	str	r5, [r0, #0x64]
10000648: 6685         	str	r5, [r0, #0x68]
1000064a: 66c5         	str	r5, [r0, #0x6c]
1000064c: 6705         	str	r5, [r0, #0x70]
1000064e: 6745         	str	r5, [r0, #0x74]
10000650: 6785         	str	r5, [r0, #0x78]
10000652: 67c5         	str	r5, [r0, #0x7c]
10000654: f001 f920    	bl	0x10001898 <_critical_section_1_0_acquire> @ imm = #0x1240
10000658: 49cc         	ldr	r1, [pc, #0x330]        @ 0x1000098c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x38c>
1000065a: 780a         	ldrb	r2, [r1]
1000065c: 2a00         	cmp	r2, #0x0
1000065e: d000         	beq	0x10000662 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x62> @ imm = #0x0
10000660: e265         	b	0x10000b2e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x52e> @ imm = #0x4ca
10000662: 700d         	strb	r5, [r1]
10000664: f001 f964    	bl	0x10001930 <_critical_section_1_0_release> @ imm = #0x12c8
10000668: ac40         	add	r4, sp, #0x100
1000066a: 21c0         	movs	r1, #0xc0
1000066c: 4620         	mov	r0, r4
1000066e: 913d         	str	r1, [sp, #0xf4]
10000670: f001 f990    	bl	0x10001994 <__aeabi_memclr8> @ imm = #0x1320
10000674: aefa         	add	r6, sp, #0x3e8
10000676: 4620         	mov	r0, r4
10000678: 4631         	mov	r1, r6
1000067a: f001 f87b    	bl	0x10001774 <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03> @ imm = #0x10f6
1000067e: 210f         	movs	r1, #0xf
10000680: 4ac3         	ldr	r2, [pc, #0x30c]        @ 0x10000990 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x390>
10000682: 4620         	mov	r0, r4
10000684: f001 f894    	bl	0x100017b0 <rp2040_hal::vector_table::VectorTable::register_handler::he1049bb3bf2b2382> @ imm = #0x1128
10000688: 4620         	mov	r0, r4
1000068a: 4631         	mov	r1, r6
1000068c: f001 f8a2    	bl	0x100017d4 <rp2040_hal::vector_table::VectorTable::activate::he3b0380a25309eed> @ imm = #0x1144
10000690: f001 fb67    	bl	0x10001d62 <__primask_r> @ imm = #0x16ce
10000694: 4604         	mov	r4, r0
10000696: 402c         	ands	r4, r5
10000698: f001 fb58    	bl	0x10001d4c <__cpsid>    @ imm = #0x16b0
1000069c: 48bd         	ldr	r0, [pc, #0x2f4]        @ 0x10000994 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x394>
1000069e: 7806         	ldrb	r6, [r0]
100006a0: 2e00         	cmp	r6, #0x0
100006a2: d100         	bne	0x100006a6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xa6> @ imm = #0x0
100006a4: e22d         	b	0x10000b02 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x502> @ imm = #0x45a
100006a6: 2c00         	cmp	r4, #0x0
100006a8: d100         	bne	0x100006ac <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xac> @ imm = #0x0
100006aa: e22f         	b	0x10000b0c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x50c> @ imm = #0x45e
100006ac: 2e00         	cmp	r6, #0x0
100006ae: d000         	beq	0x100006b2 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xb2> @ imm = #0x0
100006b0: e231         	b	0x10000b16 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x516> @ imm = #0x462
100006b2: 2000         	movs	r0, #0x0
100006b4: 903c         	str	r0, [sp, #0xf0]
100006b6: 9088         	str	r0, [sp, #0x220]
100006b8: ac95         	add	r4, sp, #0x254
100006ba: 49b7         	ldr	r1, [pc, #0x2dc]        @ 0x10000998 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x398>
100006bc: aafa         	add	r2, sp, #0x3e8
100006be: ab88         	add	r3, sp, #0x220
100006c0: 4620         	mov	r0, r4
100006c2: f000 fcf7    	bl	0x100010b4 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3> @ imm = #0x9ee
100006c6: 7820         	ldrb	r0, [r4]
100006c8: 2800         	cmp	r0, #0x0
100006ca: d000         	beq	0x100006ce <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xce> @ imm = #0x0
100006cc: e237         	b	0x10000b3e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x53e> @ imm = #0x46e
100006ce: a895         	add	r0, sp, #0x254
100006d0: 1d00         	adds	r0, r0, #0x4
100006d2: a989         	add	r1, sp, #0x224
100006d4: 913f         	str	r1, [sp, #0xfc]
100006d6: c81c         	ldm	r0!, {r2, r3, r4}
100006d8: c11c         	stm	r1!, {r2, r3, r4}
100006da: c81c         	ldm	r0!, {r2, r3, r4}
100006dc: c11c         	stm	r1!, {r2, r3, r4}
100006de: c85c         	ldm	r0!, {r2, r3, r4, r6}
100006e0: c15c         	stm	r1!, {r2, r3, r4, r6}
100006e2: acfa         	add	r4, sp, #0x3e8
100006e4: 4620         	mov	r0, r4
100006e6: f001 f87b    	bl	0x100017e0 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8> @ imm = #0x10f6
100006ea: 4620         	mov	r0, r4
100006ec: 993f         	ldr	r1, [sp, #0xfc]
100006ee: f000 fe21    	bl	0x10001334 <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f> @ imm = #0xc42
100006f2: 988e         	ldr	r0, [sp, #0x238]
100006f4: 49a9         	ldr	r1, [pc, #0x2a4]        @ 0x1000099c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x39c>
100006f6: 680a         	ldr	r2, [r1]
100006f8: 2304         	movs	r3, #0x4
100006fa: 4313         	orrs	r3, r2
100006fc: 600b         	str	r3, [r1]
100006fe: 9093         	str	r0, [sp, #0x24c]
10000700: 4620         	mov	r0, r4
10000702: 4621         	mov	r1, r4
10000704: f000 fd9a    	bl	0x1000123c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_down::h7d7e5a2708d8b557> @ imm = #0xb34
10000708: 4620         	mov	r0, r4
1000070a: 4621         	mov	r1, r4
1000070c: f000 fd7e    	bl	0x1000120c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c> @ imm = #0xafc
10000710: 983c         	ldr	r0, [sp, #0xf0]
10000712: 9094         	str	r0, [sp, #0x250]
10000714: 48a2         	ldr	r0, [pc, #0x288]        @ 0x100009a0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3a0>
10000716: 6801         	ldr	r1, [r0]
10000718: 2206         	movs	r2, #0x6
1000071a: 430a         	orrs	r2, r1
1000071c: 2619         	movs	r6, #0x19
1000071e: 43b2         	bics	r2, r6
10000720: 6002         	str	r2, [r0]
10000722: 988f         	ldr	r0, [sp, #0x23c]
10000724: 903e         	str	r0, [sp, #0xf8]
10000726: 489f         	ldr	r0, [pc, #0x27c]        @ 0x100009a4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3a4>
10000728: 9095         	str	r0, [sp, #0x254]
1000072a: 06a8         	lsls	r0, r5, #0x1a
1000072c: 909b         	str	r0, [sp, #0x26c]
1000072e: 20ff         	movs	r0, #0xff
10000730: 3002         	adds	r0, #0x2
10000732: 909a         	str	r0, [sp, #0x268]
10000734: 489c         	ldr	r0, [pc, #0x270]        @ 0x100009a8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3a8>
10000736: 9099         	str	r0, [sp, #0x264]
10000738: 489c         	ldr	r0, [pc, #0x270]        @ 0x100009ac <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3ac>
1000073a: 9098         	str	r0, [sp, #0x260]
1000073c: 489c         	ldr	r0, [pc, #0x270]        @ 0x100009b0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3b0>
1000073e: 9097         	str	r0, [sp, #0x25c]
10000740: 489c         	ldr	r0, [pc, #0x270]        @ 0x100009b4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3b4>
10000742: 9096         	str	r0, [sp, #0x258]
10000744: 2403         	movs	r4, #0x3
10000746: 94d6         	str	r4, [sp, #0x358]
10000748: 2041         	movs	r0, #0x41
1000074a: 0080         	lsls	r0, r0, #0x2
1000074c: a995         	add	r1, sp, #0x254
1000074e: 1808         	adds	r0, r1, r0
10000750: 1d09         	adds	r1, r1, #0x4
10000752: 00ea         	lsls	r2, r5, #0x3
10000754: 188a         	adds	r2, r1, r2
10000756: 7893         	ldrb	r3, [r2, #0x2]
10000758: 2b00         	cmp	r3, #0x0
1000075a: d000         	beq	0x1000075e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x15e> @ imm = #0x0
1000075c: e1e1         	b	0x10000b22 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x522> @ imm = #0x3c2
1000075e: 1c93         	adds	r3, r2, #0x2
10000760: 785a         	ldrb	r2, [r3, #0x1]
10000762: 705c         	strb	r4, [r3, #0x1]
10000764: 2aff         	cmp	r2, #0xff
10000766: d020         	beq	0x100007aa <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1aa> @ imm = #0x40
10000768: 00d2         	lsls	r2, r2, #0x3
1000076a: 188a         	adds	r2, r1, r2
1000076c: 7893         	ldrb	r3, [r2, #0x2]
1000076e: 2b00         	cmp	r3, #0x0
10000770: d000         	beq	0x10000774 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x174> @ imm = #0x0
10000772: e1d6         	b	0x10000b22 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x522> @ imm = #0x3ac
10000774: 1c93         	adds	r3, r2, #0x2
10000776: 785a         	ldrb	r2, [r3, #0x1]
10000778: 705c         	strb	r4, [r3, #0x1]
1000077a: 2aff         	cmp	r2, #0xff
1000077c: d015         	beq	0x100007aa <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1aa> @ imm = #0x2a
1000077e: 00d2         	lsls	r2, r2, #0x3
10000780: 188a         	adds	r2, r1, r2
10000782: 7893         	ldrb	r3, [r2, #0x2]
10000784: 2b00         	cmp	r3, #0x0
10000786: d000         	beq	0x1000078a <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x18a> @ imm = #0x0
10000788: e1cb         	b	0x10000b22 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x522> @ imm = #0x396
1000078a: 1c93         	adds	r3, r2, #0x2
1000078c: 785a         	ldrb	r2, [r3, #0x1]
1000078e: 705c         	strb	r4, [r3, #0x1]
10000790: 2aff         	cmp	r2, #0xff
10000792: d00a         	beq	0x100007aa <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1aa> @ imm = #0x14
10000794: 00d2         	lsls	r2, r2, #0x3
10000796: 188a         	adds	r2, r1, r2
10000798: 7893         	ldrb	r3, [r2, #0x2]
1000079a: 2b00         	cmp	r3, #0x0
1000079c: d000         	beq	0x100007a0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1a0> @ imm = #0x0
1000079e: e1c0         	b	0x10000b22 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x522> @ imm = #0x380
100007a0: 1c92         	adds	r2, r2, #0x2
100007a2: 7855         	ldrb	r5, [r2, #0x1]
100007a4: 7054         	strb	r4, [r2, #0x1]
100007a6: 2dff         	cmp	r5, #0xff
100007a8: d1d3         	bne	0x10000752 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x152> @ imm = #-0x5a
100007aa: 963a         	str	r6, [sp, #0xe8]
100007ac: abd7         	add	r3, sp, #0x35c
100007ae: 943b         	str	r4, [sp, #0xec]
100007b0: 705c         	strb	r4, [r3, #0x1]
100007b2: 2201         	movs	r2, #0x1
100007b4: 701a         	strb	r2, [r3]
100007b6: 6803         	ldr	r3, [r0]
100007b8: 4e7f         	ldr	r6, [pc, #0x1fc]        @ 0x100009b8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3b8>
100007ba: 4c80         	ldr	r4, [pc, #0x200]        @ 0x100009bc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3bc>
100007bc: 2b20         	cmp	r3, #0x20
100007be: d300         	blo	0x100007c2 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1c2> @ imm = #0x0
100007c0: e1c3         	b	0x10000b4a <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x54a> @ imm = #0x386
100007c2: 00dd         	lsls	r5, r3, #0x3
100007c4: 514c         	str	r4, [r1, r5]
100007c6: 1949         	adds	r1, r1, r5
100007c8: 604e         	str	r6, [r1, #0x4]
100007ca: 1c5b         	adds	r3, r3, #0x1
100007cc: 6003         	str	r3, [r0]
100007ce: 9200         	str	r2, [sp]
100007d0: 983c         	ldr	r0, [sp, #0xf0]
100007d2: 9001         	str	r0, [sp, #0x4]
100007d4: add8         	add	r5, sp, #0x360
100007d6: a995         	add	r1, sp, #0x254
100007d8: 4628         	mov	r0, r5
100007da: 923f         	str	r2, [sp, #0xfc]
100007dc: f000 fa2c    	bl	0x10000c38 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324> @ imm = #0x458
100007e0: aef2         	add	r6, sp, #0x3c8
100007e2: a994         	add	r1, sp, #0x250
100007e4: 4630         	mov	r0, r6
100007e6: 462a         	mov	r2, r5
100007e8: f7ff fd08    	bl	0x100001fc <rp2040_hal::pio::PIO<P>::install::h8cf977e484f9d845> @ imm = #-0x5f0
100007ec: 7830         	ldrb	r0, [r6]
100007ee: 2802         	cmp	r0, #0x2
100007f0: d100         	bne	0x100007f4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x1f4> @ imm = #0x0
100007f2: e1b5         	b	0x10000b60 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x560> @ imm = #0x36a
100007f4: 4df9         	ldr	r5, [pc, #0x3e4]        @ 0x10000bdc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5dc>
100007f6: 9c3e         	ldr	r4, [sp, #0xf8]
100007f8: 4620         	mov	r0, r4
100007fa: 4629         	mov	r1, r5
100007fc: f000 fd28    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0xa50
10000800: 4345         	muls	r5, r0, r5
10000802: 1b64         	subs	r4, r4, r5
10000804: d200         	bhs	0x10000808 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x208> @ imm = #0x0
10000806: e1b4         	b	0x10000b72 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x572> @ imm = #0x368
10000808: 227d         	movs	r2, #0x7d
1000080a: 0192         	lsls	r2, r2, #0x6
1000080c: 923e         	str	r2, [sp, #0xf8]
1000080e: 1e42         	subs	r2, r0, #0x1
10000810: 0c12         	lsrs	r2, r2, #0x10
10000812: 9a3f         	ldr	r2, [sp, #0xfc]
10000814: d000         	beq	0x10000818 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x218> @ imm = #0x0
10000816: e1ba         	b	0x10000b8e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x58e> @ imm = #0x374
10000818: 99f3         	ldr	r1, [sp, #0x3cc]
1000081a: 9138         	str	r1, [sp, #0xe0]
1000081c: 99f2         	ldr	r1, [sp, #0x3c8]
1000081e: 9139         	str	r1, [sp, #0xe4]
10000820: 4611         	mov	r1, r2
10000822: 0416         	lsls	r6, r2, #0x10
10000824: adf2         	add	r5, sp, #0x3c8
10000826: 9b3c         	ldr	r3, [sp, #0xf0]
10000828: 74ab         	strb	r3, [r5, #0x12]
1000082a: 746b         	strb	r3, [r5, #0x11]
1000082c: 742b         	strb	r3, [r5, #0x10]
1000082e: 73eb         	strb	r3, [r5, #0xf]
10000830: 77ab         	strb	r3, [r5, #0x1e]
10000832: 2210         	movs	r2, #0x10
10000834: 83aa         	strh	r2, [r5, #0x1c]
10000836: 74e9         	strb	r1, [r5, #0x13]
10000838: 81a8         	strh	r0, [r5, #0xc]
1000083a: 816b         	strh	r3, [r5, #0xa]
1000083c: 722b         	strb	r3, [r5, #0x8]
1000083e: 0220         	lsls	r0, r4, #0x8
10000840: 49e6         	ldr	r1, [pc, #0x398]        @ 0x10000bdc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5dc>
10000842: f000 fd05    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0xa0a
10000846: 73a8         	strb	r0, [r5, #0xe]
10000848: 9838         	ldr	r0, [sp, #0xe0]
1000084a: 90f3         	str	r0, [sp, #0x3cc]
1000084c: 9839         	ldr	r0, [sp, #0xe4]
1000084e: 90f2         	str	r0, [sp, #0x3c8]
10000850: 2005         	movs	r0, #0x5
10000852: 0200         	lsls	r0, r0, #0x8
10000854: 90f8         	str	r0, [sp, #0x3e0]
10000856: 48e5         	ldr	r0, [pc, #0x394]        @ 0x10000bec <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5ec>
10000858: 90f7         	str	r0, [sp, #0x3dc]
1000085a: 4ae5         	ldr	r2, [pc, #0x394]        @ 0x10000bf0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5f0>
1000085c: 4613         	mov	r3, r2
1000085e: 33c8         	adds	r3, #0xc8
10000860: a8ec         	add	r0, sp, #0x3b0
10000862: 4629         	mov	r1, r5
10000864: f7ff fd9e    	bl	0x100003a4 <rp2040_hal::pio::PIOBuilder<P>::build::hc67a5ea3c15ff282> @ imm = #-0x4c4
10000868: 9df1         	ldr	r5, [sp, #0x3c4]
1000086a: 98ee         	ldr	r0, [sp, #0x3b8]
1000086c: 9039         	str	r0, [sp, #0xe4]
1000086e: 9cef         	ldr	r4, [sp, #0x3bc]
10000870: 48e0         	ldr	r0, [pc, #0x380]        @ 0x10000bf4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5f4>
10000872: f001 f957    	bl	0x10001b24 <pio::InstructionOperands::encode::h9ed9e01677b4311a> @ imm = #0x12ae
10000876: 9038         	str	r0, [sp, #0xe0]
10000878: 48df         	ldr	r0, [pc, #0x37c]        @ 0x10000bf8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5f8>
1000087a: f001 f953    	bl	0x10001b24 <pio::InstructionOperands::encode::h9ed9e01677b4311a> @ imm = #0x12a6
1000087e: 6960         	ldr	r0, [r4, #0x14]
10000880: 993f         	ldr	r1, [sp, #0xfc]
10000882: 0449         	lsls	r1, r1, #0x11
10000884: 6862         	ldr	r2, [r4, #0x4]
10000886: 4613         	mov	r3, r2
10000888: 438b         	bics	r3, r1
1000088a: 6063         	str	r3, [r4, #0x4]
1000088c: 49db         	ldr	r1, [pc, #0x36c]        @ 0x10000bfc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5fc>
1000088e: 6161         	str	r1, [r4, #0x14]
10000890: 9938         	ldr	r1, [sp, #0xe0]
10000892: b289         	uxth	r1, r1
10000894: 6121         	str	r1, [r4, #0x10]
10000896: 6160         	str	r0, [r4, #0x14]
10000898: 6062         	str	r2, [r4, #0x4]
1000089a: 983e         	ldr	r0, [sp, #0xf8]
1000089c: 9939         	ldr	r1, [sp, #0xe4]
1000089e: 1840         	adds	r0, r0, r1
100008a0: 993d         	ldr	r1, [sp, #0xf4]
100008a2: 9c3f         	ldr	r4, [sp, #0xfc]
100008a4: 5044         	str	r4, [r0, r1]
100008a6: a8d7         	add	r0, sp, #0x35c
100008a8: f001 f9cc    	bl	0x10001c44 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72> @ imm = #0x1398
100008ac: 95e0         	str	r5, [sp, #0x380]
100008ae: a8fa         	add	r0, sp, #0x3e8
100008b0: 90de         	str	r0, [sp, #0x378]
100008b2: 0624         	lsls	r4, r4, #0x18
100008b4: 60ac         	str	r4, [r5, #0x8]
100008b6: 6868         	ldr	r0, [r5, #0x4]
100008b8: 4220         	tst	r0, r4
100008ba: d114         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x28
100008bc: 68a8         	ldr	r0, [r5, #0x8]
100008be: 4220         	tst	r0, r4
100008c0: d111         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x22
100008c2: 6868         	ldr	r0, [r5, #0x4]
100008c4: 4220         	tst	r0, r4
100008c6: d10e         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x1c
100008c8: 68a8         	ldr	r0, [r5, #0x8]
100008ca: 4220         	tst	r0, r4
100008cc: d10b         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x16
100008ce: 6868         	ldr	r0, [r5, #0x4]
100008d0: 4220         	tst	r0, r4
100008d2: d108         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x10
100008d4: 68a8         	ldr	r0, [r5, #0x8]
100008d6: 4220         	tst	r0, r4
100008d8: d105         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0xa
100008da: 6868         	ldr	r0, [r5, #0x4]
100008dc: 4220         	tst	r0, r4
100008de: d102         	bne	0x100008e6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2e6> @ imm = #0x4
100008e0: 68a8         	ldr	r0, [r5, #0x8]
100008e2: 4220         	tst	r0, r4
100008e4: d0e7         	beq	0x100008b6 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x2b6> @ imm = #-0x32
100008e6: 9d3c         	ldr	r5, [sp, #0xf0]
100008e8: 95dd         	str	r5, [sp, #0x374]
100008ea: 203c         	movs	r0, #0x3c
100008ec: 903e         	str	r0, [sp, #0xf8]
100008ee: 90dc         	str	r0, [sp, #0x370]
100008f0: a8fa         	add	r0, sp, #0x3e8
100008f2: f000 fd37    	bl	0x10001364 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1> @ imm = #0xa6e
100008f6: 95d9         	str	r5, [sp, #0x364]
100008f8: 9a3f         	ldr	r2, [sp, #0xfc]
100008fa: 92d8         	str	r2, [sp, #0x360]
100008fc: 303c         	adds	r0, #0x3c
100008fe: 90da         	str	r0, [sp, #0x368]
10000900: 4169         	adcs	r1, r5
10000902: 91db         	str	r1, [sp, #0x36c]
10000904: a8d8         	add	r0, sp, #0x360
10000906: f000 fd3f    	bl	0x10001388 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38> @ imm = #0xa7e
1000090a: 2800         	cmp	r0, #0x0
1000090c: d1fa         	bne	0x10000904 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x304> @ imm = #-0xc
1000090e: e001         	b	0x10000914 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x314> @ imm = #0x2
10000910: f001 fa25    	bl	0x10001d5e <__nop>      @ imm = #0x144a
10000914: 98e0         	ldr	r0, [sp, #0x380]
10000916: 6841         	ldr	r1, [r0, #0x4]
10000918: 4231         	tst	r1, r6
1000091a: d1f9         	bne	0x10000910 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x310> @ imm = #-0xe
1000091c: 993a         	ldr	r1, [sp, #0xe8]
1000091e: 0489         	lsls	r1, r1, #0x12
10000920: 6101         	str	r1, [r0, #0x10]
10000922: 988e         	ldr	r0, [sp, #0x238]
10000924: 903d         	str	r0, [sp, #0xf4]
10000926: 4db6         	ldr	r5, [pc, #0x2d8]        @ 0x10000c00 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x600>
10000928: 6828         	ldr	r0, [r5]
1000092a: 4330         	orrs	r0, r6
1000092c: 6028         	str	r0, [r5]
1000092e: 6828         	ldr	r0, [r5]
10000930: 4230         	tst	r0, r6
10000932: d104         	bne	0x1000093e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x33e> @ imm = #0x8
10000934: f001 fa13    	bl	0x10001d5e <__nop>      @ imm = #0x1426
10000938: 6828         	ldr	r0, [r5]
1000093a: 4230         	tst	r0, r6
1000093c: d0fa         	beq	0x10000934 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x334> @ imm = #-0xc
1000093e: 6828         	ldr	r0, [r5]
10000940: 43b0         	bics	r0, r6
10000942: 6028         	str	r0, [r5]
10000944: 9d3f         	ldr	r5, [sp, #0xfc]
10000946: 03a8         	lsls	r0, r5, #0xe
10000948: 49ae         	ldr	r1, [pc, #0x2b8]        @ 0x10000c04 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x604>
1000094a: 1808         	adds	r0, r1, r0
1000094c: 4aae         	ldr	r2, [pc, #0x2b8]        @ 0x10000c08 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x608>
1000094e: 188a         	adds	r2, r1, r2
10000950: 2307         	movs	r3, #0x7
10000952: 439a         	bics	r2, r3
10000954: 1a12         	subs	r2, r2, r0
10000956: 0893         	lsrs	r3, r2, #0x2
10000958: 43db         	mvns	r3, r3
1000095a: 009b         	lsls	r3, r3, #0x2
1000095c: 50c1         	str	r1, [r0, r3]
1000095e: 993b         	ldr	r1, [sp, #0xec]
10000960: 438a         	bics	r2, r1
10000962: 1a80         	subs	r0, r0, r2
10000964: 3808         	subs	r0, #0x8
10000966: a9f2         	add	r1, sp, #0x3c8
10000968: 6001         	str	r1, [r0]
1000096a: 993d         	ldr	r1, [sp, #0xf4]
1000096c: 91f2         	str	r1, [sp, #0x3c8]
1000096e: 49a7         	ldr	r1, [pc, #0x29c]        @ 0x10000c0c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x60c>
10000970: 6809         	ldr	r1, [r1]
10000972: 4aa7         	ldr	r2, [pc, #0x29c]        @ 0x10000c10 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x610>
10000974: 929a         	str	r2, [sp, #0x268]
10000976: 9099         	str	r0, [sp, #0x264]
10000978: 9198         	str	r1, [sp, #0x260]
1000097a: 9597         	str	r5, [sp, #0x25c]
1000097c: 983c         	ldr	r0, [sp, #0xf0]
1000097e: 9096         	str	r0, [sp, #0x258]
10000980: 9095         	str	r0, [sp, #0x254]
10000982: 903b         	str	r0, [sp, #0xec]
10000984: e020         	b	0x100009c8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3c8> @ imm = #0x40
10000986: 46c0         	mov	r8, r8

10000988 <$d.13>:
10000988: 00 01 00 d0  	.word	0xd0000100
1000098c: 50 41 00 20  	.word	0x20004150
10000990: 01 00 00 20  	.word	0x20000001
10000994: 51 41 00 20  	.word	0x20004151
10000998: 00 1b b7 00  	.word	0x00b71b00
1000099c: 10 e0 00 e0  	.word	0xe000e010
100009a0: 84 40 01 40  	.word	0x40014084
100009a4: 00 00 01 01  	.word	0x01010000
100009a8: 01 00 00 01  	.word	0x01000001
100009ac: 01 01 00 ff  	.word	0xff000101
100009b0: 01 00 00 02  	.word	0x02000001
100009b4: 01 00 03 01  	.word	0x01030001
100009b8: 02 00 00 04  	.word	0x04000002
100009bc: 01 00 06 02  	.word	0x02060001

100009c0 <$t.14>:
100009c0: 983c         	ldr	r0, [sp, #0xf0]
100009c2: 1c40         	adds	r0, r0, #0x1
100009c4: 2806         	cmp	r0, #0x6
100009c6: d21c         	bhs	0x10000a02 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x402> @ imm = #0x38
100009c8: 903c         	str	r0, [sp, #0xf0]
100009ca: 0080         	lsls	r0, r0, #0x2
100009cc: a995         	add	r1, sp, #0x254
100009ce: 580d         	ldr	r5, [r1, r0]
100009d0: 2d00         	cmp	r5, #0x0
100009d2: d104         	bne	0x100009de <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3de> @ imm = #0x8
100009d4: a8fa         	add	r0, sp, #0x3e8
100009d6: f000 fc71    	bl	0x100012bc <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09> @ imm = #0x8e2
100009da: f001 f9c5    	bl	0x10001d68 <__sev>      @ imm = #0x138a
100009de: a8fa         	add	r0, sp, #0x3e8
100009e0: 903d         	str	r0, [sp, #0xf4]
100009e2: 4629         	mov	r1, r5
100009e4: f000 fc82    	bl	0x100012ec <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084> @ imm = #0x904
100009e8: 983d         	ldr	r0, [sp, #0xf4]
100009ea: f000 fc93    	bl	0x10001314 <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794> @ imm = #0x926
100009ee: 4285         	cmp	r5, r0
100009f0: d0e6         	beq	0x100009c0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3c0> @ imm = #-0x34
100009f2: 983b         	ldr	r0, [sp, #0xec]
100009f4: 1c40         	adds	r0, r0, #0x1
100009f6: 2810         	cmp	r0, #0x10
100009f8: dc06         	bgt	0x10000a08 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x408> @ imm = #0xc
100009fa: 903b         	str	r0, [sp, #0xec]
100009fc: 2000         	movs	r0, #0x0
100009fe: 2806         	cmp	r0, #0x6
10000a00: d3e2         	blo	0x100009c8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x3c8> @ imm = #-0x3c
10000a02: a8fa         	add	r0, sp, #0x3e8
10000a04: f000 fc86    	bl	0x10001314 <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794> @ imm = #0x90c
10000a08: 983f         	ldr	r0, [sp, #0xfc]
10000a0a: 03c5         	lsls	r5, r0, #0xf
10000a0c: f000 ff44    	bl	0x10001898 <_critical_section_1_0_acquire> @ imm = #0xe88
10000a10: 4980         	ldr	r1, [pc, #0x200]        @ 0x10000c14 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x614>
10000a12: 600d         	str	r5, [r1]
10000a14: f000 ff8c    	bl	0x10001930 <_critical_section_1_0_release> @ imm = #0xf18
10000a18: 98e0         	ldr	r0, [sp, #0x380]
10000a1a: 6084         	str	r4, [r0, #0x8]
10000a1c: 98e0         	ldr	r0, [sp, #0x380]
10000a1e: 6841         	ldr	r1, [r0, #0x4]
10000a20: 4221         	tst	r1, r4
10000a22: d114         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x28
10000a24: 6881         	ldr	r1, [r0, #0x8]
10000a26: 4221         	tst	r1, r4
10000a28: d111         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x22
10000a2a: 6841         	ldr	r1, [r0, #0x4]
10000a2c: 4221         	tst	r1, r4
10000a2e: d10e         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x1c
10000a30: 6881         	ldr	r1, [r0, #0x8]
10000a32: 4221         	tst	r1, r4
10000a34: d10b         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x16
10000a36: 6841         	ldr	r1, [r0, #0x4]
10000a38: 4221         	tst	r1, r4
10000a3a: d108         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x10
10000a3c: 6881         	ldr	r1, [r0, #0x8]
10000a3e: 4221         	tst	r1, r4
10000a40: d105         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0xa
10000a42: 6841         	ldr	r1, [r0, #0x4]
10000a44: 4221         	tst	r1, r4
10000a46: d102         	bne	0x10000a4e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x44e> @ imm = #0x4
10000a48: 6881         	ldr	r1, [r0, #0x8]
10000a4a: 4221         	tst	r1, r4
10000a4c: d0e7         	beq	0x10000a1e <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x41e> @ imm = #-0x32
10000a4e: 2500         	movs	r5, #0x0
10000a50: 95dd         	str	r5, [sp, #0x374]
10000a52: 983e         	ldr	r0, [sp, #0xf8]
10000a54: 90dc         	str	r0, [sp, #0x370]
10000a56: 98de         	ldr	r0, [sp, #0x378]
10000a58: f000 fc84    	bl	0x10001364 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1> @ imm = #0x908
10000a5c: 95d9         	str	r5, [sp, #0x364]
10000a5e: 9a3f         	ldr	r2, [sp, #0xfc]
10000a60: 92d8         	str	r2, [sp, #0x360]
10000a62: 303c         	adds	r0, #0x3c
10000a64: 90da         	str	r0, [sp, #0x368]
10000a66: 4169         	adcs	r1, r5
10000a68: 91db         	str	r1, [sp, #0x36c]
10000a6a: a8d8         	add	r0, sp, #0x360
10000a6c: f000 fc8c    	bl	0x10001388 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38> @ imm = #0x918
10000a70: 2800         	cmp	r0, #0x0
10000a72: d1fa         	bne	0x10000a6a <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x46a> @ imm = #-0xc
10000a74: e001         	b	0x10000a7a <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x47a> @ imm = #0x2
10000a76: f001 f972    	bl	0x10001d5e <__nop>      @ imm = #0x12e4
10000a7a: 98e0         	ldr	r0, [sp, #0x380]
10000a7c: 6841         	ldr	r1, [r0, #0x4]
10000a7e: 4231         	tst	r1, r6
10000a80: d1f9         	bne	0x10000a76 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x476> @ imm = #-0xe
10000a82: 4966         	ldr	r1, [pc, #0x198]        @ 0x10000c1c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x61c>
10000a84: 6101         	str	r1, [r0, #0x10]
10000a86: a893         	add	r0, sp, #0x24c
10000a88: 4963         	ldr	r1, [pc, #0x18c]        @ 0x10000c18 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x618>
10000a8a: f001 f8f7    	bl	0x10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238> @ imm = #0x11ee
10000a8e: 98e0         	ldr	r0, [sp, #0x380]
10000a90: 6084         	str	r4, [r0, #0x8]
10000a92: 98e0         	ldr	r0, [sp, #0x380]
10000a94: 6841         	ldr	r1, [r0, #0x4]
10000a96: 4221         	tst	r1, r4
10000a98: d114         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x28
10000a9a: 6881         	ldr	r1, [r0, #0x8]
10000a9c: 4221         	tst	r1, r4
10000a9e: d111         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x22
10000aa0: 6841         	ldr	r1, [r0, #0x4]
10000aa2: 4221         	tst	r1, r4
10000aa4: d10e         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x1c
10000aa6: 6881         	ldr	r1, [r0, #0x8]
10000aa8: 4221         	tst	r1, r4
10000aaa: d10b         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x16
10000aac: 6841         	ldr	r1, [r0, #0x4]
10000aae: 4221         	tst	r1, r4
10000ab0: d108         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x10
10000ab2: 6881         	ldr	r1, [r0, #0x8]
10000ab4: 4221         	tst	r1, r4
10000ab6: d105         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0xa
10000ab8: 6841         	ldr	r1, [r0, #0x4]
10000aba: 4221         	tst	r1, r4
10000abc: d102         	bne	0x10000ac4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4c4> @ imm = #0x4
10000abe: 6881         	ldr	r1, [r0, #0x8]
10000ac0: 4221         	tst	r1, r4
10000ac2: d0e7         	beq	0x10000a94 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x494> @ imm = #-0x32
10000ac4: 95dd         	str	r5, [sp, #0x374]
10000ac6: 983e         	ldr	r0, [sp, #0xf8]
10000ac8: 90dc         	str	r0, [sp, #0x370]
10000aca: 98de         	ldr	r0, [sp, #0x378]
10000acc: f000 fc4a    	bl	0x10001364 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1> @ imm = #0x894
10000ad0: 95d9         	str	r5, [sp, #0x364]
10000ad2: 9a3f         	ldr	r2, [sp, #0xfc]
10000ad4: 92d8         	str	r2, [sp, #0x360]
10000ad6: 303c         	adds	r0, #0x3c
10000ad8: 90da         	str	r0, [sp, #0x368]
10000ada: 4169         	adcs	r1, r5
10000adc: 91db         	str	r1, [sp, #0x36c]
10000ade: a8d8         	add	r0, sp, #0x360
10000ae0: f000 fc52    	bl	0x10001388 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38> @ imm = #0x8a4
10000ae4: 2800         	cmp	r0, #0x0
10000ae6: d1fa         	bne	0x10000ade <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4de> @ imm = #-0xc
10000ae8: e001         	b	0x10000aee <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4ee> @ imm = #0x2
10000aea: f001 f938    	bl	0x10001d5e <__nop>      @ imm = #0x1270
10000aee: 98e0         	ldr	r0, [sp, #0x380]
10000af0: 6841         	ldr	r1, [r0, #0x4]
10000af2: 4231         	tst	r1, r6
10000af4: d1f9         	bne	0x10000aea <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x4ea> @ imm = #-0xe
10000af6: 6105         	str	r5, [r0, #0x10]
10000af8: a893         	add	r0, sp, #0x24c
10000afa: 4947         	ldr	r1, [pc, #0x11c]        @ 0x10000c18 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x618>
10000afc: f001 f8be    	bl	0x10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238> @ imm = #0x117c
10000b00: e78a         	b	0x10000a18 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x418> @ imm = #-0xec
10000b02: 2101         	movs	r1, #0x1
10000b04: 7001         	strb	r1, [r0]
10000b06: 2c00         	cmp	r4, #0x0
10000b08: d000         	beq	0x10000b0c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x50c> @ imm = #0x0
10000b0a: e5cf         	b	0x100006ac <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xac> @ imm = #-0x462
10000b0c: f001 f920    	bl	0x10001d50 <__cpsie>    @ imm = #0x1240
10000b10: 2e00         	cmp	r6, #0x0
10000b12: d100         	bne	0x10000b16 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x516> @ imm = #0x0
10000b14: e5cd         	b	0x100006b2 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0xb2> @ imm = #-0x466
10000b16: 4828         	ldr	r0, [pc, #0xa0]         @ 0x10000bb8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5b8>
10000b18: 212b         	movs	r1, #0x2b
10000b1a: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x10000bc0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5c0>
10000b1c: f001 f950    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x12a0
10000b20: defe         	trap
10000b22: 4829         	ldr	r0, [pc, #0xa4]         @ 0x10000bc8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5c8>
10000b24: 2128         	movs	r1, #0x28
10000b26: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x10000bcc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5cc>
10000b28: f001 f94a    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x1294
10000b2c: defe         	trap
10000b2e: f000 feff    	bl	0x10001930 <_critical_section_1_0_release> @ imm = #0xdfe
10000b32: 4821         	ldr	r0, [pc, #0x84]         @ 0x10000bb8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5b8>
10000b34: 212b         	movs	r1, #0x2b
10000b36: 4a21         	ldr	r2, [pc, #0x84]         @ 0x10000bbc <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5bc>
10000b38: f001 f942    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x1284
10000b3c: defe         	trap
10000b3e: 481e         	ldr	r0, [pc, #0x78]         @ 0x10000bb8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5b8>
10000b40: 212b         	movs	r1, #0x2b
10000b42: 4a20         	ldr	r2, [pc, #0x80]         @ 0x10000bc4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5c4>
10000b44: f001 f93c    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x1278
10000b48: defe         	trap
10000b4a: 94d8         	str	r4, [sp, #0x360]
10000b4c: 96d9         	str	r6, [sp, #0x364]
10000b4e: 4820         	ldr	r0, [pc, #0x80]         @ 0x10000bd0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5d0>
10000b50: 9000         	str	r0, [sp]
10000b52: 4820         	ldr	r0, [pc, #0x80]         @ 0x10000bd4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5d4>
10000b54: 212b         	movs	r1, #0x2b
10000b56: aad8         	add	r2, sp, #0x360
10000b58: 4b1f         	ldr	r3, [pc, #0x7c]         @ 0x10000bd8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5d8>
10000b5a: f001 f965    	bl	0x10001e28 <core::result::unwrap_failed::h90ad36707fb7e5ea> @ imm = #0x12ca
10000b5e: defe         	trap
10000b60: 4832         	ldr	r0, [pc, #0xc8]         @ 0x10000c2c <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x62c>
10000b62: 9000         	str	r0, [sp]
10000b64: 4832         	ldr	r0, [pc, #0xc8]         @ 0x10000c30 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x630>
10000b66: 212b         	movs	r1, #0x2b
10000b68: aafa         	add	r2, sp, #0x3e8
10000b6a: 4b32         	ldr	r3, [pc, #0xc8]         @ 0x10000c34 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x634>
10000b6c: f001 f95c    	bl	0x10001e28 <core::result::unwrap_failed::h90ad36707fb7e5ea> @ imm = #0x12b8
10000b70: defe         	trap
10000b72: 2000         	movs	r0, #0x0
10000b74: 90f6         	str	r0, [sp, #0x3d8]
10000b76: 993f         	ldr	r1, [sp, #0xfc]
10000b78: 91f3         	str	r1, [sp, #0x3cc]
10000b7a: 4929         	ldr	r1, [pc, #0xa4]         @ 0x10000c20 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x620>
10000b7c: 91f2         	str	r1, [sp, #0x3c8]
10000b7e: 90f5         	str	r0, [sp, #0x3d4]
10000b80: 4828         	ldr	r0, [pc, #0xa0]         @ 0x10000c24 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x624>
10000b82: 90f4         	str	r0, [sp, #0x3d0]
10000b84: a8f2         	add	r0, sp, #0x3c8
10000b86: 4928         	ldr	r1, [pc, #0xa0]         @ 0x10000c28 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x628>
10000b88: f001 f906    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x120c
10000b8c: defe         	trap
10000b8e: 983c         	ldr	r0, [sp, #0xf0]
10000b90: 90f6         	str	r0, [sp, #0x3d8]
10000b92: 2002         	movs	r0, #0x2
10000b94: 90f3         	str	r0, [sp, #0x3cc]
10000b96: 4812         	ldr	r0, [pc, #0x48]         @ 0x10000be0 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5e0>
10000b98: 90f2         	str	r0, [sp, #0x3c8]
10000b9a: 92f5         	str	r2, [sp, #0x3d4]
10000b9c: a8ec         	add	r0, sp, #0x3b0
10000b9e: 90f4         	str	r0, [sp, #0x3d0]
10000ba0: 4810         	ldr	r0, [pc, #0x40]         @ 0x10000be4 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5e4>
10000ba2: 90ed         	str	r0, [sp, #0x3b4]
10000ba4: a8eb         	add	r0, sp, #0x3ac
10000ba6: 90ec         	str	r0, [sp, #0x3b0]
10000ba8: 983e         	ldr	r0, [sp, #0xf8]
10000baa: 90eb         	str	r0, [sp, #0x3ac]
10000bac: a8f2         	add	r0, sp, #0x3c8
10000bae: 490e         	ldr	r1, [pc, #0x38]         @ 0x10000be8 <multicore_lockout_irq::__cortex_m_rt_main::hdcff0f4dfaa2f24f+0x5e8>
10000bb0: f001 f8f2    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x11e4
10000bb4: defe         	trap
10000bb6: 46c0         	mov	r8, r8

10000bb8 <$d.15>:
10000bb8: 24 33 00 10  	.word	0x10003324
10000bbc: 70 33 00 10  	.word	0x10003370
10000bc0: 80 33 00 10  	.word	0x10003380
10000bc4: 90 33 00 10  	.word	0x10003390
10000bc8: f4 35 00 10  	.word	0x100035f4
10000bcc: 1c 36 00 10  	.word	0x1000361c
10000bd0: 70 30 00 10  	.word	0x10003070
10000bd4: 64 36 00 10  	.word	0x10003664
10000bd8: 90 36 00 10  	.word	0x10003690
10000bdc: 00 12 7a 00  	.word	0x007a1200
10000be0: 3c 31 00 10  	.word	0x1000313c
10000be4: 4d 2a 00 10  	.word	0x10002a4d
10000be8: ac 31 00 10  	.word	0x100031ac
10000bec: 00 01 00 18  	.word	0x18000100
10000bf0: 00 00 20 50  	.word	0x50200000
10000bf4: 0c 30 00 10  	.word	0x1000300c
10000bf8: 11 30 00 10  	.word	0x10003011
10000bfc: 00 02 00 04  	.word	0x04000200
10000c00: 04 00 01 40  	.word	0x40010004
10000c04: 40 01 00 20  	.word	0x20000140
10000c08: 07 40 00 00  	.word	0x00004007
10000c0c: 08 ed 00 e0  	.word	0xe000ed08
10000c10: e1 04 00 10  	.word	0x100004e1
10000c14: 00 e1 00 e0  	.word	0xe000e100
10000c18: a0 86 01 00  	.word	0x000186a0
10000c1c: 00 64 64 64  	.word	0x64646400
10000c20: 1c 32 00 10  	.word	0x1000321c
10000c24: 08 32 00 10  	.word	0x10003208
10000c28: dc 30 00 10  	.word	0x100030dc
10000c2c: f8 31 00 10  	.word	0x100031f8
10000c30: bc 31 00 10  	.word	0x100031bc
10000c34: e8 31 00 10  	.word	0x100031e8

10000c38 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324>:
10000c38: b5f0         	push	{r4, r5, r6, r7, lr}
10000c3a: af03         	add	r7, sp, #0xc
10000c3c: b0ed         	sub	sp, #0x1b4
10000c3e: 461d         	mov	r5, r3
10000c40: 4604         	mov	r4, r0
10000c42: a808         	add	r0, sp, #0x20
10000c44: 7043         	strb	r3, [r0, #0x1]
10000c46: 7002         	strb	r2, [r0]
10000c48: ab09         	add	r3, sp, #0x24
10000c4a: 68fe         	ldr	r6, [r7, #0xc]
10000c4c: 705e         	strb	r6, [r3, #0x1]
10000c4e: 68b8         	ldr	r0, [r7, #0x8]
10000c50: 7018         	strb	r0, [r3]
10000c52: 2a00         	cmp	r2, #0x0
10000c54: d062         	beq	0x10000d1c <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xe4> @ imm = #0xc4
10000c56: 2800         	cmp	r0, #0x0
10000c58: d060         	beq	0x10000d1c <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xe4> @ imm = #0xc0
10000c5a: 9604         	str	r6, [sp, #0x10]
10000c5c: 2021         	movs	r0, #0x21
10000c5e: 00c2         	lsls	r2, r0, #0x3
10000c60: a81a         	add	r0, sp, #0x68
10000c62: f000 feb3    	bl	0x100019cc <__aeabi_memcpy4> @ imm = #0xd66
10000c66: 985b         	ldr	r0, [sp, #0x16c]
10000c68: 2800         	cmp	r0, #0x0
10000c6a: d05d         	beq	0x10000d28 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xf0> @ imm = #0xba
10000c6c: 4621         	mov	r1, r4
10000c6e: 3148         	adds	r1, #0x48
10000c70: 9101         	str	r1, [sp, #0x4]
10000c72: 9403         	str	r4, [sp, #0xc]
10000c74: 344a         	adds	r4, #0x4a
10000c76: 9402         	str	r4, [sp, #0x8]
10000c78: 1e69         	subs	r1, r5, #0x1
10000c7a: 9105         	str	r1, [sp, #0x14]
10000c7c: 991a         	ldr	r1, [sp, #0x68]
10000c7e: 9100         	str	r1, [sp]
10000c80: 2400         	movs	r4, #0x0
10000c82: 43e5         	mvns	r5, r4
10000c84: 00c0         	lsls	r0, r0, #0x3
10000c86: 9007         	str	r0, [sp, #0x1c]
10000c88: ae5c         	add	r6, sp, #0x170
10000c8a: e006         	b	0x10000c9a <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x62> @ imm = #0xc
10000c8c: 8030         	strh	r0, [r6]
10000c8e: 3408         	adds	r4, #0x8
10000c90: 1cb6         	adds	r6, r6, #0x2
10000c92: 1c6d         	adds	r5, r5, #0x1
10000c94: 9807         	ldr	r0, [sp, #0x1c]
10000c96: 42a0         	cmp	r0, r4
10000c98: d00d         	beq	0x10000cb6 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x7e> @ imm = #0x1a
10000c9a: a81a         	add	r0, sp, #0x68
10000c9c: 1900         	adds	r0, r0, r4
10000c9e: 1d00         	adds	r0, r0, #0x4
10000ca0: 991a         	ldr	r1, [sp, #0x68]
10000ca2: f000 ff4f    	bl	0x10001b44 <pio::Instruction::encode::hbd7fd3c1ae569d42> @ imm = #0xe9e
10000ca6: 2d1f         	cmp	r5, #0x1f
10000ca8: d1f0         	bne	0x10000c8c <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x54> @ imm = #-0x20
10000caa: 9006         	str	r0, [sp, #0x18]
10000cac: 4826         	ldr	r0, [pc, #0x98]         @ 0x10000d48 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x110>
10000cae: f000 ffd9    	bl	0x10001c64 <arrayvec::arrayvec::extend_panic::hb1c0d93f66233b0e> @ imm = #0xfb2
10000cb2: 9806         	ldr	r0, [sp, #0x18]
10000cb4: e7ea         	b	0x10000c8c <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x54> @ imm = #-0x2c
10000cb6: a85c         	add	r0, sp, #0x170
10000cb8: a90a         	add	r1, sp, #0x28
10000cba: c85c         	ldm	r0!, {r2, r3, r4, r6}
10000cbc: c15c         	stm	r1!, {r2, r3, r4, r6}
10000cbe: c85c         	ldm	r0!, {r2, r3, r4, r6}
10000cc0: c15c         	stm	r1!, {r2, r3, r4, r6}
10000cc2: c85c         	ldm	r0!, {r2, r3, r4, r6}
10000cc4: c15c         	stm	r1!, {r2, r3, r4, r6}
10000cc6: c85c         	ldm	r0!, {r2, r3, r4, r6}
10000cc8: c15c         	stm	r1!, {r2, r3, r4, r6}
10000cca: 9805         	ldr	r0, [sp, #0x14]
10000ccc: b2c0         	uxtb	r0, r0
10000cce: 4285         	cmp	r5, r0
10000cd0: d32a         	blo	0x10000d28 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xf0> @ imm = #0x54
10000cd2: 9804         	ldr	r0, [sp, #0x10]
10000cd4: b2c0         	uxtb	r0, r0
10000cd6: 4285         	cmp	r5, r0
10000cd8: 9803         	ldr	r0, [sp, #0xc]
10000cda: d32b         	blo	0x10000d34 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xfc> @ imm = #0x56
10000cdc: 1c69         	adds	r1, r5, #0x1
10000cde: 9107         	str	r1, [sp, #0x1c]
10000ce0: 1d01         	adds	r1, r0, #0x4
10000ce2: aa0a         	add	r2, sp, #0x28
10000ce4: ca78         	ldm	r2!, {r3, r4, r5, r6}
10000ce6: c178         	stm	r1!, {r3, r4, r5, r6}
10000ce8: ca78         	ldm	r2!, {r3, r4, r5, r6}
10000cea: c178         	stm	r1!, {r3, r4, r5, r6}
10000cec: ca78         	ldm	r2!, {r3, r4, r5, r6}
10000cee: c178         	stm	r1!, {r3, r4, r5, r6}
10000cf0: ca78         	ldm	r2!, {r3, r4, r5, r6}
10000cf2: c178         	stm	r1!, {r3, r4, r5, r6}
10000cf4: 2100         	movs	r1, #0x0
10000cf6: 9a01         	ldr	r2, [sp, #0x4]
10000cf8: 7011         	strb	r1, [r2]
10000cfa: 9907         	ldr	r1, [sp, #0x1c]
10000cfc: 6441         	str	r1, [r0, #0x44]
10000cfe: 9902         	ldr	r1, [sp, #0x8]
10000d00: 9a04         	ldr	r2, [sp, #0x10]
10000d02: 704a         	strb	r2, [r1, #0x1]
10000d04: 9a05         	ldr	r2, [sp, #0x14]
10000d06: 700a         	strb	r2, [r1]
10000d08: 9900         	ldr	r1, [sp]
10000d0a: 6001         	str	r1, [r0]
10000d0c: a809         	add	r0, sp, #0x24
10000d0e: f000 ff99    	bl	0x10001c44 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72> @ imm = #0xf32
10000d12: a808         	add	r0, sp, #0x20
10000d14: f000 ff96    	bl	0x10001c44 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72> @ imm = #0xf2c
10000d18: b06d         	add	sp, #0x1b4
10000d1a: bdf0         	pop	{r4, r5, r6, r7, pc}
10000d1c: 4808         	ldr	r0, [pc, #0x20]         @ 0x10000d40 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x108>
10000d1e: 2122         	movs	r1, #0x22
10000d20: 4a08         	ldr	r2, [pc, #0x20]         @ 0x10000d44 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x10c>
10000d22: f001 f84d    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x109a
10000d26: defe         	trap
10000d28: 480a         	ldr	r0, [pc, #0x28]         @ 0x10000d54 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x11c>
10000d2a: 213a         	movs	r1, #0x3a
10000d2c: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x10000d58 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x120>
10000d2e: f001 f847    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x108e
10000d32: defe         	trap
10000d34: 4805         	ldr	r0, [pc, #0x14]         @ 0x10000d4c <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x114>
10000d36: 213a         	movs	r1, #0x3a
10000d38: 4a05         	ldr	r2, [pc, #0x14]         @ 0x10000d50 <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0x118>
10000d3a: f001 f841    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x1082
10000d3e: defe         	trap

10000d40 <$d.3>:
10000d40: c0 35 00 10  	.word	0x100035c0
10000d44: e4 35 00 10  	.word	0x100035e4
10000d48: c0 34 00 10  	.word	0x100034c0
10000d4c: 74 35 00 10  	.word	0x10003574
10000d50: b0 35 00 10  	.word	0x100035b0
10000d54: d0 34 00 10  	.word	0x100034d0
10000d58: 64 35 00 10  	.word	0x10003564

10000d5c <core::ptr::drop_in_place<arrayvec::errors::CapacityError<pio::Instruction>>::h5b63da1a5b978b87.llvm.3773742665516903480>:
10000d5c: 4770         	bx	lr
10000d5e: d4d4         	bmi	0x10000d0a <pio::Assembler<_>::assemble_with_wrap::he573a9df672dc324+0xd2> @ imm = #-0x58

10000d60 <<arrayvec::errors::CapacityError<T> as core::fmt::Debug>::fmt::h77782ad01972cadb.llvm.3773742665516903480>:
10000d60: b580         	push	{r7, lr}
10000d62: af00         	add	r7, sp, #0x0
10000d64: b088         	sub	sp, #0x20
10000d66: 4608         	mov	r0, r1
10000d68: 2100         	movs	r1, #0x0
10000d6a: 9104         	str	r1, [sp, #0x10]
10000d6c: 2101         	movs	r1, #0x1
10000d6e: 9101         	str	r1, [sp, #0x4]
10000d70: 4a06         	ldr	r2, [pc, #0x18]         @ 0x10000d8c <<arrayvec::errors::CapacityError<T> as core::fmt::Debug>::fmt::h77782ad01972cadb.llvm.3773742665516903480+0x2c>
10000d72: 9200         	str	r2, [sp]
10000d74: 9103         	str	r1, [sp, #0xc]
10000d76: a906         	add	r1, sp, #0x18
10000d78: 9102         	str	r1, [sp, #0x8]
10000d7a: 4905         	ldr	r1, [pc, #0x14]         @ 0x10000d90 <<arrayvec::errors::CapacityError<T> as core::fmt::Debug>::fmt::h77782ad01972cadb.llvm.3773742665516903480+0x30>
10000d7c: 9107         	str	r1, [sp, #0x1c]
10000d7e: 4905         	ldr	r1, [pc, #0x14]         @ 0x10000d94 <<arrayvec::errors::CapacityError<T> as core::fmt::Debug>::fmt::h77782ad01972cadb.llvm.3773742665516903480+0x34>
10000d80: 9106         	str	r1, [sp, #0x18]
10000d82: 4669         	mov	r1, sp
10000d84: f001 fbd7    	bl	0x10002536 <<core::fmt::Formatter as core::fmt::Write>::write_fmt::h4b005a6d1e2e5df4> @ imm = #0x17ae
10000d88: b008         	add	sp, #0x20
10000d8a: bd80         	pop	{r7, pc}

10000d8c <$d.14>:
10000d8c: 3c 36 00 10  	.word	0x1000363c
10000d90: 41 05 00 10  	.word	0x10000541
10000d94: 5c 36 00 10  	.word	0x1000365c

10000d98 <rp2040_flash::flash::flash_range_program::hca4b43b1283ad4a5>:
10000d98: b5f0         	push	{r4, r5, r6, r7, lr}
10000d9a: af03         	add	r7, sp, #0xc
10000d9c: b0cb         	sub	sp, #0x12c
10000d9e: 461c         	mov	r4, r3
10000da0: 9203         	str	r2, [sp, #0xc]
10000da2: 9104         	str	r1, [sp, #0x10]
10000da4: 9002         	str	r0, [sp, #0x8]
10000da6: 2601         	movs	r6, #0x1
10000da8: 0235         	lsls	r5, r6, #0x8
10000daa: a805         	add	r0, sp, #0x14
10000dac: 4629         	mov	r1, r5
10000dae: f000 fdf1    	bl	0x10001994 <__aeabi_memclr8> @ imm = #0xbe2
10000db2: 2c00         	cmp	r4, #0x0
10000db4: d013         	beq	0x10000dde <rp2040_flash::flash::flash_range_program::hca4b43b1283ad4a5+0x46> @ imm = #0x26
10000db6: 0731         	lsls	r1, r6, #0x1c
10000db8: ac05         	add	r4, sp, #0x14
10000dba: 4620         	mov	r0, r4
10000dbc: 462a         	mov	r2, r5
10000dbe: f000 fdcb    	bl	0x10001958 <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9> @ imm = #0xb96
10000dc2: f000 fd41    	bl	0x10001848 <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893> @ imm = #0xa82
10000dc6: 9001         	str	r0, [sp, #0x4]
10000dc8: f000 fcc0    	bl	0x1000174c <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44> @ imm = #0x980
10000dcc: 9000         	str	r0, [sp]
10000dce: f000 fe1b    	bl	0x10001a08 <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0> @ imm = #0xc36
10000dd2: 4606         	mov	r6, r0
10000dd4: 1c65         	adds	r5, r4, #0x1
10000dd6: f000 fe2b    	bl	0x10001a30 <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2> @ imm = #0xc56
10000dda: 4604         	mov	r4, r0
10000ddc: e00e         	b	0x10000dfc <rp2040_flash::flash::flash_range_program::hca4b43b1283ad4a5+0x64> @ imm = #0x1c
10000dde: f000 fd33    	bl	0x10001848 <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893> @ imm = #0xa66
10000de2: 9001         	str	r0, [sp, #0x4]
10000de4: f000 fcb2    	bl	0x1000174c <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44> @ imm = #0x964
10000de8: 9000         	str	r0, [sp]
10000dea: f000 fe0d    	bl	0x10001a08 <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0> @ imm = #0xc1a
10000dee: 4606         	mov	r6, r0
10000df0: f000 fe1e    	bl	0x10001a30 <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2> @ imm = #0xc3c
10000df4: 4604         	mov	r4, r0
10000df6: f000 fd3b    	bl	0x10001870 <rp2040_hal::rom_data::flash_enter_cmd_xip::ptr::h05d8f25227aeac72> @ imm = #0xa76
10000dfa: 4605         	mov	r5, r0
10000dfc: 954a         	str	r5, [sp, #0x128]
10000dfe: 9449         	str	r4, [sp, #0x124]
10000e00: 9648         	str	r6, [sp, #0x120]
10000e02: 2000         	movs	r0, #0x0
10000e04: 9047         	str	r0, [sp, #0x11c]
10000e06: 9800         	ldr	r0, [sp]
10000e08: 9046         	str	r0, [sp, #0x118]
10000e0a: 9801         	ldr	r0, [sp, #0x4]
10000e0c: 9045         	str	r0, [sp, #0x114]
10000e0e: ab45         	add	r3, sp, #0x114
10000e10: aa02         	add	r2, sp, #0x8
10000e12: ca07         	ldm	r2, {r0, r1, r2}
10000e14: f002 f8e8    	bl	0x10002fe8 <__Thumbv6MABSLongThunk_rp2040_flash::flash::write_flash_inner::h52bc03164e3df116> @ imm = #0x21d0
10000e18: b04b         	add	sp, #0x12c
10000e1a: bdf0         	pop	{r4, r5, r6, r7, pc}

10000e1c <rust_begin_unwind>:
10000e1c: e7fe         	b	0x10000e1c <rust_begin_unwind> @ imm = #-0x4
10000e1e: d4d4         	bmi	0x10000dca <rp2040_flash::flash::flash_range_program::hca4b43b1283ad4a5+0x32> @ imm = #-0x58

10000e20 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670>:
10000e20: b5f0         	push	{r4, r5, r6, r7, lr}
10000e22: af03         	add	r7, sp, #0xc
10000e24: b08b         	sub	sp, #0x2c
10000e26: 9307         	str	r3, [sp, #0x1c]
10000e28: 9208         	str	r2, [sp, #0x20]
10000e2a: 9005         	str	r0, [sp, #0x14]
10000e2c: 6808         	ldr	r0, [r1]
10000e2e: 9006         	str	r0, [sp, #0x18]
10000e30: 2601         	movs	r6, #0x1
10000e32: 0232         	lsls	r2, r6, #0x8
10000e34: 4d9a         	ldr	r5, [pc, #0x268]        @ 0x100010a0 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x280>
10000e36: 4629         	mov	r1, r5
10000e38: 3908         	subs	r1, #0x8
10000e3a: 6808         	ldr	r0, [r1]
10000e3c: 28ff         	cmp	r0, #0xff
10000e3e: d801         	bhi	0x10000e44 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x24> @ imm = #0x2
10000e40: 6808         	ldr	r0, [r1]
10000e42: 600a         	str	r2, [r1]
10000e44: 9209         	str	r2, [sp, #0x24]
10000e46: 2003         	movs	r0, #0x3
10000e48: 900a         	str	r0, [sp, #0x28]
10000e4a: 43c3         	mvns	r3, r0
10000e4c: 462c         	mov	r4, r5
10000e4e: 3c0c         	subs	r4, #0xc
10000e50: 6820         	ldr	r0, [r4]
10000e52: 4018         	ands	r0, r3
10000e54: 6020         	str	r0, [r4]
10000e56: 1f28         	subs	r0, r5, #0x4
10000e58: 6802         	ldr	r2, [r0]
10000e5a: 2a01         	cmp	r2, #0x1
10000e5c: d011         	beq	0x10000e82 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x62> @ imm = #0x22
10000e5e: 6822         	ldr	r2, [r4]
10000e60: 401a         	ands	r2, r3
10000e62: 6022         	str	r2, [r4]
10000e64: 6802         	ldr	r2, [r0]
10000e66: 2a01         	cmp	r2, #0x1
10000e68: d00b         	beq	0x10000e82 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x62> @ imm = #0x16
10000e6a: 6822         	ldr	r2, [r4]
10000e6c: 401a         	ands	r2, r3
10000e6e: 6022         	str	r2, [r4]
10000e70: 6802         	ldr	r2, [r0]
10000e72: 2a01         	cmp	r2, #0x1
10000e74: d005         	beq	0x10000e82 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x62> @ imm = #0xa
10000e76: 6822         	ldr	r2, [r4]
10000e78: 401a         	ands	r2, r3
10000e7a: 6022         	str	r2, [r4]
10000e7c: 6802         	ldr	r2, [r0]
10000e7e: 2a01         	cmp	r2, #0x1
10000e80: d1e1         	bne	0x10000e46 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x26> @ imm = #-0x3e
10000e82: 6822         	ldr	r2, [r4]
10000e84: 2302         	movs	r3, #0x2
10000e86: 4313         	orrs	r3, r2
10000e88: 43b3         	bics	r3, r6
10000e8a: 6023         	str	r3, [r4]
10000e8c: 6802         	ldr	r2, [r0]
10000e8e: 2a04         	cmp	r2, #0x4
10000e90: d008         	beq	0x10000ea4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x84> @ imm = #0x10
10000e92: 6802         	ldr	r2, [r0]
10000e94: 2a04         	cmp	r2, #0x4
10000e96: d005         	beq	0x10000ea4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x84> @ imm = #0xa
10000e98: 6802         	ldr	r2, [r0]
10000e9a: 2a04         	cmp	r2, #0x4
10000e9c: d002         	beq	0x10000ea4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x84> @ imm = #0x4
10000e9e: 6802         	ldr	r2, [r0]
10000ea0: 2a04         	cmp	r2, #0x4
10000ea2: d1f3         	bne	0x10000e8c <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x6c> @ imm = #-0x1a
10000ea4: 6808         	ldr	r0, [r1]
10000ea6: 9a09         	ldr	r2, [sp, #0x24]
10000ea8: 600a         	str	r2, [r1]
10000eaa: 9c05         	ldr	r4, [sp, #0x14]
10000eac: 9806         	ldr	r0, [sp, #0x18]
10000eae: 6120         	str	r0, [r4, #0x10]
10000eb0: 9808         	ldr	r0, [sp, #0x20]
10000eb2: 6801         	ldr	r1, [r0]
10000eb4: 6868         	ldr	r0, [r5, #0x4]
10000eb6: 4290         	cmp	r0, r2
10000eb8: d201         	bhs	0x10000ebe <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x9e> @ imm = #0x2
10000eba: 6868         	ldr	r0, [r5, #0x4]
10000ebc: 606a         	str	r2, [r5, #0x4]
10000ebe: 6828         	ldr	r0, [r5]
10000ec0: 43b0         	bics	r0, r6
10000ec2: 6028         	str	r0, [r5]
10000ec4: 68a8         	ldr	r0, [r5, #0x8]
10000ec6: 2801         	cmp	r0, #0x1
10000ec8: d011         	beq	0x10000eee <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xce> @ imm = #0x22
10000eca: 6828         	ldr	r0, [r5]
10000ecc: 43b0         	bics	r0, r6
10000ece: 6028         	str	r0, [r5]
10000ed0: 68a8         	ldr	r0, [r5, #0x8]
10000ed2: 2801         	cmp	r0, #0x1
10000ed4: d00b         	beq	0x10000eee <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xce> @ imm = #0x16
10000ed6: 6828         	ldr	r0, [r5]
10000ed8: 43b0         	bics	r0, r6
10000eda: 6028         	str	r0, [r5]
10000edc: 68a8         	ldr	r0, [r5, #0x8]
10000ede: 2801         	cmp	r0, #0x1
10000ee0: d005         	beq	0x10000eee <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xce> @ imm = #0xa
10000ee2: 6828         	ldr	r0, [r5]
10000ee4: 43b0         	bics	r0, r6
10000ee6: 6028         	str	r0, [r5]
10000ee8: 68a8         	ldr	r0, [r5, #0x8]
10000eea: 2801         	cmp	r0, #0x1
10000eec: d1e7         	bne	0x10000ebe <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x9e> @ imm = #-0x32
10000eee: 6828         	ldr	r0, [r5]
10000ef0: 23e0         	movs	r3, #0xe0
10000ef2: 9308         	str	r3, [sp, #0x20]
10000ef4: 4398         	bics	r0, r3
10000ef6: 6028         	str	r0, [r5]
10000ef8: 6828         	ldr	r0, [r5]
10000efa: 4330         	orrs	r0, r6
10000efc: 6028         	str	r0, [r5]
10000efe: 68a8         	ldr	r0, [r5, #0x8]
10000f00: 2802         	cmp	r0, #0x2
10000f02: d008         	beq	0x10000f16 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xf6> @ imm = #0x10
10000f04: 68a8         	ldr	r0, [r5, #0x8]
10000f06: 2802         	cmp	r0, #0x2
10000f08: d005         	beq	0x10000f16 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xf6> @ imm = #0xa
10000f0a: 68a8         	ldr	r0, [r5, #0x8]
10000f0c: 2802         	cmp	r0, #0x2
10000f0e: d002         	beq	0x10000f16 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xf6> @ imm = #0x4
10000f10: 68a8         	ldr	r0, [r5, #0x8]
10000f12: 2802         	cmp	r0, #0x2
10000f14: d1f3         	bne	0x10000efe <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0xde> @ imm = #-0x1a
10000f16: 6868         	ldr	r0, [r5, #0x4]
10000f18: 606a         	str	r2, [r5, #0x4]
10000f1a: 9104         	str	r1, [sp, #0x10]
10000f1c: 6161         	str	r1, [r4, #0x14]
10000f1e: 9807         	ldr	r0, [sp, #0x1c]
10000f20: 6800         	ldr	r0, [r0]
10000f22: 9007         	str	r0, [sp, #0x1c]
10000f24: 69e8         	ldr	r0, [r5, #0x1c]
10000f26: 4290         	cmp	r0, r2
10000f28: d201         	bhs	0x10000f2e <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x10e> @ imm = #0x2
10000f2a: 69e8         	ldr	r0, [r5, #0x1c]
10000f2c: 61ea         	str	r2, [r5, #0x1c]
10000f2e: 69a8         	ldr	r0, [r5, #0x18]
10000f30: 495c         	ldr	r1, [pc, #0x170]        @ 0x100010a4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x284>
10000f32: 4008         	ands	r0, r1
10000f34: 61a8         	str	r0, [r5, #0x18]
10000f36: 69e1         	ldr	r1, [r4, #0x1c]
10000f38: 4b5b         	ldr	r3, [pc, #0x16c]        @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
10000f3a: 2900         	cmp	r1, #0x0
10000f3c: d007         	beq	0x10000f4e <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x12e> @ imm = #0xe
10000f3e: 4618         	mov	r0, r3
10000f40: f000 f986    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x30c
10000f44: 1c40         	adds	r0, r0, #0x1
10000f46: f000 ff05    	bl	0x10001d54 <__delay>    @ imm = #0xe0a
10000f4a: 4b57         	ldr	r3, [pc, #0x15c]        @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
10000f4c: 9a09         	ldr	r2, [sp, #0x24]
10000f4e: 69a8         	ldr	r0, [r5, #0x18]
10000f50: 9908         	ldr	r1, [sp, #0x20]
10000f52: 4388         	bics	r0, r1
10000f54: 61a8         	str	r0, [r5, #0x18]
10000f56: 02f1         	lsls	r1, r6, #0xb
10000f58: 69a8         	ldr	r0, [r5, #0x18]
10000f5a: 9106         	str	r1, [sp, #0x18]
10000f5c: 4308         	orrs	r0, r1
10000f5e: 61a8         	str	r0, [r5, #0x18]
10000f60: 69e8         	ldr	r0, [r5, #0x1c]
10000f62: 61ea         	str	r2, [r5, #0x1c]
10000f64: 9807         	ldr	r0, [sp, #0x1c]
10000f66: 61e0         	str	r0, [r4, #0x1c]
10000f68: 6aa8         	ldr	r0, [r5, #0x28]
10000f6a: 4290         	cmp	r0, r2
10000f6c: d201         	bhs	0x10000f72 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x152> @ imm = #0x2
10000f6e: 6aa8         	ldr	r0, [r5, #0x28]
10000f70: 62aa         	str	r2, [r5, #0x28]
10000f72: 6a68         	ldr	r0, [r5, #0x24]
10000f74: 494b         	ldr	r1, [pc, #0x12c]        @ 0x100010a4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x284>
10000f76: 4008         	ands	r0, r1
10000f78: 6268         	str	r0, [r5, #0x24]
10000f7a: 6a21         	ldr	r1, [r4, #0x20]
10000f7c: 2900         	cmp	r1, #0x0
10000f7e: d007         	beq	0x10000f90 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x170> @ imm = #0xe
10000f80: 4618         	mov	r0, r3
10000f82: f000 f965    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x2ca
10000f86: 1c40         	adds	r0, r0, #0x1
10000f88: f000 fee4    	bl	0x10001d54 <__delay>    @ imm = #0xdc8
10000f8c: 4b46         	ldr	r3, [pc, #0x118]        @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
10000f8e: 9a09         	ldr	r2, [sp, #0x24]
10000f90: 6a68         	ldr	r0, [r5, #0x24]
10000f92: 9908         	ldr	r1, [sp, #0x20]
10000f94: 4388         	bics	r0, r1
10000f96: 6268         	str	r0, [r5, #0x24]
10000f98: 6a68         	ldr	r0, [r5, #0x24]
10000f9a: 9906         	ldr	r1, [sp, #0x18]
10000f9c: 4308         	orrs	r0, r1
10000f9e: 6268         	str	r0, [r5, #0x24]
10000fa0: 6aa8         	ldr	r0, [r5, #0x28]
10000fa2: 62aa         	str	r2, [r5, #0x28]
10000fa4: 9807         	ldr	r0, [sp, #0x1c]
10000fa6: 4290         	cmp	r0, r2
10000fa8: d103         	bne	0x10000fb2 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x192> @ imm = #0x6
10000faa: 6222         	str	r2, [r4, #0x20]
10000fac: 2000         	movs	r0, #0x0
10000fae: b00b         	add	sp, #0x2c
10000fb0: bdf0         	pop	{r4, r5, r6, r7, pc}
10000fb2: 6220         	str	r0, [r4, #0x20]
10000fb4: 493d         	ldr	r1, [pc, #0xf4]         @ 0x100010ac <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x28c>
10000fb6: 4288         	cmp	r0, r1
10000fb8: d202         	bhs	0x10000fc0 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x1a0> @ imm = #0x4
10000fba: 2000         	movs	r0, #0x0
10000fbc: b00b         	add	sp, #0x2c
10000fbe: bdf0         	pop	{r4, r5, r6, r7, pc}
10000fc0: 0636         	lsls	r6, r6, #0x18
10000fc2: 9603         	str	r6, [sp, #0xc]
10000fc4: 4288         	cmp	r0, r1
10000fc6: 4616         	mov	r6, r2
10000fc8: d019         	beq	0x10000ffe <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x1de> @ imm = #0x32
10000fca: 4606         	mov	r6, r0
10000fcc: f000 f940    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x280
10000fd0: 4937         	ldr	r1, [pc, #0xdc]         @ 0x100010b0 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x290>
10000fd2: 9002         	str	r0, [sp, #0x8]
10000fd4: 4341         	muls	r1, r0, r1
10000fd6: 198e         	adds	r6, r1, r6
10000fd8: 0230         	lsls	r0, r6, #0x8
10000fda: 4934         	ldr	r1, [pc, #0xd0]         @ 0x100010ac <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x28c>
10000fdc: f000 f938    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x270
10000fe0: 9001         	str	r0, [sp, #0x4]
10000fe2: 21b7         	movs	r1, #0xb7
10000fe4: 4630         	mov	r0, r6
10000fe6: f000 f933    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x266
10000fea: 9903         	ldr	r1, [sp, #0xc]
10000fec: 428e         	cmp	r6, r1
10000fee: 9901         	ldr	r1, [sp, #0x4]
10000ff0: d300         	blo	0x10000ff4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x1d4> @ imm = #0x0
10000ff2: 4601         	mov	r1, r0
10000ff4: 9802         	ldr	r0, [sp, #0x8]
10000ff6: 0200         	lsls	r0, r0, #0x8
10000ff8: 180e         	adds	r6, r1, r0
10000ffa: 9a09         	ldr	r2, [sp, #0x24]
10000ffc: 4b2a         	ldr	r3, [pc, #0xa8]         @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
10000ffe: 6b68         	ldr	r0, [r5, #0x34]
10001000: 4286         	cmp	r6, r0
10001002: d901         	bls	0x10001008 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x1e8> @ imm = #0x2
10001004: 6b68         	ldr	r0, [r5, #0x34]
10001006: 636e         	str	r6, [r5, #0x34]
10001008: 6b28         	ldr	r0, [r5, #0x30]
1000100a: 4926         	ldr	r1, [pc, #0x98]         @ 0x100010a4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x284>
1000100c: 4008         	ands	r0, r1
1000100e: 6328         	str	r0, [r5, #0x30]
10001010: 6a61         	ldr	r1, [r4, #0x24]
10001012: 2900         	cmp	r1, #0x0
10001014: d007         	beq	0x10001026 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x206> @ imm = #0xe
10001016: 4618         	mov	r0, r3
10001018: f000 f91a    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x234
1000101c: 1c40         	adds	r0, r0, #0x1
1000101e: f000 fe99    	bl	0x10001d54 <__delay>    @ imm = #0xd32
10001022: 4b21         	ldr	r3, [pc, #0x84]         @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
10001024: 9a09         	ldr	r2, [sp, #0x24]
10001026: 6b28         	ldr	r0, [r5, #0x30]
10001028: 9908         	ldr	r1, [sp, #0x20]
1000102a: 4388         	bics	r0, r1
1000102c: 6328         	str	r0, [r5, #0x30]
1000102e: 6b28         	ldr	r0, [r5, #0x30]
10001030: 9906         	ldr	r1, [sp, #0x18]
10001032: 4308         	orrs	r0, r1
10001034: 6328         	str	r0, [r5, #0x30]
10001036: 6b68         	ldr	r0, [r5, #0x34]
10001038: 636e         	str	r6, [r5, #0x34]
1000103a: 9807         	ldr	r0, [sp, #0x1c]
1000103c: 4286         	cmp	r6, r0
1000103e: d014         	beq	0x1000106a <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x24a> @ imm = #0x28
10001040: 4631         	mov	r1, r6
10001042: f000 f905    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x20a
10001046: 4631         	mov	r1, r6
10001048: 9009         	str	r0, [sp, #0x24]
1000104a: 4341         	muls	r1, r0, r1
1000104c: 9807         	ldr	r0, [sp, #0x1c]
1000104e: 1a40         	subs	r0, r0, r1
10001050: 9903         	ldr	r1, [sp, #0xc]
10001052: 4288         	cmp	r0, r1
10001054: d202         	bhs	0x1000105c <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x23c> @ imm = #0x4
10001056: 0200         	lsls	r0, r0, #0x8
10001058: 4631         	mov	r1, r6
1000105a: e000         	b	0x1000105e <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x23e> @ imm = #0x0
1000105c: 0a31         	lsrs	r1, r6, #0x8
1000105e: f000 f8f7    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x1ee
10001062: 9909         	ldr	r1, [sp, #0x24]
10001064: 0209         	lsls	r1, r1, #0x8
10001066: 1842         	adds	r2, r0, r1
10001068: 4b0f         	ldr	r3, [pc, #0x3c]         @ 0x100010a8 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x288>
1000106a: 6262         	str	r2, [r4, #0x24]
1000106c: 68e8         	ldr	r0, [r5, #0xc]
1000106e: 490d         	ldr	r1, [pc, #0x34]         @ 0x100010a4 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x284>
10001070: 4008         	ands	r0, r1
10001072: 60e8         	str	r0, [r5, #0xc]
10001074: 69a1         	ldr	r1, [r4, #0x18]
10001076: 2900         	cmp	r1, #0x0
10001078: d005         	beq	0x10001086 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670+0x266> @ imm = #0xa
1000107a: 4618         	mov	r0, r3
1000107c: f000 f8e8    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x1d0
10001080: 1c40         	adds	r0, r0, #0x1
10001082: f000 fe67    	bl	0x10001d54 <__delay>    @ imm = #0xcce
10001086: 68e8         	ldr	r0, [r5, #0xc]
10001088: 9908         	ldr	r1, [sp, #0x20]
1000108a: 4388         	bics	r0, r1
1000108c: 60e8         	str	r0, [r5, #0xc]
1000108e: 9804         	ldr	r0, [sp, #0x10]
10001090: 61a0         	str	r0, [r4, #0x18]
10001092: 68e8         	ldr	r0, [r5, #0xc]
10001094: 9906         	ldr	r1, [sp, #0x18]
10001096: 4308         	orrs	r0, r1
10001098: 60e8         	str	r0, [r5, #0xc]
1000109a: 980a         	ldr	r0, [sp, #0x28]
1000109c: b00b         	add	sp, #0x2c
1000109e: bdf0         	pop	{r4, r5, r6, r7, pc}

100010a0 <$d.1>:
100010a0: 3c 80 00 40  	.word	0x4000803c
100010a4: ff f7 ff ff  	.word	0xfffff7ff
100010a8: 40 59 73 07  	.word	0x07735940
100010ac: 1b b7 00 00  	.word	0x0000b71b
100010b0: e5 48 ff ff  	.word	0xffff48e5

100010b4 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3>:
100010b4: b5f0         	push	{r4, r5, r6, r7, lr}
100010b6: af03         	add	r7, sp, #0xc
100010b8: b097         	sub	sp, #0x5c
100010ba: 460d         	mov	r5, r1
100010bc: 4947         	ldr	r1, [pc, #0x11c]        @ 0x100011dc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x128>
100010be: 186b         	adds	r3, r5, r1
100010c0: 4947         	ldr	r1, [pc, #0x11c]        @ 0x100011e0 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x12c>
100010c2: 428b         	cmp	r3, r1
100010c4: d84d         	bhi	0x10001162 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0xae> @ imm = #0x9a
100010c6: 9204         	str	r2, [sp, #0x10]
100010c8: 9003         	str	r0, [sp, #0xc]
100010ca: 4c46         	ldr	r4, [pc, #0x118]        @ 0x100011e4 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x130>
100010cc: 1f26         	subs	r6, r4, #0x4
100010ce: 2055         	movs	r0, #0x55
100010d0: 0140         	lsls	r0, r0, #0x5
100010d2: 6030         	str	r0, [r6]
100010d4: 207d         	movs	r0, #0x7d
100010d6: 02c1         	lsls	r1, r0, #0xb
100010d8: 4628         	mov	r0, r5
100010da: f000 f8b9    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x172
100010de: 60a0         	str	r0, [r4, #0x8]
100010e0: 4841         	ldr	r0, [pc, #0x104]        @ 0x100011e8 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x134>
100010e2: 6030         	str	r0, [r6]
100010e4: 6820         	ldr	r0, [r4]
100010e6: 2800         	cmp	r0, #0x0
100010e8: d408         	bmi	0x100010fc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x48> @ imm = #0x10
100010ea: 6820         	ldr	r0, [r4]
100010ec: 2800         	cmp	r0, #0x0
100010ee: d405         	bmi	0x100010fc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x48> @ imm = #0xa
100010f0: 6820         	ldr	r0, [r4]
100010f2: 2800         	cmp	r0, #0x0
100010f4: d402         	bmi	0x100010fc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x48> @ imm = #0x4
100010f6: 6820         	ldr	r0, [r4]
100010f8: 2800         	cmp	r0, #0x0
100010fa: d5f3         	bpl	0x100010e4 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x30> @ imm = #-0x1a
100010fc: 493b         	ldr	r1, [pc, #0xec]         @ 0x100011ec <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x138>
100010fe: 4628         	mov	r0, r5
10001100: f000 f8a6    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #0x14c
10001104: b2c0         	uxtb	r0, r0
10001106: 2101         	movs	r1, #0x1
10001108: 9102         	str	r1, [sp, #0x8]
1000110a: 0249         	lsls	r1, r1, #0x9
1000110c: 1840         	adds	r0, r0, r1
1000110e: 4938         	ldr	r1, [pc, #0xe0]         @ 0x100011f0 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x13c>
10001110: 6008         	str	r0, [r1]
10001112: 9505         	str	r5, [sp, #0x14]
10001114: 4837         	ldr	r0, [pc, #0xdc]         @ 0x100011f4 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x140>
10001116: 2400         	movs	r4, #0x0
10001118: 6004         	str	r4, [r0]
1000111a: 9406         	str	r4, [sp, #0x18]
1000111c: 9407         	str	r4, [sp, #0x1c]
1000111e: 9408         	str	r4, [sp, #0x20]
10001120: 9409         	str	r4, [sp, #0x24]
10001122: 940f         	str	r4, [sp, #0x3c]
10001124: 940e         	str	r4, [sp, #0x38]
10001126: 940d         	str	r4, [sp, #0x34]
10001128: 4833         	ldr	r0, [pc, #0xcc]         @ 0x100011f8 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x144>
1000112a: 900c         	str	r0, [sp, #0x30]
1000112c: 900b         	str	r0, [sp, #0x2c]
1000112e: 900a         	str	r0, [sp, #0x28]
10001130: 4832         	ldr	r0, [pc, #0xc8]         @ 0x100011fc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x148>
10001132: 9015         	str	r0, [sp, #0x54]
10001134: 4832         	ldr	r0, [pc, #0xc8]         @ 0x10001200 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x14c>
10001136: 9014         	str	r0, [sp, #0x50]
10001138: 9804         	ldr	r0, [sp, #0x10]
1000113a: 9000         	str	r0, [sp]
1000113c: ae12         	add	r6, sp, #0x48
1000113e: aa14         	add	r2, sp, #0x50
10001140: ab06         	add	r3, sp, #0x18
10001142: 4630         	mov	r0, r6
10001144: 4629         	mov	r1, r5
10001146: f000 f963    	bl	0x10001410 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e> @ imm = #0x2c6
1000114a: 7830         	ldrb	r0, [r6]
1000114c: 2800         	cmp	r0, #0x0
1000114e: d00e         	beq	0x1000116e <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0xba> @ imm = #0x1c
10001150: a812         	add	r0, sp, #0x48
10001152: 7840         	ldrb	r0, [r0, #0x1]
10001154: 9903         	ldr	r1, [sp, #0xc]
10001156: 7088         	strb	r0, [r1, #0x2]
10001158: 20ff         	movs	r0, #0xff
1000115a: 3002         	adds	r0, #0x2
1000115c: 8008         	strh	r0, [r1]
1000115e: b017         	add	sp, #0x5c
10001160: bdf0         	pop	{r4, r5, r6, r7, pc}
10001162: 2100         	movs	r1, #0x0
10001164: 7081         	strb	r1, [r0, #0x2]
10001166: 2101         	movs	r1, #0x1
10001168: 8001         	strh	r1, [r0]
1000116a: b017         	add	sp, #0x5c
1000116c: bdf0         	pop	{r4, r5, r6, r7, pc}
1000116e: 9813         	ldr	r0, [sp, #0x4c]
10001170: 9010         	str	r0, [sp, #0x40]
10001172: 4824         	ldr	r0, [pc, #0x90]         @ 0x10001204 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x150>
10001174: 9015         	str	r0, [sp, #0x54]
10001176: 4824         	ldr	r0, [pc, #0x90]         @ 0x10001208 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x154>
10001178: 9014         	str	r0, [sp, #0x50]
1000117a: 9804         	ldr	r0, [sp, #0x10]
1000117c: 9000         	str	r0, [sp]
1000117e: ae12         	add	r6, sp, #0x48
10001180: aa14         	add	r2, sp, #0x50
10001182: ab06         	add	r3, sp, #0x18
10001184: 4630         	mov	r0, r6
10001186: 4629         	mov	r1, r5
10001188: f000 fa10    	bl	0x100015ac <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22> @ imm = #0x420
1000118c: 7830         	ldrb	r0, [r6]
1000118e: 2800         	cmp	r0, #0x0
10001190: d004         	beq	0x1000119c <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0xe8> @ imm = #0x8
10001192: a812         	add	r0, sp, #0x48
10001194: 7840         	ldrb	r0, [r0, #0x1]
10001196: 9b02         	ldr	r3, [sp, #0x8]
10001198: 4619         	mov	r1, r3
1000119a: e019         	b	0x100011d0 <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x11c> @ imm = #0x32
1000119c: 9813         	ldr	r0, [sp, #0x4c]
1000119e: 9011         	str	r0, [sp, #0x44]
100011a0: a806         	add	r0, sp, #0x18
100011a2: a905         	add	r1, sp, #0x14
100011a4: aa10         	add	r2, sp, #0x40
100011a6: ab11         	add	r3, sp, #0x44
100011a8: f7ff fe3a    	bl	0x10000e20 <rp2040_hal::clocks::ClocksManager::init_default::hb1a479cee5ef9670> @ imm = #-0x38c
100011ac: b2c1         	uxtb	r1, r0
100011ae: 2903         	cmp	r1, #0x3
100011b0: d10c         	bne	0x100011cc <rp2040_hal::clocks::init_clocks_and_plls::h8f2399b2f0c430a3+0x118> @ imm = #0x18
100011b2: 9803         	ldr	r0, [sp, #0xc]
100011b4: 1d00         	adds	r0, r0, #0x4
100011b6: a906         	add	r1, sp, #0x18
100011b8: c92c         	ldm	r1!, {r2, r3, r5}
100011ba: c02c         	stm	r0!, {r2, r3, r5}
100011bc: c92c         	ldm	r1!, {r2, r3, r5}
100011be: c02c         	stm	r0!, {r2, r3, r5}
100011c0: c96c         	ldm	r1!, {r2, r3, r5, r6}
100011c2: c06c         	stm	r0!, {r2, r3, r5, r6}
100011c4: 9803         	ldr	r0, [sp, #0xc]
100011c6: 7004         	strb	r4, [r0]
100011c8: b017         	add	sp, #0x5c
100011ca: bdf0         	pop	{r4, r5, r6, r7, pc}
100011cc: 2102         	movs	r1, #0x2
100011ce: 9b02         	ldr	r3, [sp, #0x8]
100011d0: 9a03         	ldr	r2, [sp, #0xc]
100011d2: 7090         	strb	r0, [r2, #0x2]
100011d4: 7051         	strb	r1, [r2, #0x1]
100011d6: 7013         	strb	r3, [r2]
100011d8: b017         	add	sp, #0x5c
100011da: bdf0         	pop	{r4, r5, r6, r7, pc}

100011dc <$d.3>:
100011dc: c0 bd f0 ff  	.word	0xfff0bdc0
100011e0: 80 9f d5 00  	.word	0x00d59f80
100011e4: 04 40 02 40  	.word	0x40024004
100011e8: 00 b0 fa 00  	.word	0x00fab000
100011ec: 40 42 0f 00  	.word	0x000f4240
100011f0: 2c 80 05 40  	.word	0x4005802c
100011f4: 78 80 00 40  	.word	0x40008078
100011f8: 00 1b b7 00  	.word	0x00b71b00
100011fc: 01 06 02 00  	.word	0x00020601
10001200: 00 2f 68 59  	.word	0x59682f00
10001204: 01 05 05 00  	.word	0x00050501
10001208: 00 8c 86 47  	.word	0x47868c00

1000120c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c>:
1000120c: 2001         	movs	r0, #0x1
1000120e: 0280         	lsls	r0, r0, #0xa
10001210: 4909         	ldr	r1, [pc, #0x24]         @ 0x10001238 <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c+0x2c>
10001212: 460a         	mov	r2, r1
10001214: 3a08         	subs	r2, #0x8
10001216: 6813         	ldr	r3, [r2]
10001218: 4383         	bics	r3, r0
1000121a: 6013         	str	r3, [r2]
1000121c: 680a         	ldr	r2, [r1]
1000121e: 4202         	tst	r2, r0
10001220: d108         	bne	0x10001234 <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c+0x28> @ imm = #0x10
10001222: 680a         	ldr	r2, [r1]
10001224: 4202         	tst	r2, r0
10001226: d105         	bne	0x10001234 <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c+0x28> @ imm = #0xa
10001228: 680a         	ldr	r2, [r1]
1000122a: 4202         	tst	r2, r0
1000122c: d102         	bne	0x10001234 <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c+0x28> @ imm = #0x4
1000122e: 680a         	ldr	r2, [r1]
10001230: 4202         	tst	r2, r0
10001232: d0f3         	beq	0x1000121c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_up::ha7243fa0b67e982c+0x10> @ imm = #-0x1a
10001234: 4770         	bx	lr
10001236: 46c0         	mov	r8, r8

10001238 <$d.61>:
10001238: 08 c0 00 40  	.word	0x4000c008

1000123c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_down::h7d7e5a2708d8b557>:
1000123c: 2001         	movs	r0, #0x1
1000123e: 0280         	lsls	r0, r0, #0xa
10001240: 4902         	ldr	r1, [pc, #0x8]          @ 0x1000124c <rp2040_hal::resets::<impl rp2040_hal::resets::private::SubsystemReset for rp2040_pac::PIO0>::reset_bring_down::h7d7e5a2708d8b557+0x10>
10001242: 680a         	ldr	r2, [r1]
10001244: 4302         	orrs	r2, r0
10001246: 600a         	str	r2, [r1]
10001248: 4770         	bx	lr
1000124a: 46c0         	mov	r8, r8

1000124c <$d.63>:
1000124c: 00 c0 00 40  	.word	0x4000c000

10001250 <_rphal_unsigned_divmod>:
10001250: 4a19         	ldr	r2, [pc, #0x64]         @ 0x100012b8 <_rphal_signed_divmod+0x34>
10001252: 6f93         	ldr	r3, [r2, #0x78]
10001254: 089b         	lsrs	r3, r3, #0x2
10001256: d208         	bhs	0x1000126a <_rphal_unsigned_divmod+0x1a> @ imm = #0x10
10001258: 6610         	str	r0, [r2, #0x60]
1000125a: 6651         	str	r1, [r2, #0x64]
1000125c: e7ff         	b	0x1000125e <_rphal_unsigned_divmod+0xe> @ imm = #-0x2
1000125e: e7ff         	b	0x10001260 <_rphal_unsigned_divmod+0x10> @ imm = #-0x2
10001260: e7ff         	b	0x10001262 <_rphal_unsigned_divmod+0x12> @ imm = #-0x2
10001262: e7ff         	b	0x10001264 <_rphal_unsigned_divmod+0x14> @ imm = #-0x2
10001264: 6f51         	ldr	r1, [r2, #0x74]
10001266: 6f10         	ldr	r0, [r2, #0x70]
10001268: 4770         	bx	lr
1000126a: b570         	push	{r4, r5, r6, lr}
1000126c: 6e13         	ldr	r3, [r2, #0x60]
1000126e: 6e54         	ldr	r4, [r2, #0x64]
10001270: 6f55         	ldr	r5, [r2, #0x74]
10001272: 6f16         	ldr	r6, [r2, #0x70]
10001274: f7ff fff0    	bl	0x10001258 <_rphal_unsigned_divmod+0x8> @ imm = #-0x20
10001278: 6613         	str	r3, [r2, #0x60]
1000127a: 6654         	str	r4, [r2, #0x64]
1000127c: 6755         	str	r5, [r2, #0x74]
1000127e: 6716         	str	r6, [r2, #0x70]
10001280: bd70         	pop	{r4, r5, r6, pc}
10001282: 46c0         	mov	r8, r8

10001284 <_rphal_signed_divmod>:
10001284: 4a0c         	ldr	r2, [pc, #0x30]         @ 0x100012b8 <_rphal_signed_divmod+0x34>
10001286: 6f93         	ldr	r3, [r2, #0x78]
10001288: 089b         	lsrs	r3, r3, #0x2
1000128a: d208         	bhs	0x1000129e <_rphal_signed_divmod+0x1a> @ imm = #0x10
1000128c: 6690         	str	r0, [r2, #0x68]
1000128e: 66d1         	str	r1, [r2, #0x6c]
10001290: e7ff         	b	0x10001292 <_rphal_signed_divmod+0xe> @ imm = #-0x2
10001292: e7ff         	b	0x10001294 <_rphal_signed_divmod+0x10> @ imm = #-0x2
10001294: e7ff         	b	0x10001296 <_rphal_signed_divmod+0x12> @ imm = #-0x2
10001296: e7ff         	b	0x10001298 <_rphal_signed_divmod+0x14> @ imm = #-0x2
10001298: 6f51         	ldr	r1, [r2, #0x74]
1000129a: 6f10         	ldr	r0, [r2, #0x70]
1000129c: 4770         	bx	lr
1000129e: b570         	push	{r4, r5, r6, lr}
100012a0: 6e13         	ldr	r3, [r2, #0x60]
100012a2: 6e54         	ldr	r4, [r2, #0x64]
100012a4: 6f55         	ldr	r5, [r2, #0x74]
100012a6: 6f16         	ldr	r6, [r2, #0x70]
100012a8: f7ff fff0    	bl	0x1000128c <_rphal_signed_divmod+0x8> @ imm = #-0x20
100012ac: 6613         	str	r3, [r2, #0x60]
100012ae: 6654         	str	r4, [r2, #0x64]
100012b0: 6755         	str	r5, [r2, #0x74]
100012b2: 6716         	str	r6, [r2, #0x70]
100012b4: bd70         	pop	{r4, r5, r6, pc}
100012b6: 0000         	movs	r0, r0

100012b8 <$d.139>:
100012b8: 00 00 00 d0  	.word	0xd0000000

100012bc <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09>:
100012bc: 480a         	ldr	r0, [pc, #0x28]         @ 0x100012e8 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x2c>
100012be: 6801         	ldr	r1, [r0]
100012c0: 07c9         	lsls	r1, r1, #0x1f
100012c2: d00f         	beq	0x100012e4 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x28> @ imm = #0x1e
100012c4: 6881         	ldr	r1, [r0, #0x8]
100012c6: 6801         	ldr	r1, [r0]
100012c8: 07c9         	lsls	r1, r1, #0x1f
100012ca: d00b         	beq	0x100012e4 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x28> @ imm = #0x16
100012cc: 6881         	ldr	r1, [r0, #0x8]
100012ce: 6801         	ldr	r1, [r0]
100012d0: 07c9         	lsls	r1, r1, #0x1f
100012d2: d007         	beq	0x100012e4 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x28> @ imm = #0xe
100012d4: 6881         	ldr	r1, [r0, #0x8]
100012d6: 6801         	ldr	r1, [r0]
100012d8: 07c9         	lsls	r1, r1, #0x1f
100012da: d003         	beq	0x100012e4 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x28> @ imm = #0x6
100012dc: 6881         	ldr	r1, [r0, #0x8]
100012de: 6801         	ldr	r1, [r0]
100012e0: 07c9         	lsls	r1, r1, #0x1f
100012e2: d1ef         	bne	0x100012c4 <rp2040_hal::sio::SioFifo::drain::h4de5b433a45dec09+0x8> @ imm = #-0x22
100012e4: 4770         	bx	lr
100012e6: 46c0         	mov	r8, r8

100012e8 <$d.16>:
100012e8: 50 00 00 d0  	.word	0xd0000050

100012ec <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084>:
100012ec: b5b0         	push	{r4, r5, r7, lr}
100012ee: af02         	add	r7, sp, #0x8
100012f0: 460c         	mov	r4, r1
100012f2: 4d07         	ldr	r5, [pc, #0x1c]         @ 0x10001310 <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084+0x24>
100012f4: 6828         	ldr	r0, [r5]
100012f6: 0780         	lsls	r0, r0, #0x1e
100012f8: d404         	bmi	0x10001304 <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084+0x18> @ imm = #0x8
100012fa: f000 fd30    	bl	0x10001d5e <__nop>      @ imm = #0xa60
100012fe: 6828         	ldr	r0, [r5]
10001300: 0780         	lsls	r0, r0, #0x1e
10001302: d5fa         	bpl	0x100012fa <rp2040_hal::sio::SioFifo::write_blocking::hf10c7064a6952084+0xe> @ imm = #-0xc
10001304: 606c         	str	r4, [r5, #0x4]
10001306: f000 fd2f    	bl	0x10001d68 <__sev>      @ imm = #0xa5e
1000130a: f000 fd2d    	bl	0x10001d68 <__sev>      @ imm = #0xa5a
1000130e: bdb0         	pop	{r4, r5, r7, pc}

10001310 <$d.18>:
10001310: 50 00 00 d0  	.word	0xd0000050

10001314 <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794>:
10001314: b5d0         	push	{r4, r6, r7, lr}
10001316: af02         	add	r7, sp, #0x8
10001318: 4c05         	ldr	r4, [pc, #0x14]         @ 0x10001330 <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794+0x1c>
1000131a: 6820         	ldr	r0, [r4]
1000131c: 07c0         	lsls	r0, r0, #0x1f
1000131e: d104         	bne	0x1000132a <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794+0x16> @ imm = #0x8
10001320: f000 fd26    	bl	0x10001d70 <__wfe>      @ imm = #0xa4c
10001324: 6820         	ldr	r0, [r4]
10001326: 07c0         	lsls	r0, r0, #0x1f
10001328: d0fa         	beq	0x10001320 <rp2040_hal::sio::SioFifo::read_blocking::hbf5dbfb32aa32794+0xc> @ imm = #-0xc
1000132a: 68a0         	ldr	r0, [r4, #0x8]
1000132c: bdd0         	pop	{r4, r6, r7, pc}
1000132e: 46c0         	mov	r8, r8

10001330 <$d.20>:
10001330: 50 00 00 d0  	.word	0xd0000050

10001334 <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f>:
10001334: 2001         	movs	r0, #0x1
10001336: 0540         	lsls	r0, r0, #0x15
10001338: 4909         	ldr	r1, [pc, #0x24]         @ 0x10001360 <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f+0x2c>
1000133a: 680a         	ldr	r2, [r1]
1000133c: 4302         	orrs	r2, r0
1000133e: 600a         	str	r2, [r1]
10001340: 680a         	ldr	r2, [r1]
10001342: 4382         	bics	r2, r0
10001344: 600a         	str	r2, [r1]
10001346: 688a         	ldr	r2, [r1, #0x8]
10001348: 4202         	tst	r2, r0
1000134a: d108         	bne	0x1000135e <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f+0x2a> @ imm = #0x10
1000134c: 688a         	ldr	r2, [r1, #0x8]
1000134e: 4202         	tst	r2, r0
10001350: d105         	bne	0x1000135e <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f+0x2a> @ imm = #0xa
10001352: 688a         	ldr	r2, [r1, #0x8]
10001354: 4202         	tst	r2, r0
10001356: d102         	bne	0x1000135e <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f+0x2a> @ imm = #0x4
10001358: 688a         	ldr	r2, [r1, #0x8]
1000135a: 4202         	tst	r2, r0
1000135c: d0f3         	beq	0x10001346 <rp2040_hal::timer::Timer::new::he620d0f218f1fc0f+0x12> @ imm = #-0x1a
1000135e: 4770         	bx	lr

10001360 <$d.1>:
10001360: 00 c0 00 40  	.word	0x4000c000

10001364 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1>:
10001364: b5d0         	push	{r4, r6, r7, lr}
10001366: af02         	add	r7, sp, #0x8
10001368: 4a06         	ldr	r2, [pc, #0x18]         @ 0x10001384 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1+0x20>
1000136a: 6813         	ldr	r3, [r2]
1000136c: 6850         	ldr	r0, [r2, #0x4]
1000136e: 6814         	ldr	r4, [r2]
10001370: 42a3         	cmp	r3, r4
10001372: 4619         	mov	r1, r3
10001374: d004         	beq	0x10001380 <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1+0x1c> @ imm = #0x8
10001376: 6850         	ldr	r0, [r2, #0x4]
10001378: 6813         	ldr	r3, [r2]
1000137a: 429c         	cmp	r4, r3
1000137c: 4621         	mov	r1, r4
1000137e: d1f5         	bne	0x1000136c <rp2040_hal::timer::Timer::get_counter::hc2cadb07c09548b1+0x8> @ imm = #-0x16
10001380: bdd0         	pop	{r4, r6, r7, pc}
10001382: 46c0         	mov	r8, r8

10001384 <$d.3>:
10001384: 24 40 05 40  	.word	0x40054024

10001388 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38>:
10001388: b5f0         	push	{r4, r5, r6, r7, lr}
1000138a: af03         	add	r7, sp, #0xc
1000138c: b087         	sub	sp, #0x1c
1000138e: c806         	ldm	r0!, {r1, r2}
10001390: 3808         	subs	r0, #0x8
10001392: 430a         	orrs	r2, r1
10001394: d026         	beq	0x100013e4 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x5c> @ imm = #0x4c
10001396: 6882         	ldr	r2, [r0, #0x8]
10001398: 68c1         	ldr	r1, [r0, #0xc]
1000139a: 9100         	str	r1, [sp]
1000139c: 4d18         	ldr	r5, [pc, #0x60]         @ 0x10001400 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x78>
1000139e: 682e         	ldr	r6, [r5]
100013a0: 686b         	ldr	r3, [r5, #0x4]
100013a2: 682c         	ldr	r4, [r5]
100013a4: 42a6         	cmp	r6, r4
100013a6: 4631         	mov	r1, r6
100013a8: d004         	beq	0x100013b4 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x2c> @ imm = #0x8
100013aa: 686b         	ldr	r3, [r5, #0x4]
100013ac: 682e         	ldr	r6, [r5]
100013ae: 42b4         	cmp	r4, r6
100013b0: 4621         	mov	r1, r4
100013b2: d1f5         	bne	0x100013a0 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x18> @ imm = #-0x16
100013b4: 1a9c         	subs	r4, r3, r2
100013b6: 460c         	mov	r4, r1
100013b8: 9e00         	ldr	r6, [sp]
100013ba: 41b4         	sbcs	r4, r6
100013bc: d309         	blo	0x100013d2 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x4a> @ imm = #0x12
100013be: 2400         	movs	r4, #0x0
100013c0: 6044         	str	r4, [r0, #0x4]
100013c2: 2401         	movs	r4, #0x1
100013c4: 6004         	str	r4, [r0]
100013c6: 6904         	ldr	r4, [r0, #0x10]
100013c8: 6945         	ldr	r5, [r0, #0x14]
100013ca: 18a4         	adds	r4, r4, r2
100013cc: 6084         	str	r4, [r0, #0x8]
100013ce: 4175         	adcs	r5, r6
100013d0: 60c5         	str	r5, [r0, #0xc]
100013d2: 1a98         	subs	r0, r3, r2
100013d4: 41b1         	sbcs	r1, r6
100013d6: d302         	blo	0x100013de <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x56> @ imm = #0x4
100013d8: 2000         	movs	r0, #0x0
100013da: b007         	add	sp, #0x1c
100013dc: bdf0         	pop	{r4, r5, r6, r7, pc}
100013de: 2001         	movs	r0, #0x1
100013e0: b007         	add	sp, #0x1c
100013e2: bdf0         	pop	{r4, r5, r6, r7, pc}
100013e4: 2000         	movs	r0, #0x0
100013e6: 9005         	str	r0, [sp, #0x14]
100013e8: 2101         	movs	r1, #0x1
100013ea: 9102         	str	r1, [sp, #0x8]
100013ec: 4905         	ldr	r1, [pc, #0x14]         @ 0x10001404 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x7c>
100013ee: 9101         	str	r1, [sp, #0x4]
100013f0: 9004         	str	r0, [sp, #0x10]
100013f2: 4805         	ldr	r0, [pc, #0x14]         @ 0x10001408 <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x80>
100013f4: 9003         	str	r0, [sp, #0xc]
100013f6: a801         	add	r0, sp, #0x4
100013f8: 4904         	ldr	r1, [pc, #0x10]         @ 0x1000140c <<rp2040_hal::timer::CountDown as embedded_hal::timer::CountDown>::wait::h8fb5469c07f4aa38+0x84>
100013fa: f000 fccd    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x99a
100013fe: defe         	trap

10001400 <$d.15>:
10001400: 24 40 05 40  	.word	0x40054024
10001404: 78 37 00 10  	.word	0x10003778
10001408: 5c 37 00 10  	.word	0x1000375c
1000140c: e4 37 00 10  	.word	0x100037e4

10001410 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e>:
10001410: b5f0         	push	{r4, r5, r6, r7, lr}
10001412: af03         	add	r7, sp, #0xc
10001414: b085         	sub	sp, #0x14
10001416: 9103         	str	r1, [sp, #0xc]
10001418: 9004         	str	r0, [sp, #0x10]
1000141a: 485d         	ldr	r0, [pc, #0x174]        @ 0x10001590 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x180>
1000141c: 4d5d         	ldr	r5, [pc, #0x174]        @ 0x10001594 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x184>
1000141e: 68ec         	ldr	r4, [r5, #0xc]
10001420: 2101         	movs	r1, #0x1
10001422: 438c         	bics	r4, r1
10001424: 60ec         	str	r4, [r5, #0xc]
10001426: 6158         	str	r0, [r3, #0x14]
10001428: 696c         	ldr	r4, [r5, #0x14]
1000142a: 2c01         	cmp	r4, #0x1
1000142c: d02a         	beq	0x10001484 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x74> @ imm = #0x54
1000142e: 68ec         	ldr	r4, [r5, #0xc]
10001430: 438c         	bics	r4, r1
10001432: 60ec         	str	r4, [r5, #0xc]
10001434: 6158         	str	r0, [r3, #0x14]
10001436: 696c         	ldr	r4, [r5, #0x14]
10001438: 2c01         	cmp	r4, #0x1
1000143a: d023         	beq	0x10001484 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x74> @ imm = #0x46
1000143c: 68ec         	ldr	r4, [r5, #0xc]
1000143e: 438c         	bics	r4, r1
10001440: 60ec         	str	r4, [r5, #0xc]
10001442: 6158         	str	r0, [r3, #0x14]
10001444: 696c         	ldr	r4, [r5, #0x14]
10001446: 2c01         	cmp	r4, #0x1
10001448: d01c         	beq	0x10001484 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x74> @ imm = #0x38
1000144a: 68ec         	ldr	r4, [r5, #0xc]
1000144c: 438c         	bics	r4, r1
1000144e: 60ec         	str	r4, [r5, #0xc]
10001450: 6158         	str	r0, [r3, #0x14]
10001452: 696c         	ldr	r4, [r5, #0x14]
10001454: 2c01         	cmp	r4, #0x1
10001456: d1e2         	bne	0x1000141e <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0xe> @ imm = #-0x3c
10001458: e014         	b	0x10001484 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x74> @ imm = #0x28
1000145a: 682e         	ldr	r6, [r5]
1000145c: 43a6         	bics	r6, r4
1000145e: 602e         	str	r6, [r5]
10001460: 6118         	str	r0, [r3, #0x10]
10001462: 68ae         	ldr	r6, [r5, #0x8]
10001464: 2e01         	cmp	r6, #0x1
10001466: d015         	beq	0x10001494 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x84> @ imm = #0x2a
10001468: 682e         	ldr	r6, [r5]
1000146a: 43a6         	bics	r6, r4
1000146c: 602e         	str	r6, [r5]
1000146e: 6118         	str	r0, [r3, #0x10]
10001470: 68ae         	ldr	r6, [r5, #0x8]
10001472: 2e01         	cmp	r6, #0x1
10001474: d00e         	beq	0x10001494 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x84> @ imm = #0x1c
10001476: 682e         	ldr	r6, [r5]
10001478: 43a6         	bics	r6, r4
1000147a: 602e         	str	r6, [r5]
1000147c: 6118         	str	r0, [r3, #0x10]
1000147e: 68ae         	ldr	r6, [r5, #0x8]
10001480: 2e01         	cmp	r6, #0x1
10001482: d007         	beq	0x10001494 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x84> @ imm = #0xe
10001484: 682e         	ldr	r6, [r5]
10001486: 2403         	movs	r4, #0x3
10001488: 43a6         	bics	r6, r4
1000148a: 602e         	str	r6, [r5]
1000148c: 6118         	str	r0, [r3, #0x10]
1000148e: 68ae         	ldr	r6, [r5, #0x8]
10001490: 2e01         	cmp	r6, #0x1
10001492: d1e2         	bne	0x1000145a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x4a> @ imm = #-0x3c
10001494: 6815         	ldr	r5, [r2]
10001496: 4840         	ldr	r0, [pc, #0x100]        @ 0x10001598 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x188>
10001498: 1828         	adds	r0, r5, r0
1000149a: 4b40         	ldr	r3, [pc, #0x100]        @ 0x1000159c <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x18c>
1000149c: 4298         	cmp	r0, r3
1000149e: d86a         	bhi	0x10001576 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x166> @ imm = #0xd4
100014a0: 7956         	ldrb	r6, [r2, #0x5]
100014a2: 1e73         	subs	r3, r6, #0x1
100014a4: 2002         	movs	r0, #0x2
100014a6: 2b05         	cmp	r3, #0x5
100014a8: d866         	bhi	0x10001578 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x168> @ imm = #0xcc
100014aa: 9602         	str	r6, [sp, #0x8]
100014ac: 7993         	ldrb	r3, [r2, #0x6]
100014ae: 9301         	str	r3, [sp, #0x4]
100014b0: 1e5b         	subs	r3, r3, #0x1
100014b2: 2b05         	cmp	r3, #0x5
100014b4: 460e         	mov	r6, r1
100014b6: d860         	bhi	0x1000157a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x16a> @ imm = #0xc0
100014b8: 7911         	ldrb	r1, [r2, #0x4]
100014ba: 2900         	cmp	r1, #0x0
100014bc: d062         	beq	0x10001584 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x174> @ imm = #0xc4
100014be: 9803         	ldr	r0, [sp, #0xc]
100014c0: 9103         	str	r1, [sp, #0xc]
100014c2: f7ff fec5    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x276
100014c6: 4601         	mov	r1, r0
100014c8: 4835         	ldr	r0, [pc, #0xd4]         @ 0x100015a0 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x190>
100014ca: 4281         	cmp	r1, r0
100014cc: d35c         	blo	0x10001588 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x178> @ imm = #0xb8
100014ce: 0928         	lsrs	r0, r5, #0x4
100014d0: 4288         	cmp	r0, r1
100014d2: 4620         	mov	r0, r4
100014d4: d951         	bls	0x1000157a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x16a> @ imm = #0xa2
100014d6: 4628         	mov	r0, r5
100014d8: 460d         	mov	r5, r1
100014da: f7ff feb9    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x28e
100014de: b281         	uxth	r1, r0
100014e0: 3910         	subs	r1, #0x10
100014e2: 0909         	lsrs	r1, r1, #0x4
100014e4: 2912         	cmp	r1, #0x12
100014e6: d851         	bhi	0x1000158c <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x17c> @ imm = #0xa2
100014e8: 2101         	movs	r1, #0x1
100014ea: 0309         	lsls	r1, r1, #0xc
100014ec: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x100015a4 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x194>
100014ee: 4613         	mov	r3, r2
100014f0: 3b08         	subs	r3, #0x8
100014f2: 681c         	ldr	r4, [r3]
100014f4: 438c         	bics	r4, r1
100014f6: 601c         	str	r4, [r3]
100014f8: 4345         	muls	r5, r0, r5
100014fa: 6813         	ldr	r3, [r2]
100014fc: 420b         	tst	r3, r1
100014fe: d108         	bne	0x10001512 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x102> @ imm = #0x10
10001500: 6813         	ldr	r3, [r2]
10001502: 420b         	tst	r3, r1
10001504: d105         	bne	0x10001512 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x102> @ imm = #0xa
10001506: 6813         	ldr	r3, [r2]
10001508: 420b         	tst	r3, r1
1000150a: d102         	bne	0x10001512 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x102> @ imm = #0x4
1000150c: 6813         	ldr	r3, [r2]
1000150e: 420b         	tst	r3, r1
10001510: d0f3         	beq	0x100014fa <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0xea> @ imm = #-0x1a
10001512: 4c25         	ldr	r4, [pc, #0x94]         @ 0x100015a8 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x198>
10001514: 222d         	movs	r2, #0x2d
10001516: 6062         	str	r2, [r4, #0x4]
10001518: 2600         	movs	r6, #0x0
1000151a: 60a6         	str	r6, [r4, #0x8]
1000151c: 223f         	movs	r2, #0x3f
1000151e: 9b03         	ldr	r3, [sp, #0xc]
10001520: 4013         	ands	r3, r2
10001522: 6023         	str	r3, [r4]
10001524: 1e49         	subs	r1, r1, #0x1
10001526: 4008         	ands	r0, r1
10001528: 60a0         	str	r0, [r4, #0x8]
1000152a: 6860         	ldr	r0, [r4, #0x4]
1000152c: 2121         	movs	r1, #0x21
1000152e: 4388         	bics	r0, r1
10001530: 6060         	str	r0, [r4, #0x4]
10001532: 9902         	ldr	r1, [sp, #0x8]
10001534: 9a01         	ldr	r2, [sp, #0x4]
10001536: 4351         	muls	r1, r2, r1
10001538: 6820         	ldr	r0, [r4]
1000153a: 2800         	cmp	r0, #0x0
1000153c: d408         	bmi	0x10001550 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x140> @ imm = #0x10
1000153e: 6820         	ldr	r0, [r4]
10001540: 2800         	cmp	r0, #0x0
10001542: d405         	bmi	0x10001550 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x140> @ imm = #0xa
10001544: 6820         	ldr	r0, [r4]
10001546: 2800         	cmp	r0, #0x0
10001548: d402         	bmi	0x10001550 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x140> @ imm = #0x4
1000154a: 6820         	ldr	r0, [r4]
1000154c: 2800         	cmp	r0, #0x0
1000154e: d5f3         	bpl	0x10001538 <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x128> @ imm = #-0x1a
10001550: 9802         	ldr	r0, [sp, #0x8]
10001552: 0740         	lsls	r0, r0, #0x1d
10001554: 0b40         	lsrs	r0, r0, #0xd
10001556: 0752         	lsls	r2, r2, #0x1d
10001558: 0c52         	lsrs	r2, r2, #0x11
1000155a: 1810         	adds	r0, r2, r0
1000155c: 60e0         	str	r0, [r4, #0xc]
1000155e: 4628         	mov	r0, r5
10001560: f7ff fe76    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x314
10001564: 9a04         	ldr	r2, [sp, #0x10]
10001566: 6050         	str	r0, [r2, #0x4]
10001568: 6860         	ldr	r0, [r4, #0x4]
1000156a: 2108         	movs	r1, #0x8
1000156c: 4388         	bics	r0, r1
1000156e: 6060         	str	r0, [r4, #0x4]
10001570: 7016         	strb	r6, [r2]
10001572: b005         	add	sp, #0x14
10001574: bdf0         	pop	{r4, r5, r6, r7, pc}
10001576: 2000         	movs	r0, #0x0
10001578: 460e         	mov	r6, r1
1000157a: 9a04         	ldr	r2, [sp, #0x10]
1000157c: 7050         	strb	r0, [r2, #0x1]
1000157e: 7016         	strb	r6, [r2]
10001580: b005         	add	sp, #0x14
10001582: bdf0         	pop	{r4, r5, r6, r7, pc}
10001584: 2004         	movs	r0, #0x4
10001586: e7f8         	b	0x1000157a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x16a> @ imm = #-0x10
10001588: 4620         	mov	r0, r4
1000158a: e7f6         	b	0x1000157a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x16a> @ imm = #-0x14
1000158c: 2001         	movs	r0, #0x1
1000158e: e7f4         	b	0x1000157a <rp2040_hal::pll::setup_pll_blocking::h8c02efacb4dba28e+0x16a> @ imm = #-0x18

10001590 <$d.1>:
10001590: 00 1b b7 00  	.word	0x00b71b00
10001594: 30 80 00 40  	.word	0x40008030
10001598: 00 7c 28 e8  	.word	0xe8287c00
1000159c: 00 8c 86 47  	.word	0x47868c00
100015a0: 40 4b 4c 00  	.word	0x004c4b40
100015a4: 08 c0 00 40  	.word	0x4000c008
100015a8: 00 80 02 40  	.word	0x40028000

100015ac <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22>:
100015ac: b5f0         	push	{r4, r5, r6, r7, lr}
100015ae: af03         	add	r7, sp, #0xc
100015b0: b085         	sub	sp, #0x14
100015b2: 9103         	str	r1, [sp, #0xc]
100015b4: 9004         	str	r0, [sp, #0x10]
100015b6: 485d         	ldr	r0, [pc, #0x174]        @ 0x1000172c <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x180>
100015b8: 4d5d         	ldr	r5, [pc, #0x174]        @ 0x10001730 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x184>
100015ba: 68ec         	ldr	r4, [r5, #0xc]
100015bc: 2101         	movs	r1, #0x1
100015be: 438c         	bics	r4, r1
100015c0: 60ec         	str	r4, [r5, #0xc]
100015c2: 6158         	str	r0, [r3, #0x14]
100015c4: 696c         	ldr	r4, [r5, #0x14]
100015c6: 2c01         	cmp	r4, #0x1
100015c8: d02a         	beq	0x10001620 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x74> @ imm = #0x54
100015ca: 68ec         	ldr	r4, [r5, #0xc]
100015cc: 438c         	bics	r4, r1
100015ce: 60ec         	str	r4, [r5, #0xc]
100015d0: 6158         	str	r0, [r3, #0x14]
100015d2: 696c         	ldr	r4, [r5, #0x14]
100015d4: 2c01         	cmp	r4, #0x1
100015d6: d023         	beq	0x10001620 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x74> @ imm = #0x46
100015d8: 68ec         	ldr	r4, [r5, #0xc]
100015da: 438c         	bics	r4, r1
100015dc: 60ec         	str	r4, [r5, #0xc]
100015de: 6158         	str	r0, [r3, #0x14]
100015e0: 696c         	ldr	r4, [r5, #0x14]
100015e2: 2c01         	cmp	r4, #0x1
100015e4: d01c         	beq	0x10001620 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x74> @ imm = #0x38
100015e6: 68ec         	ldr	r4, [r5, #0xc]
100015e8: 438c         	bics	r4, r1
100015ea: 60ec         	str	r4, [r5, #0xc]
100015ec: 6158         	str	r0, [r3, #0x14]
100015ee: 696c         	ldr	r4, [r5, #0x14]
100015f0: 2c01         	cmp	r4, #0x1
100015f2: d1e2         	bne	0x100015ba <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0xe> @ imm = #-0x3c
100015f4: e014         	b	0x10001620 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x74> @ imm = #0x28
100015f6: 682e         	ldr	r6, [r5]
100015f8: 43a6         	bics	r6, r4
100015fa: 602e         	str	r6, [r5]
100015fc: 6118         	str	r0, [r3, #0x10]
100015fe: 68ae         	ldr	r6, [r5, #0x8]
10001600: 2e01         	cmp	r6, #0x1
10001602: d015         	beq	0x10001630 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x84> @ imm = #0x2a
10001604: 682e         	ldr	r6, [r5]
10001606: 43a6         	bics	r6, r4
10001608: 602e         	str	r6, [r5]
1000160a: 6118         	str	r0, [r3, #0x10]
1000160c: 68ae         	ldr	r6, [r5, #0x8]
1000160e: 2e01         	cmp	r6, #0x1
10001610: d00e         	beq	0x10001630 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x84> @ imm = #0x1c
10001612: 682e         	ldr	r6, [r5]
10001614: 43a6         	bics	r6, r4
10001616: 602e         	str	r6, [r5]
10001618: 6118         	str	r0, [r3, #0x10]
1000161a: 68ae         	ldr	r6, [r5, #0x8]
1000161c: 2e01         	cmp	r6, #0x1
1000161e: d007         	beq	0x10001630 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x84> @ imm = #0xe
10001620: 682e         	ldr	r6, [r5]
10001622: 2403         	movs	r4, #0x3
10001624: 43a6         	bics	r6, r4
10001626: 602e         	str	r6, [r5]
10001628: 6118         	str	r0, [r3, #0x10]
1000162a: 68ae         	ldr	r6, [r5, #0x8]
1000162c: 2e01         	cmp	r6, #0x1
1000162e: d1e2         	bne	0x100015f6 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x4a> @ imm = #-0x3c
10001630: 6815         	ldr	r5, [r2]
10001632: 4840         	ldr	r0, [pc, #0x100]        @ 0x10001734 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x188>
10001634: 1828         	adds	r0, r5, r0
10001636: 4b40         	ldr	r3, [pc, #0x100]        @ 0x10001738 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x18c>
10001638: 4298         	cmp	r0, r3
1000163a: d86a         	bhi	0x10001712 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x166> @ imm = #0xd4
1000163c: 7956         	ldrb	r6, [r2, #0x5]
1000163e: 1e73         	subs	r3, r6, #0x1
10001640: 2002         	movs	r0, #0x2
10001642: 2b05         	cmp	r3, #0x5
10001644: d866         	bhi	0x10001714 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x168> @ imm = #0xcc
10001646: 9602         	str	r6, [sp, #0x8]
10001648: 7993         	ldrb	r3, [r2, #0x6]
1000164a: 9301         	str	r3, [sp, #0x4]
1000164c: 1e5b         	subs	r3, r3, #0x1
1000164e: 2b05         	cmp	r3, #0x5
10001650: 460e         	mov	r6, r1
10001652: d860         	bhi	0x10001716 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x16a> @ imm = #0xc0
10001654: 7911         	ldrb	r1, [r2, #0x4]
10001656: 2900         	cmp	r1, #0x0
10001658: d062         	beq	0x10001720 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x174> @ imm = #0xc4
1000165a: 9803         	ldr	r0, [sp, #0xc]
1000165c: 9103         	str	r1, [sp, #0xc]
1000165e: f7ff fdf7    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x412
10001662: 4601         	mov	r1, r0
10001664: 4835         	ldr	r0, [pc, #0xd4]         @ 0x1000173c <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x190>
10001666: 4281         	cmp	r1, r0
10001668: d35c         	blo	0x10001724 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x178> @ imm = #0xb8
1000166a: 0928         	lsrs	r0, r5, #0x4
1000166c: 4288         	cmp	r0, r1
1000166e: 4620         	mov	r0, r4
10001670: d951         	bls	0x10001716 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x16a> @ imm = #0xa2
10001672: 4628         	mov	r0, r5
10001674: 460d         	mov	r5, r1
10001676: f7ff fdeb    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x42a
1000167a: b281         	uxth	r1, r0
1000167c: 3910         	subs	r1, #0x10
1000167e: 0909         	lsrs	r1, r1, #0x4
10001680: 2912         	cmp	r1, #0x12
10001682: d851         	bhi	0x10001728 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x17c> @ imm = #0xa2
10001684: 2101         	movs	r1, #0x1
10001686: 0349         	lsls	r1, r1, #0xd
10001688: 4a2d         	ldr	r2, [pc, #0xb4]         @ 0x10001740 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x194>
1000168a: 4613         	mov	r3, r2
1000168c: 3b08         	subs	r3, #0x8
1000168e: 681c         	ldr	r4, [r3]
10001690: 438c         	bics	r4, r1
10001692: 601c         	str	r4, [r3]
10001694: 4345         	muls	r5, r0, r5
10001696: 6813         	ldr	r3, [r2]
10001698: 420b         	tst	r3, r1
1000169a: d108         	bne	0x100016ae <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x102> @ imm = #0x10
1000169c: 6813         	ldr	r3, [r2]
1000169e: 420b         	tst	r3, r1
100016a0: d105         	bne	0x100016ae <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x102> @ imm = #0xa
100016a2: 6813         	ldr	r3, [r2]
100016a4: 420b         	tst	r3, r1
100016a6: d102         	bne	0x100016ae <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x102> @ imm = #0x4
100016a8: 6813         	ldr	r3, [r2]
100016aa: 420b         	tst	r3, r1
100016ac: d0f3         	beq	0x10001696 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0xea> @ imm = #-0x1a
100016ae: 4c25         	ldr	r4, [pc, #0x94]         @ 0x10001744 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x198>
100016b0: 212d         	movs	r1, #0x2d
100016b2: 6061         	str	r1, [r4, #0x4]
100016b4: 2600         	movs	r6, #0x0
100016b6: 60a6         	str	r6, [r4, #0x8]
100016b8: 213f         	movs	r1, #0x3f
100016ba: 9a03         	ldr	r2, [sp, #0xc]
100016bc: 400a         	ands	r2, r1
100016be: 6022         	str	r2, [r4]
100016c0: 4921         	ldr	r1, [pc, #0x84]         @ 0x10001748 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x19c>
100016c2: 4008         	ands	r0, r1
100016c4: 60a0         	str	r0, [r4, #0x8]
100016c6: 6860         	ldr	r0, [r4, #0x4]
100016c8: 2121         	movs	r1, #0x21
100016ca: 4388         	bics	r0, r1
100016cc: 6060         	str	r0, [r4, #0x4]
100016ce: 9902         	ldr	r1, [sp, #0x8]
100016d0: 9a01         	ldr	r2, [sp, #0x4]
100016d2: 4351         	muls	r1, r2, r1
100016d4: 6820         	ldr	r0, [r4]
100016d6: 2800         	cmp	r0, #0x0
100016d8: d408         	bmi	0x100016ec <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x140> @ imm = #0x10
100016da: 6820         	ldr	r0, [r4]
100016dc: 2800         	cmp	r0, #0x0
100016de: d405         	bmi	0x100016ec <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x140> @ imm = #0xa
100016e0: 6820         	ldr	r0, [r4]
100016e2: 2800         	cmp	r0, #0x0
100016e4: d402         	bmi	0x100016ec <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x140> @ imm = #0x4
100016e6: 6820         	ldr	r0, [r4]
100016e8: 2800         	cmp	r0, #0x0
100016ea: d5f3         	bpl	0x100016d4 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x128> @ imm = #-0x1a
100016ec: 9802         	ldr	r0, [sp, #0x8]
100016ee: 0740         	lsls	r0, r0, #0x1d
100016f0: 0b40         	lsrs	r0, r0, #0xd
100016f2: 0752         	lsls	r2, r2, #0x1d
100016f4: 0c52         	lsrs	r2, r2, #0x11
100016f6: 1810         	adds	r0, r2, r0
100016f8: 60e0         	str	r0, [r4, #0xc]
100016fa: 4628         	mov	r0, r5
100016fc: f7ff fda8    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x4b0
10001700: 9a04         	ldr	r2, [sp, #0x10]
10001702: 6050         	str	r0, [r2, #0x4]
10001704: 6860         	ldr	r0, [r4, #0x4]
10001706: 2108         	movs	r1, #0x8
10001708: 4388         	bics	r0, r1
1000170a: 6060         	str	r0, [r4, #0x4]
1000170c: 7016         	strb	r6, [r2]
1000170e: b005         	add	sp, #0x14
10001710: bdf0         	pop	{r4, r5, r6, r7, pc}
10001712: 2000         	movs	r0, #0x0
10001714: 460e         	mov	r6, r1
10001716: 9a04         	ldr	r2, [sp, #0x10]
10001718: 7050         	strb	r0, [r2, #0x1]
1000171a: 7016         	strb	r6, [r2]
1000171c: b005         	add	sp, #0x14
1000171e: bdf0         	pop	{r4, r5, r6, r7, pc}
10001720: 2004         	movs	r0, #0x4
10001722: e7f8         	b	0x10001716 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x16a> @ imm = #-0x10
10001724: 4620         	mov	r0, r4
10001726: e7f6         	b	0x10001716 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x16a> @ imm = #-0x14
10001728: 2001         	movs	r0, #0x1
1000172a: e7f4         	b	0x10001716 <rp2040_hal::pll::setup_pll_blocking::hb816ed37ede44f22+0x16a> @ imm = #-0x18

1000172c <$d.3>:
1000172c: 00 1b b7 00  	.word	0x00b71b00
10001730: 30 80 00 40  	.word	0x40008030
10001734: 00 7c 28 e8  	.word	0xe8287c00
10001738: 00 8c 86 47  	.word	0x47868c00
1000173c: 40 4b 4c 00  	.word	0x004c4b40
10001740: 08 c0 00 40  	.word	0x4000c008
10001744: 00 c0 02 40  	.word	0x4002c000
10001748: ff 0f 00 00  	.word	0x00000fff

1000174c <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44>:
1000174c: b5d0         	push	{r4, r6, r7, lr}
1000174e: af02         	add	r7, sp, #0x8
10001750: 4c06         	ldr	r4, [pc, #0x18]         @ 0x1000176c <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44+0x20>
10001752: 8820         	ldrh	r0, [r4]
10001754: 2800         	cmp	r0, #0x0
10001756: d000         	beq	0x1000175a <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44+0xe> @ imm = #0x0
10001758: bdd0         	pop	{r4, r6, r7, pc}
1000175a: 2014         	movs	r0, #0x14
1000175c: 8800         	ldrh	r0, [r0]
1000175e: 2118         	movs	r1, #0x18
10001760: 880a         	ldrh	r2, [r1]
10001762: 4903         	ldr	r1, [pc, #0xc]          @ 0x10001770 <rp2040_hal::rom_data::flash_exit_xip::ptr::h16a6afe2714b3d44+0x24>
10001764: 4790         	blx	r2
10001766: 8020         	strh	r0, [r4]
10001768: bdd0         	pop	{r4, r6, r7, pc}
1000176a: 46c0         	mov	r8, r8

1000176c <$d.12>:
1000176c: 40 41 00 20  	.word	0x20004140
10001770: 45 58 00 00  	.word	0x00005845

10001774 <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03>:
10001774: b5f0         	push	{r4, r5, r6, r7, lr}
10001776: af03         	add	r7, sp, #0xc
10001778: b081         	sub	sp, #0x4
1000177a: 4604         	mov	r4, r0
1000177c: 4809         	ldr	r0, [pc, #0x24]         @ 0x100017a4 <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03+0x30>
1000177e: 6805         	ldr	r5, [r0]
10001780: 4e09         	ldr	r6, [pc, #0x24]         @ 0x100017a8 <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03+0x34>
10001782: 8833         	ldrh	r3, [r6]
10001784: 2b00         	cmp	r3, #0x0
10001786: d107         	bne	0x10001798 <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03+0x24> @ imm = #0xe
10001788: 2014         	movs	r0, #0x14
1000178a: 8800         	ldrh	r0, [r0]
1000178c: 2118         	movs	r1, #0x18
1000178e: 880a         	ldrh	r2, [r1]
10001790: 4906         	ldr	r1, [pc, #0x18]         @ 0x100017ac <rp2040_hal::vector_table::VectorTable::init::hb450c517f7406a03+0x38>
10001792: 4790         	blx	r2
10001794: 4603         	mov	r3, r0
10001796: 8030         	strh	r0, [r6]
10001798: 22c0         	movs	r2, #0xc0
1000179a: 4620         	mov	r0, r4
1000179c: 4629         	mov	r1, r5
1000179e: 4798         	blx	r3
100017a0: b001         	add	sp, #0x4
100017a2: bdf0         	pop	{r4, r5, r6, r7, pc}

100017a4 <$d.21>:
100017a4: 08 ed 00 e0  	.word	0xe000ed08
100017a8: 42 41 00 20  	.word	0x20004142
100017ac: 43 34 00 00  	.word	0x00003443

100017b0 <rp2040_hal::vector_table::VectorTable::register_handler::he1049bb3bf2b2382>:
100017b0: b580         	push	{r7, lr}
100017b2: af00         	add	r7, sp, #0x0
100017b4: 3110         	adds	r1, #0x10
100017b6: 292f         	cmp	r1, #0x2f
100017b8: d802         	bhi	0x100017c0 <rp2040_hal::vector_table::VectorTable::register_handler::he1049bb3bf2b2382+0x10> @ imm = #0x4
100017ba: 0089         	lsls	r1, r1, #0x2
100017bc: 5042         	str	r2, [r0, r1]
100017be: bd80         	pop	{r7, pc}
100017c0: 2330         	movs	r3, #0x30
100017c2: 4a03         	ldr	r2, [pc, #0xc]          @ 0x100017d0 <rp2040_hal::vector_table::VectorTable::register_handler::he1049bb3bf2b2382+0x20>
100017c4: 4608         	mov	r0, r1
100017c6: 4619         	mov	r1, r3
100017c8: f000 fb10    	bl	0x10001dec <core::panicking::panic_bounds_check::h324c9df020fc5d5d> @ imm = #0x620
100017cc: defe         	trap
100017ce: 46c0         	mov	r8, r8

100017d0 <$d.23>:
100017d0: 5c 38 00 10  	.word	0x1000385c

100017d4 <rp2040_hal::vector_table::VectorTable::activate::he3b0380a25309eed>:
100017d4: 4901         	ldr	r1, [pc, #0x4]          @ 0x100017dc <rp2040_hal::vector_table::VectorTable::activate::he3b0380a25309eed+0x8>
100017d6: 6008         	str	r0, [r1]
100017d8: 4770         	bx	lr
100017da: 46c0         	mov	r8, r8

100017dc <$d.25>:
100017dc: 08 ed 00 e0  	.word	0xe000ed08

100017e0 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8>:
100017e0: b5d0         	push	{r4, r6, r7, lr}
100017e2: af02         	add	r7, sp, #0x8
100017e4: 2001         	movs	r0, #0x1
100017e6: 0200         	lsls	r0, r0, #0x8
100017e8: 4915         	ldr	r1, [pc, #0x54]         @ 0x10001840 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x60>
100017ea: 680a         	ldr	r2, [r1]
100017ec: 4302         	orrs	r2, r0
100017ee: 600a         	str	r2, [r1]
100017f0: 680a         	ldr	r2, [r1]
100017f2: 2320         	movs	r3, #0x20
100017f4: 431a         	orrs	r2, r3
100017f6: 600a         	str	r2, [r1]
100017f8: 4a12         	ldr	r2, [pc, #0x48]         @ 0x10001844 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x64>
100017fa: 2400         	movs	r4, #0x0
100017fc: 6114         	str	r4, [r2, #0x10]
100017fe: 6014         	str	r4, [r2]
10001800: 680a         	ldr	r2, [r1]
10001802: 439a         	bics	r2, r3
10001804: 600a         	str	r2, [r1]
10001806: 688a         	ldr	r2, [r1, #0x8]
10001808: 0692         	lsls	r2, r2, #0x1a
1000180a: d408         	bmi	0x1000181e <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x3e> @ imm = #0x10
1000180c: 688a         	ldr	r2, [r1, #0x8]
1000180e: 0692         	lsls	r2, r2, #0x1a
10001810: d405         	bmi	0x1000181e <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x3e> @ imm = #0xa
10001812: 688a         	ldr	r2, [r1, #0x8]
10001814: 0692         	lsls	r2, r2, #0x1a
10001816: d402         	bmi	0x1000181e <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x3e> @ imm = #0x4
10001818: 688a         	ldr	r2, [r1, #0x8]
1000181a: 0692         	lsls	r2, r2, #0x1a
1000181c: d5f3         	bpl	0x10001806 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x26> @ imm = #-0x1a
1000181e: 680a         	ldr	r2, [r1]
10001820: 4382         	bics	r2, r0
10001822: 600a         	str	r2, [r1]
10001824: 688a         	ldr	r2, [r1, #0x8]
10001826: 4202         	tst	r2, r0
10001828: d108         	bne	0x1000183c <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x5c> @ imm = #0x10
1000182a: 688a         	ldr	r2, [r1, #0x8]
1000182c: 4202         	tst	r2, r0
1000182e: d105         	bne	0x1000183c <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x5c> @ imm = #0xa
10001830: 688a         	ldr	r2, [r1, #0x8]
10001832: 4202         	tst	r2, r0
10001834: d102         	bne	0x1000183c <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x5c> @ imm = #0x4
10001836: 688a         	ldr	r2, [r1, #0x8]
10001838: 4202         	tst	r2, r0
1000183a: d0f3         	beq	0x10001824 <rp2040_hal::gpio::bank0::Pins::new::hb90911ca64ba74b8+0x44> @ imm = #-0x1a
1000183c: bdd0         	pop	{r4, r6, r7, pc}
1000183e: 46c0         	mov	r8, r8

10001840 <$d.18>:
10001840: 00 c0 00 40  	.word	0x4000c000
10001844: 10 00 00 d0  	.word	0xd0000010

10001848 <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893>:
10001848: b5d0         	push	{r4, r6, r7, lr}
1000184a: af02         	add	r7, sp, #0x8
1000184c: 4c06         	ldr	r4, [pc, #0x18]         @ 0x10001868 <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893+0x20>
1000184e: 8820         	ldrh	r0, [r4]
10001850: 2800         	cmp	r0, #0x0
10001852: d000         	beq	0x10001856 <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893+0xe> @ imm = #0x0
10001854: bdd0         	pop	{r4, r6, r7, pc}
10001856: 2014         	movs	r0, #0x14
10001858: 8800         	ldrh	r0, [r0]
1000185a: 2118         	movs	r1, #0x18
1000185c: 880a         	ldrh	r2, [r1]
1000185e: 4903         	ldr	r1, [pc, #0xc]          @ 0x1000186c <rp2040_hal::rom_data::connect_internal_flash::ptr::h6edf5e5545213893+0x24>
10001860: 4790         	blx	r2
10001862: 8020         	strh	r0, [r4]
10001864: bdd0         	pop	{r4, r6, r7, pc}
10001866: 46c0         	mov	r8, r8

10001868 <$d.22>:
10001868: 44 41 00 20  	.word	0x20004144
1000186c: 49 46 00 00  	.word	0x00004649

10001870 <rp2040_hal::rom_data::flash_enter_cmd_xip::ptr::h05d8f25227aeac72>:
10001870: b5d0         	push	{r4, r6, r7, lr}
10001872: af02         	add	r7, sp, #0x8
10001874: 4c06         	ldr	r4, [pc, #0x18]         @ 0x10001890 <rp2040_hal::rom_data::flash_enter_cmd_xip::ptr::h05d8f25227aeac72+0x20>
10001876: 8820         	ldrh	r0, [r4]
10001878: 2800         	cmp	r0, #0x0
1000187a: d000         	beq	0x1000187e <rp2040_hal::rom_data::flash_enter_cmd_xip::ptr::h05d8f25227aeac72+0xe> @ imm = #0x0
1000187c: bdd0         	pop	{r4, r6, r7, pc}
1000187e: 2014         	movs	r0, #0x14
10001880: 8800         	ldrh	r0, [r0]
10001882: 2118         	movs	r1, #0x18
10001884: 880a         	ldrh	r2, [r1]
10001886: 4903         	ldr	r1, [pc, #0xc]          @ 0x10001894 <rp2040_hal::rom_data::flash_enter_cmd_xip::ptr::h05d8f25227aeac72+0x24>
10001888: 4790         	blx	r2
1000188a: 8020         	strh	r0, [r4]
1000188c: bdd0         	pop	{r4, r6, r7, pc}
1000188e: 46c0         	mov	r8, r8

10001890 <$d.28>:
10001890: 46 41 00 20  	.word	0x20004146
10001894: 43 58 00 00  	.word	0x00005843

10001898 <_critical_section_1_0_acquire>:
10001898: b5f0         	push	{r4, r5, r6, r7, lr}
1000189a: af03         	add	r7, sp, #0xc
1000189c: b087         	sub	sp, #0x1c
1000189e: f000 fa60    	bl	0x10001d62 <__primask_r> @ imm = #0x4c0
100018a2: 4604         	mov	r4, r0
100018a4: 2001         	movs	r0, #0x1
100018a6: 210d         	movs	r1, #0xd
100018a8: 0709         	lsls	r1, r1, #0x1c
100018aa: 6809         	ldr	r1, [r1]
100018ac: b2c9         	uxtb	r1, r1
100018ae: 2900         	cmp	r1, #0x0
100018b0: d003         	beq	0x100018ba <_critical_section_1_0_acquire+0x22> @ imm = #0x6
100018b2: 2901         	cmp	r1, #0x1
100018b4: d126         	bne	0x10001904 <_critical_section_1_0_acquire+0x6c> @ imm = #0x4c
100018b6: 2502         	movs	r5, #0x2
100018b8: e000         	b	0x100018bc <_critical_section_1_0_acquire+0x24> @ imm = #0x0
100018ba: 4605         	mov	r5, r0
100018bc: 4918         	ldr	r1, [pc, #0x60]         @ 0x10001920 <_critical_section_1_0_acquire+0x88>
100018be: 7809         	ldrb	r1, [r1]
100018c0: f3bf 8f5f    	dmb	sy
100018c4: 42a9         	cmp	r1, r5
100018c6: d102         	bne	0x100018ce <_critical_section_1_0_acquire+0x36> @ imm = #0x4
100018c8: 2002         	movs	r0, #0x2
100018ca: b007         	add	sp, #0x1c
100018cc: bdf0         	pop	{r4, r5, r6, r7, pc}
100018ce: 4004         	ands	r4, r0
100018d0: 4e14         	ldr	r6, [pc, #0x50]         @ 0x10001924 <_critical_section_1_0_acquire+0x8c>
100018d2: d10c         	bne	0x100018ee <_critical_section_1_0_acquire+0x56> @ imm = #0x18
100018d4: f000 fa3a    	bl	0x10001d4c <__cpsid>    @ imm = #0x474
100018d8: 6830         	ldr	r0, [r6]
100018da: 2800         	cmp	r0, #0x0
100018dc: d10c         	bne	0x100018f8 <_critical_section_1_0_acquire+0x60> @ imm = #0x18
100018de: f000 fa37    	bl	0x10001d50 <__cpsie>    @ imm = #0x46e
100018e2: f000 fa33    	bl	0x10001d4c <__cpsid>    @ imm = #0x466
100018e6: 6830         	ldr	r0, [r6]
100018e8: 2800         	cmp	r0, #0x0
100018ea: d0f8         	beq	0x100018de <_critical_section_1_0_acquire+0x46> @ imm = #-0x10
100018ec: e004         	b	0x100018f8 <_critical_section_1_0_acquire+0x60> @ imm = #0x8
100018ee: f000 fa2d    	bl	0x10001d4c <__cpsid>    @ imm = #0x45a
100018f2: 6830         	ldr	r0, [r6]
100018f4: 2800         	cmp	r0, #0x0
100018f6: d0fa         	beq	0x100018ee <_critical_section_1_0_acquire+0x56> @ imm = #-0xc
100018f8: 4809         	ldr	r0, [pc, #0x24]         @ 0x10001920 <_critical_section_1_0_acquire+0x88>
100018fa: 7005         	strb	r5, [r0]
100018fc: 4260         	rsbs	r0, r4, #0
100018fe: 4160         	adcs	r0, r4
10001900: b007         	add	sp, #0x1c
10001902: bdf0         	pop	{r4, r5, r6, r7, pc}
10001904: 2100         	movs	r1, #0x0
10001906: 9104         	str	r1, [sp, #0x10]
10001908: 9001         	str	r0, [sp, #0x4]
1000190a: 4807         	ldr	r0, [pc, #0x1c]         @ 0x10001928 <_critical_section_1_0_acquire+0x90>
1000190c: 9000         	str	r0, [sp]
1000190e: 9103         	str	r1, [sp, #0xc]
10001910: a806         	add	r0, sp, #0x18
10001912: 9002         	str	r0, [sp, #0x8]
10001914: 4668         	mov	r0, sp
10001916: 4905         	ldr	r1, [pc, #0x14]         @ 0x1000192c <_critical_section_1_0_acquire+0x94>
10001918: f000 fa3e    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x47c
1000191c: defe         	trap
1000191e: 46c0         	mov	r8, r8

10001920 <$d.1>:
10001920: 48 41 00 20  	.word	0x20004148
10001924: 7c 01 00 d0  	.word	0xd000017c
10001928: e4 36 00 10  	.word	0x100036e4
1000192c: 4c 37 00 10  	.word	0x1000374c

10001930 <_critical_section_1_0_release>:
10001930: b580         	push	{r7, lr}
10001932: af00         	add	r7, sp, #0x0
10001934: b2c1         	uxtb	r1, r0
10001936: 2902         	cmp	r1, #0x2
10001938: d009         	beq	0x1000194e <_critical_section_1_0_release+0x1e> @ imm = #0x12
1000193a: 4905         	ldr	r1, [pc, #0x14]         @ 0x10001950 <_critical_section_1_0_release+0x20>
1000193c: 2200         	movs	r2, #0x0
1000193e: 700a         	strb	r2, [r1]
10001940: 4904         	ldr	r1, [pc, #0x10]         @ 0x10001954 <_critical_section_1_0_release+0x24>
10001942: 2201         	movs	r2, #0x1
10001944: 600a         	str	r2, [r1]
10001946: 0600         	lsls	r0, r0, #0x18
10001948: d001         	beq	0x1000194e <_critical_section_1_0_release+0x1e> @ imm = #0x2
1000194a: f000 fa01    	bl	0x10001d50 <__cpsie>    @ imm = #0x402
1000194e: bd80         	pop	{r7, pc}

10001950 <$d.3>:
10001950: 48 41 00 20  	.word	0x20004148
10001954: 7c 01 00 d0  	.word	0xd000017c

10001958 <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9>:
10001958: b5f0         	push	{r4, r5, r6, r7, lr}
1000195a: af03         	add	r7, sp, #0xc
1000195c: b081         	sub	sp, #0x4
1000195e: 4614         	mov	r4, r2
10001960: 460d         	mov	r5, r1
10001962: 4606         	mov	r6, r0
10001964: 4809         	ldr	r0, [pc, #0x24]         @ 0x1000198c <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9+0x34>
10001966: 8803         	ldrh	r3, [r0]
10001968: 2b00         	cmp	r3, #0x0
1000196a: d108         	bne	0x1000197e <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9+0x26> @ imm = #0x10
1000196c: 2014         	movs	r0, #0x14
1000196e: 8800         	ldrh	r0, [r0]
10001970: 2118         	movs	r1, #0x18
10001972: 880a         	ldrh	r2, [r1]
10001974: 4906         	ldr	r1, [pc, #0x18]         @ 0x10001990 <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9+0x38>
10001976: 4790         	blx	r2
10001978: 4603         	mov	r3, r0
1000197a: 4804         	ldr	r0, [pc, #0x10]         @ 0x1000198c <rp2040_hal::rom_data::memcpy44::h51b8a88c413925f9+0x34>
1000197c: 8003         	strh	r3, [r0]
1000197e: 4630         	mov	r0, r6
10001980: 4629         	mov	r1, r5
10001982: 4622         	mov	r2, r4
10001984: 4798         	blx	r3
10001986: b001         	add	sp, #0x4
10001988: bdf0         	pop	{r4, r5, r6, r7, pc}
1000198a: 46c0         	mov	r8, r8

1000198c <$d.97>:
1000198c: 42 41 00 20  	.word	0x20004142
10001990: 43 34 00 00  	.word	0x00003443

10001994 <__aeabi_memclr8>:
10001994: b5f0         	push	{r4, r5, r6, r7, lr}
10001996: af03         	add	r7, sp, #0xc
10001998: b081         	sub	sp, #0x4
1000199a: 460c         	mov	r4, r1
1000199c: 4605         	mov	r5, r0
1000199e: 4e09         	ldr	r6, [pc, #0x24]         @ 0x100019c4 <__aeabi_memclr8+0x30>
100019a0: 8833         	ldrh	r3, [r6]
100019a2: 2b00         	cmp	r3, #0x0
100019a4: d107         	bne	0x100019b6 <__aeabi_memclr8+0x22> @ imm = #0xe
100019a6: 2014         	movs	r0, #0x14
100019a8: 8800         	ldrh	r0, [r0]
100019aa: 2118         	movs	r1, #0x18
100019ac: 880a         	ldrh	r2, [r1]
100019ae: 4906         	ldr	r1, [pc, #0x18]         @ 0x100019c8 <__aeabi_memclr8+0x34>
100019b0: 4790         	blx	r2
100019b2: 4603         	mov	r3, r0
100019b4: 8030         	strh	r0, [r6]
100019b6: 2100         	movs	r1, #0x0
100019b8: 4628         	mov	r0, r5
100019ba: 4622         	mov	r2, r4
100019bc: 4798         	blx	r3
100019be: b001         	add	sp, #0x4
100019c0: bdf0         	pop	{r4, r5, r6, r7, pc}
100019c2: 46c0         	mov	r8, r8

100019c4 <$d.120>:
100019c4: 4a 41 00 20  	.word	0x2000414a
100019c8: 53 34 00 00  	.word	0x00003453

100019cc <__aeabi_memcpy4>:
100019cc: b5f0         	push	{r4, r5, r6, r7, lr}
100019ce: af03         	add	r7, sp, #0xc
100019d0: b081         	sub	sp, #0x4
100019d2: 4614         	mov	r4, r2
100019d4: 460d         	mov	r5, r1
100019d6: 4606         	mov	r6, r0
100019d8: 4809         	ldr	r0, [pc, #0x24]         @ 0x10001a00 <__aeabi_memcpy4+0x34>
100019da: 8803         	ldrh	r3, [r0]
100019dc: 2b00         	cmp	r3, #0x0
100019de: d108         	bne	0x100019f2 <__aeabi_memcpy4+0x26> @ imm = #0x10
100019e0: 2014         	movs	r0, #0x14
100019e2: 8800         	ldrh	r0, [r0]
100019e4: 2118         	movs	r1, #0x18
100019e6: 880a         	ldrh	r2, [r1]
100019e8: 4906         	ldr	r1, [pc, #0x18]         @ 0x10001a04 <__aeabi_memcpy4+0x38>
100019ea: 4790         	blx	r2
100019ec: 4603         	mov	r3, r0
100019ee: 4804         	ldr	r0, [pc, #0x10]         @ 0x10001a00 <__aeabi_memcpy4+0x34>
100019f0: 8003         	strh	r3, [r0]
100019f2: 4630         	mov	r0, r6
100019f4: 4629         	mov	r1, r5
100019f6: 4622         	mov	r2, r4
100019f8: 4798         	blx	r3
100019fa: b001         	add	sp, #0x4
100019fc: bdf0         	pop	{r4, r5, r6, r7, pc}
100019fe: 46c0         	mov	r8, r8

10001a00 <$d.124>:
10001a00: 42 41 00 20  	.word	0x20004142
10001a04: 43 34 00 00  	.word	0x00003443

10001a08 <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0>:
10001a08: b5d0         	push	{r4, r6, r7, lr}
10001a0a: af02         	add	r7, sp, #0x8
10001a0c: 4c06         	ldr	r4, [pc, #0x18]         @ 0x10001a28 <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0+0x20>
10001a0e: 8820         	ldrh	r0, [r4]
10001a10: 2800         	cmp	r0, #0x0
10001a12: d000         	beq	0x10001a16 <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0+0xe> @ imm = #0x0
10001a14: bdd0         	pop	{r4, r6, r7, pc}
10001a16: 2014         	movs	r0, #0x14
10001a18: 8800         	ldrh	r0, [r0]
10001a1a: 2118         	movs	r1, #0x18
10001a1c: 880a         	ldrh	r2, [r1]
10001a1e: 4903         	ldr	r1, [pc, #0xc]          @ 0x10001a2c <rp2040_hal::rom_data::flash_range_program::ptr::h3294ee29cdff69c0+0x24>
10001a20: 4790         	blx	r2
10001a22: 8020         	strh	r0, [r4]
10001a24: bdd0         	pop	{r4, r6, r7, pc}
10001a26: 46c0         	mov	r8, r8

10001a28 <$d.22>:
10001a28: 4c 41 00 20  	.word	0x2000414c
10001a2c: 52 50 00 00  	.word	0x00005052

10001a30 <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2>:
10001a30: b5d0         	push	{r4, r6, r7, lr}
10001a32: af02         	add	r7, sp, #0x8
10001a34: 4c06         	ldr	r4, [pc, #0x18]         @ 0x10001a50 <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2+0x20>
10001a36: 8820         	ldrh	r0, [r4]
10001a38: 2800         	cmp	r0, #0x0
10001a3a: d000         	beq	0x10001a3e <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2+0xe> @ imm = #0x0
10001a3c: bdd0         	pop	{r4, r6, r7, pc}
10001a3e: 2014         	movs	r0, #0x14
10001a40: 8800         	ldrh	r0, [r0]
10001a42: 2118         	movs	r1, #0x18
10001a44: 880a         	ldrh	r2, [r1]
10001a46: 4903         	ldr	r1, [pc, #0xc]          @ 0x10001a54 <rp2040_hal::rom_data::flash_flush_cache::ptr::h08095e2f0b73d6c2+0x24>
10001a48: 4790         	blx	r2
10001a4a: 8020         	strh	r0, [r4]
10001a4c: bdd0         	pop	{r4, r6, r7, pc}
10001a4e: 46c0         	mov	r8, r8

10001a50 <$d.24>:
10001a50: 4e 41 00 20  	.word	0x2000414e
10001a54: 46 43 00 00  	.word	0x00004346

10001a58 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca>:
10001a58: b5d0         	push	{r4, r6, r7, lr}
10001a5a: af02         	add	r7, sp, #0x8
10001a5c: 7801         	ldrb	r1, [r0]
10001a5e: 46c0         	mov	r8, r8
10001a60: 4479         	add	r1, pc
10001a62: 7909         	ldrb	r1, [r1, #0x4]
10001a64: 0049         	lsls	r1, r1, #0x1
10001a66: 448f         	add	pc, r1

10001a68 <$d.1>:
10001a68: 04 07 04 1a  	.word	0x1a040704
10001a6c: 1f 25 2d 33  	.word	0x332d251f
10001a70: 04 00        	.short	0x0004

10001a72 <$t.2>:
10001a72: 7841         	ldrb	r1, [r0, #0x1]
10001a74: 7880         	ldrb	r0, [r0, #0x2]
10001a76: bdd0         	pop	{r4, r6, r7, pc}
10001a78: 78c2         	ldrb	r2, [r0, #0x3]
10001a7a: 7903         	ldrb	r3, [r0, #0x4]
10001a7c: 2b00         	cmp	r3, #0x0
10001a7e: d001         	beq	0x10001a84 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0x2c> @ imm = #0x2
10001a80: 2a02         	cmp	r2, #0x2
10001a82: d130         	bne	0x10001ae6 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0x8e> @ imm = #0x60
10001a84: 7881         	ldrb	r1, [r0, #0x2]
10001a86: 2a02         	cmp	r2, #0x2
10001a88: d101         	bne	0x10001a8e <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0x36> @ imm = #0x2
10001a8a: 2907         	cmp	r1, #0x7
10001a8c: d831         	bhi	0x10001af2 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0x9a> @ imm = #0x62
10001a8e: 1e5c         	subs	r4, r3, #0x1
10001a90: 41a3         	sbcs	r3, r4
10001a92: 011b         	lsls	r3, r3, #0x4
10001a94: 4319         	orrs	r1, r3
10001a96: 7840         	ldrb	r0, [r0, #0x1]
10001a98: 0080         	lsls	r0, r0, #0x2
10001a9a: 4310         	orrs	r0, r2
10001a9c: bdd0         	pop	{r4, r6, r7, pc}
10001a9e: 7842         	ldrb	r2, [r0, #0x1]
10001aa0: 211f         	movs	r1, #0x1f
10001aa2: 4011         	ands	r1, r2
10001aa4: 7880         	ldrb	r0, [r0, #0x2]
10001aa6: bdd0         	pop	{r4, r6, r7, pc}
10001aa8: 7881         	ldrb	r1, [r0, #0x2]
10001aaa: 7840         	ldrb	r0, [r0, #0x1]
10001aac: 0040         	lsls	r0, r0, #0x1
10001aae: 4308         	orrs	r0, r1
10001ab0: 2100         	movs	r1, #0x0
10001ab2: bdd0         	pop	{r4, r6, r7, pc}
10001ab4: 7881         	ldrb	r1, [r0, #0x2]
10001ab6: 7840         	ldrb	r0, [r0, #0x1]
10001ab8: 0042         	lsls	r2, r0, #0x1
10001aba: 430a         	orrs	r2, r1
10001abc: 2004         	movs	r0, #0x4
10001abe: 4310         	orrs	r0, r2
10001ac0: 2100         	movs	r1, #0x0
10001ac2: bdd0         	pop	{r4, r6, r7, pc}
10001ac4: 7882         	ldrb	r2, [r0, #0x2]
10001ac6: 78c1         	ldrb	r1, [r0, #0x3]
10001ac8: 00c9         	lsls	r1, r1, #0x3
10001aca: 4311         	orrs	r1, r2
10001acc: 7840         	ldrb	r0, [r0, #0x1]
10001ace: bdd0         	pop	{r4, r6, r7, pc}
10001ad0: 7842         	ldrb	r2, [r0, #0x1]
10001ad2: 2a07         	cmp	r2, #0x7
10001ad4: d813         	bhi	0x10001afe <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xa6> @ imm = #0x26
10001ad6: 7901         	ldrb	r1, [r0, #0x4]
10001ad8: 0109         	lsls	r1, r1, #0x4
10001ada: 4311         	orrs	r1, r2
10001adc: 78c2         	ldrb	r2, [r0, #0x3]
10001ade: 7880         	ldrb	r0, [r0, #0x2]
10001ae0: 0040         	lsls	r0, r0, #0x1
10001ae2: 4310         	orrs	r0, r2
10001ae4: bdd0         	pop	{r4, r6, r7, pc}
10001ae6: 480b         	ldr	r0, [pc, #0x2c]         @ 0x10001b14 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xbc>
10001ae8: 2136         	movs	r1, #0x36
10001aea: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x10001b18 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xc0>
10001aec: f000 f968    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x2d0
10001af0: defe         	trap
10001af2: 480a         	ldr	r0, [pc, #0x28]         @ 0x10001b1c <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xc4>
10001af4: 2132         	movs	r1, #0x32
10001af6: 4a0a         	ldr	r2, [pc, #0x28]         @ 0x10001b20 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xc8>
10001af8: f000 f962    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x2c4
10001afc: defe         	trap
10001afe: 4803         	ldr	r0, [pc, #0xc]          @ 0x10001b0c <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xb4>
10001b00: 2117         	movs	r1, #0x17
10001b02: 4a03         	ldr	r2, [pc, #0xc]          @ 0x10001b10 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca+0xb8>
10001b04: f000 f95c    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x2b8
10001b08: defe         	trap
10001b0a: 46c0         	mov	r8, r8

10001b0c <$d.3>:
10001b0c: 50 39 00 10  	.word	0x10003950
10001b10: 68 39 00 10  	.word	0x10003968
10001b14: 08 39 00 10  	.word	0x10003908
10001b18: 40 39 00 10  	.word	0x10003940
10001b1c: 6c 38 00 10  	.word	0x1000386c
10001b20: f8 38 00 10  	.word	0x100038f8

10001b24 <pio::InstructionOperands::encode::h9ed9e01677b4311a>:
10001b24: b5d0         	push	{r4, r6, r7, lr}
10001b26: af02         	add	r7, sp, #0x8
10001b28: 7801         	ldrb	r1, [r0]
10001b2a: 0049         	lsls	r1, r1, #0x1
10001b2c: 4a04         	ldr	r2, [pc, #0x10]         @ 0x10001b40 <pio::InstructionOperands::encode::h9ed9e01677b4311a+0x1c>
10001b2e: 5a54         	ldrh	r4, [r2, r1]
10001b30: f7ff ff92    	bl	0x10001a58 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca> @ imm = #-0xdc
10001b34: b2c0         	uxtb	r0, r0
10001b36: 0142         	lsls	r2, r0, #0x5
10001b38: 4322         	orrs	r2, r4
10001b3a: b2c8         	uxtb	r0, r1
10001b3c: 4310         	orrs	r0, r2
10001b3e: bdd0         	pop	{r4, r6, r7, pc}

10001b40 <$d.5>:
10001b40: 44 3a 00 10  	.word	0x10003a44

10001b44 <pio::Instruction::encode::hbd7fd3c1ae569d42>:
10001b44: b5f0         	push	{r4, r5, r6, r7, lr}
10001b46: af03         	add	r7, sp, #0xc
10001b48: b091         	sub	sp, #0x44
10001b4a: 460d         	mov	r5, r1
10001b4c: 4604         	mov	r4, r0
10001b4e: 9105         	str	r1, [sp, #0x14]
10001b50: 0c09         	lsrs	r1, r1, #0x10
10001b52: 2005         	movs	r0, #0x5
10001b54: 9101         	str	r1, [sp, #0x4]
10001b56: 1a41         	subs	r1, r0, r1
10001b58: 2007         	movs	r0, #0x7
10001b5a: 9103         	str	r1, [sp, #0xc]
10001b5c: 4008         	ands	r0, r1
10001b5e: 2100         	movs	r1, #0x0
10001b60: 9102         	str	r1, [sp, #0x8]
10001b62: 43c9         	mvns	r1, r1
10001b64: 4081         	lsls	r1, r0
10001b66: 43ce         	mvns	r6, r1
10001b68: a806         	add	r0, sp, #0x18
10001b6a: 7006         	strb	r6, [r0]
10001b6c: 78a0         	ldrb	r0, [r4, #0x2]
10001b6e: 0040         	lsls	r0, r0, #0x1
10001b70: 492c         	ldr	r1, [pc, #0xb0]         @ 0x10001c24 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xe0>
10001b72: 5a08         	ldrh	r0, [r1, r0]
10001b74: 9004         	str	r0, [sp, #0x10]
10001b76: 1ca0         	adds	r0, r4, #0x2
10001b78: f7ff ff6e    	bl	0x10001a58 <pio::InstructionOperands::operands::haa3fe3c72a2b2dca> @ imm = #-0x124
10001b7c: 79e2         	ldrb	r2, [r4, #0x7]
10001b7e: 42b2         	cmp	r2, r6
10001b80: d828         	bhi	0x10001bd4 <pio::Instruction::encode::hbd7fd3c1ae569d42+0x90> @ imm = #0x50
10001b82: b2eb         	uxtb	r3, r5
10001b84: 7826         	ldrb	r6, [r4]
10001b86: 2e00         	cmp	r6, #0x0
10001b88: d00c         	beq	0x10001ba4 <pio::Instruction::encode::hbd7fd3c1ae569d42+0x60> @ imm = #0x18
10001b8a: 0e2d         	lsrs	r5, r5, #0x18
10001b8c: 7864         	ldrb	r4, [r4, #0x1]
10001b8e: 42ac         	cmp	r4, r5
10001b90: d834         	bhi	0x10001bfc <pio::Instruction::encode::hbd7fd3c1ae569d42+0xb8> @ imm = #0x68
10001b92: 250f         	movs	r5, #0xf
10001b94: 9e03         	ldr	r6, [sp, #0xc]
10001b96: 402e         	ands	r6, r5
10001b98: 40b4         	lsls	r4, r6
10001b9a: 2b00         	cmp	r3, #0x0
10001b9c: d00f         	beq	0x10001bbe <pio::Instruction::encode::hbd7fd3c1ae569d42+0x7a> @ imm = #0x1e
10001b9e: 2310         	movs	r3, #0x10
10001ba0: 431c         	orrs	r4, r3
10001ba2: e00c         	b	0x10001bbe <pio::Instruction::encode::hbd7fd3c1ae569d42+0x7a> @ imm = #0x18
10001ba4: 9c01         	ldr	r4, [sp, #0x4]
10001ba6: 0624         	lsls	r4, r4, #0x18
10001ba8: d008         	beq	0x10001bbc <pio::Instruction::encode::hbd7fd3c1ae569d42+0x78> @ imm = #0x10
10001baa: 2b00         	cmp	r3, #0x0
10001bac: 9c02         	ldr	r4, [sp, #0x8]
10001bae: d106         	bne	0x10001bbe <pio::Instruction::encode::hbd7fd3c1ae569d42+0x7a> @ imm = #0xc
10001bb0: 4820         	ldr	r0, [pc, #0x80]         @ 0x10001c34 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xf0>
10001bb2: 211f         	movs	r1, #0x1f
10001bb4: 4a20         	ldr	r2, [pc, #0x80]         @ 0x10001c38 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xf4>
10001bb6: f000 f903    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x206
10001bba: defe         	trap
10001bbc: 9c02         	ldr	r4, [sp, #0x8]
10001bbe: b2c0         	uxtb	r0, r0
10001bc0: 0140         	lsls	r0, r0, #0x5
10001bc2: 9b04         	ldr	r3, [sp, #0x10]
10001bc4: 4318         	orrs	r0, r3
10001bc6: b2c9         	uxtb	r1, r1
10001bc8: 4301         	orrs	r1, r0
10001bca: 4314         	orrs	r4, r2
10001bcc: 0220         	lsls	r0, r4, #0x8
10001bce: 4308         	orrs	r0, r1
10001bd0: b011         	add	sp, #0x44
10001bd2: bdf0         	pop	{r4, r5, r6, r7, pc}
10001bd4: 1de0         	adds	r0, r4, #0x7
10001bd6: 2100         	movs	r1, #0x0
10001bd8: 910f         	str	r1, [sp, #0x3c]
10001bda: 2102         	movs	r1, #0x2
10001bdc: 910c         	str	r1, [sp, #0x30]
10001bde: 4a17         	ldr	r2, [pc, #0x5c]         @ 0x10001c3c <pio::Instruction::encode::hbd7fd3c1ae569d42+0xf8>
10001be0: 920b         	str	r2, [sp, #0x2c]
10001be2: 910e         	str	r1, [sp, #0x38]
10001be4: a907         	add	r1, sp, #0x1c
10001be6: 910d         	str	r1, [sp, #0x34]
10001be8: 4910         	ldr	r1, [pc, #0x40]         @ 0x10001c2c <pio::Instruction::encode::hbd7fd3c1ae569d42+0xe8>
10001bea: 910a         	str	r1, [sp, #0x28]
10001bec: aa06         	add	r2, sp, #0x18
10001bee: ab07         	add	r3, sp, #0x1c
10001bf0: c307         	stm	r3!, {r0, r1, r2}
10001bf2: a80b         	add	r0, sp, #0x2c
10001bf4: 4912         	ldr	r1, [pc, #0x48]         @ 0x10001c40 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xfc>
10001bf6: f000 f8cf    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x19e
10001bfa: defe         	trap
10001bfc: 9802         	ldr	r0, [sp, #0x8]
10001bfe: 900f         	str	r0, [sp, #0x3c]
10001c00: 2001         	movs	r0, #0x1
10001c02: 900c         	str	r0, [sp, #0x30]
10001c04: 4908         	ldr	r1, [pc, #0x20]         @ 0x10001c28 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xe4>
10001c06: 910b         	str	r1, [sp, #0x2c]
10001c08: 900e         	str	r0, [sp, #0x38]
10001c0a: a807         	add	r0, sp, #0x1c
10001c0c: 900d         	str	r0, [sp, #0x34]
10001c0e: 4807         	ldr	r0, [pc, #0x1c]         @ 0x10001c2c <pio::Instruction::encode::hbd7fd3c1ae569d42+0xe8>
10001c10: 9008         	str	r0, [sp, #0x20]
10001c12: a805         	add	r0, sp, #0x14
10001c14: 1cc0         	adds	r0, r0, #0x3
10001c16: 9007         	str	r0, [sp, #0x1c]
10001c18: a80b         	add	r0, sp, #0x2c
10001c1a: 4905         	ldr	r1, [pc, #0x14]         @ 0x10001c30 <pio::Instruction::encode::hbd7fd3c1ae569d42+0xec>
10001c1c: f000 f8bc    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #0x178
10001c20: defe         	trap
10001c22: 46c0         	mov	r8, r8

10001c24 <$d.12>:
10001c24: 44 3a 00 10  	.word	0x10003a44
10001c28: 98 39 00 10  	.word	0x10003998
10001c2c: cd 29 00 10  	.word	0x100029cd
10001c30: a0 39 00 10  	.word	0x100039a0
10001c34: b0 39 00 10  	.word	0x100039b0
10001c38: d0 39 00 10  	.word	0x100039d0
10001c3c: 00 3a 00 10  	.word	0x10003a00
10001c40: 10 3a 00 10  	.word	0x10003a10

10001c44 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72>:
10001c44: b580         	push	{r7, lr}
10001c46: af00         	add	r7, sp, #0x0
10001c48: 7800         	ldrb	r0, [r0]
10001c4a: 2800         	cmp	r0, #0x0
10001c4c: d000         	beq	0x10001c50 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72+0xc> @ imm = #0x0
10001c4e: bd80         	pop	{r7, pc}
10001c50: 4802         	ldr	r0, [pc, #0x8]          @ 0x10001c5c <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72+0x18>
10001c52: 2113         	movs	r1, #0x13
10001c54: 4a02         	ldr	r2, [pc, #0x8]          @ 0x10001c60 <<pio::Label as core::ops::drop::Drop>::drop::hf86f81b9b1c56d72+0x1c>
10001c56: f000 f8b3    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x166
10001c5a: defe         	trap

10001c5c <$d.15>:
10001c5c: 20 3a 00 10  	.word	0x10003a20
10001c60: 34 3a 00 10  	.word	0x10003a34

10001c64 <arrayvec::arrayvec::extend_panic::hb1c0d93f66233b0e>:
10001c64: b580         	push	{r7, lr}
10001c66: af00         	add	r7, sp, #0x0
10001c68: 4602         	mov	r2, r0
10001c6a: 4802         	ldr	r0, [pc, #0x8]          @ 0x10001c74 <arrayvec::arrayvec::extend_panic::hb1c0d93f66233b0e+0x10>
10001c6c: 212f         	movs	r1, #0x2f
10001c6e: f000 f8a7    	bl	0x10001dc0 <core::panicking::panic::h391937ca5788c2f9> @ imm = #0x14e
10001c72: defe         	trap

10001c74 <$d.1>:
10001c74: 56 3a 00 10  	.word	0x10003a56

10001c78 <XIP_IRQ>:
10001c78: e7fe         	b	0x10001c78 <XIP_IRQ>    @ imm = #-0x4

10001c7a <__pre_init>:
10001c7a: 4770         	bx	lr

10001c7c <cortex_m::delay::Delay::delay_us::h689807d8117d6238>:
10001c7c: b5f0         	push	{r4, r5, r6, r7, lr}
10001c7e: af03         	add	r7, sp, #0xc
10001c80: b085         	sub	sp, #0x14
10001c82: 460a         	mov	r2, r1
10001c84: 6800         	ldr	r0, [r0]
10001c86: 2400         	movs	r4, #0x0
10001c88: 4621         	mov	r1, r4
10001c8a: 4623         	mov	r3, r4
10001c8c: f000 ff80    	bl	0x10002b90 <__aeabi_lmul> @ imm = #0xf00
10001c90: 4606         	mov	r6, r0
10001c92: 9102         	str	r1, [sp, #0x8]
10001c94: 4a28         	ldr	r2, [pc, #0xa0]         @ 0x10001d38 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xbc>
10001c96: 4623         	mov	r3, r4
10001c98: f000 ff9f    	bl	0x10002bda <__aeabi_uldivmod> @ imm = #0xf3e
10001c9c: 9003         	str	r0, [sp, #0xc]
10001c9e: 9101         	str	r1, [sp, #0x4]
10001ca0: 2001         	movs	r0, #0x1
10001ca2: 9004         	str	r0, [sp, #0x10]
10001ca4: 0402         	lsls	r2, r0, #0x10
10001ca6: 4b26         	ldr	r3, [pc, #0x98]         @ 0x10001d40 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xc4>
10001ca8: 4926         	ldr	r1, [pc, #0x98]         @ 0x10001d44 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xc8>
10001caa: 4d27         	ldr	r5, [pc, #0x9c]         @ 0x10001d48 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xcc>
10001cac: 1bad         	subs	r5, r5, r6
10001cae: 9802         	ldr	r0, [sp, #0x8]
10001cb0: 4181         	sbcs	r1, r0
10001cb2: d31e         	blo	0x10001cf2 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x76> @ imm = #0x3c
10001cb4: 9803         	ldr	r0, [sp, #0xc]
10001cb6: 4921         	ldr	r1, [pc, #0x84]         @ 0x10001d3c <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xc0>
10001cb8: 4008         	ands	r0, r1
10001cba: 2801         	cmp	r0, #0x1
10001cbc: d913         	bls	0x10001ce6 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x6a> @ imm = #0x26
10001cbe: 1e40         	subs	r0, r0, #0x1
10001cc0: 6058         	str	r0, [r3, #0x4]
10001cc2: 2000         	movs	r0, #0x0
10001cc4: 6098         	str	r0, [r3, #0x8]
10001cc6: 6818         	ldr	r0, [r3]
10001cc8: 9904         	ldr	r1, [sp, #0x10]
10001cca: 4308         	orrs	r0, r1
10001ccc: 6018         	str	r0, [r3]
10001cce: 6818         	ldr	r0, [r3]
10001cd0: 4210         	tst	r0, r2
10001cd2: d108         	bne	0x10001ce6 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x6a> @ imm = #0x10
10001cd4: 6818         	ldr	r0, [r3]
10001cd6: 4210         	tst	r0, r2
10001cd8: d105         	bne	0x10001ce6 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x6a> @ imm = #0xa
10001cda: 6818         	ldr	r0, [r3]
10001cdc: 4210         	tst	r0, r2
10001cde: d102         	bne	0x10001ce6 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x6a> @ imm = #0x4
10001ce0: 6818         	ldr	r0, [r3]
10001ce2: 4210         	tst	r0, r2
10001ce4: d0f3         	beq	0x10001cce <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x52> @ imm = #-0x1a
10001ce6: 6818         	ldr	r0, [r3]
10001ce8: 9904         	ldr	r1, [sp, #0x10]
10001cea: 4388         	bics	r0, r1
10001cec: 6018         	str	r0, [r3]
10001cee: b005         	add	sp, #0x14
10001cf0: bdf0         	pop	{r4, r5, r6, r7, pc}
10001cf2: 9e01         	ldr	r6, [sp, #0x4]
10001cf4: 0231         	lsls	r1, r6, #0x8
10001cf6: 9803         	ldr	r0, [sp, #0xc]
10001cf8: 0e05         	lsrs	r5, r0, #0x18
10001cfa: 1868         	adds	r0, r5, r1
10001cfc: 0e31         	lsrs	r1, r6, #0x18
10001cfe: 4d0f         	ldr	r5, [pc, #0x3c]         @ 0x10001d3c <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xc0>
10001d00: 605d         	str	r5, [r3, #0x4]
10001d02: 609c         	str	r4, [r3, #0x8]
10001d04: 681e         	ldr	r6, [r3]
10001d06: 9d04         	ldr	r5, [sp, #0x10]
10001d08: 432e         	orrs	r6, r5
10001d0a: 601e         	str	r6, [r3]
10001d0c: 4626         	mov	r6, r4
10001d0e: e006         	b	0x10001d1e <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xa2> @ imm = #0xc
10001d10: 2500         	movs	r5, #0x0
10001d12: 1c64         	adds	r4, r4, #0x1
10001d14: 416e         	adcs	r6, r5
10001d16: 1a25         	subs	r5, r4, r0
10001d18: 4635         	mov	r5, r6
10001d1a: 418d         	sbcs	r5, r1
10001d1c: d2ca         	bhs	0x10001cb4 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x38> @ imm = #-0x6c
10001d1e: 681d         	ldr	r5, [r3]
10001d20: 4215         	tst	r5, r2
10001d22: d1f5         	bne	0x10001d10 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x94> @ imm = #-0x16
10001d24: 681d         	ldr	r5, [r3]
10001d26: 4215         	tst	r5, r2
10001d28: d1f2         	bne	0x10001d10 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x94> @ imm = #-0x1c
10001d2a: 681d         	ldr	r5, [r3]
10001d2c: 4215         	tst	r5, r2
10001d2e: d1ef         	bne	0x10001d10 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x94> @ imm = #-0x22
10001d30: 681d         	ldr	r5, [r3]
10001d32: 4215         	tst	r5, r2
10001d34: d0f3         	beq	0x10001d1e <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xa2> @ imm = #-0x1a
10001d36: e7eb         	b	0x10001d10 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0x94> @ imm = #-0x2a

10001d38 <$d.1>:
10001d38: 40 42 0f 00  	.word	0x000f4240
10001d3c: ff ff ff 00  	.word	0x00ffffff
10001d40: 10 e0 00 e0  	.word	0xe000e010
10001d44: 42 0f 00 00  	.word	0x00000f42
10001d48: ff ff ff 3f  	.word	0x3fffffff

10001d4c <__cpsid>:
10001d4c: b672         	cpsid i
10001d4e: 4770         	bx	lr

10001d50 <__cpsie>:
10001d50: b662         	cpsie i
10001d52: 4770         	bx	lr

10001d54 <__delay>:
10001d54: 0840         	lsrs	r0, r0, #0x1
10001d56: 1c40         	adds	r0, r0, #0x1
10001d58: 3801         	subs	r0, #0x1
10001d5a: d1fd         	bne	0x10001d58 <__delay+0x4> @ imm = #-0x6
10001d5c: 4770         	bx	lr

10001d5e <__nop>:
10001d5e: bf00         	nop
10001d60: 4770         	bx	lr

10001d62 <__primask_r>:
10001d62: f3ef 8010    	mrs	r0, primask
10001d66: 4770         	bx	lr

10001d68 <__sev>:
10001d68: bf40         	sev
10001d6a: 4770         	bx	lr

10001d6c <__udf>:
10001d6c: de00         	udf	#0x0
10001d6e: defe         	trap

10001d70 <__wfe>:
10001d70: bf20         	wfe
10001d72: 4770         	bx	lr

10001d74 <core::ops::function::FnOnce::call_once::h9fb26c830a661c4a>:
10001d74: 6800         	ldr	r0, [r0]
10001d76: e7fe         	b	0x10001d76 <core::ops::function::FnOnce::call_once::h9fb26c830a661c4a+0x2> @ imm = #-0x4

10001d78 <core::ptr::drop_in_place<core::fmt::Error>::h2f246cc06eb7d04f>:
10001d78: 4770         	bx	lr
10001d7a: d4d4         	bmi	0x10001d26 <cortex_m::delay::Delay::delay_us::h689807d8117d6238+0xaa> @ imm = #-0x58

10001d7c <<T as core::any::Any>::type_id::hd883277038d44999>:
10001d7c: 4802         	ldr	r0, [pc, #0x8]          @ 0x10001d88 <<T as core::any::Any>::type_id::hd883277038d44999+0xc>
10001d7e: 4903         	ldr	r1, [pc, #0xc]          @ 0x10001d8c <<T as core::any::Any>::type_id::hd883277038d44999+0x10>
10001d80: 4a03         	ldr	r2, [pc, #0xc]          @ 0x10001d90 <<T as core::any::Any>::type_id::hd883277038d44999+0x14>
10001d82: 4b04         	ldr	r3, [pc, #0x10]         @ 0x10001d94 <<T as core::any::Any>::type_id::hd883277038d44999+0x18>
10001d84: 4770         	bx	lr
10001d86: 46c0         	mov	r8, r8

10001d88 <$d.137>:
10001d88: a6 7f 64 fd  	.word	0xfd647fa6
10001d8c: dc e4 c7 78  	.word	0x78c7e4dc
10001d90: 94 f2 1d 46  	.word	0x461df294
10001d94: 84 cc ee f3  	.word	0xf3eecc84

10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc>:
10001d98: b580         	push	{r7, lr}
10001d9a: af00         	add	r7, sp, #0x0
10001d9c: b086         	sub	sp, #0x18
10001d9e: aa01         	add	r2, sp, #0x4
10001da0: 2301         	movs	r3, #0x1
10001da2: 8213         	strh	r3, [r2, #0x10]
10001da4: 9104         	str	r1, [sp, #0x10]
10001da6: 9003         	str	r0, [sp, #0xc]
10001da8: 4803         	ldr	r0, [pc, #0xc]          @ 0x10001db8 <core::panicking::panic_fmt::hd2523d0706fb7bbc+0x20>
10001daa: 9002         	str	r0, [sp, #0x8]
10001dac: 4803         	ldr	r0, [pc, #0xc]          @ 0x10001dbc <core::panicking::panic_fmt::hd2523d0706fb7bbc+0x24>
10001dae: 9001         	str	r0, [sp, #0x4]
10001db0: 4610         	mov	r0, r2
10001db2: f7ff f833    	bl	0x10000e1c <rust_begin_unwind> @ imm = #-0xf9a
10001db6: defe         	trap

10001db8 <$d.273>:
10001db8: 88 3a 00 10  	.word	0x10003a88
10001dbc: 88 3a 00 10  	.word	0x10003a88

10001dc0 <core::panicking::panic::h391937ca5788c2f9>:
10001dc0: b580         	push	{r7, lr}
10001dc2: af00         	add	r7, sp, #0x0
10001dc4: b088         	sub	sp, #0x20
10001dc6: 2300         	movs	r3, #0x0
10001dc8: 9304         	str	r3, [sp, #0x10]
10001dca: 2401         	movs	r4, #0x1
10001dcc: 9401         	str	r4, [sp, #0x4]
10001dce: ac06         	add	r4, sp, #0x18
10001dd0: 9400         	str	r4, [sp]
10001dd2: 9303         	str	r3, [sp, #0xc]
10001dd4: 4b04         	ldr	r3, [pc, #0x10]         @ 0x10001de8 <core::panicking::panic::h391937ca5788c2f9+0x28>
10001dd6: 9302         	str	r3, [sp, #0x8]
10001dd8: 9107         	str	r1, [sp, #0x1c]
10001dda: 9006         	str	r0, [sp, #0x18]
10001ddc: 4668         	mov	r0, sp
10001dde: 4611         	mov	r1, r2
10001de0: f7ff ffda    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #-0x4c
10001de4: defe         	trap
10001de6: 46c0         	mov	r8, r8

10001de8 <$d.277>:
10001de8: 88 3a 00 10  	.word	0x10003a88

10001dec <core::panicking::panic_bounds_check::h324c9df020fc5d5d>:
10001dec: b580         	push	{r7, lr}
10001dee: af00         	add	r7, sp, #0x0
10001df0: b08c         	sub	sp, #0x30
10001df2: 9101         	str	r1, [sp, #0x4]
10001df4: 9000         	str	r0, [sp]
10001df6: 2000         	movs	r0, #0x0
10001df8: 9006         	str	r0, [sp, #0x18]
10001dfa: 2002         	movs	r0, #0x2
10001dfc: 9003         	str	r0, [sp, #0xc]
10001dfe: 4908         	ldr	r1, [pc, #0x20]         @ 0x10001e20 <core::panicking::panic_bounds_check::h324c9df020fc5d5d+0x34>
10001e00: 9102         	str	r1, [sp, #0x8]
10001e02: 9005         	str	r0, [sp, #0x14]
10001e04: a808         	add	r0, sp, #0x20
10001e06: 9004         	str	r0, [sp, #0x10]
10001e08: 4806         	ldr	r0, [pc, #0x18]         @ 0x10001e24 <core::panicking::panic_bounds_check::h324c9df020fc5d5d+0x38>
10001e0a: 900b         	str	r0, [sp, #0x2c]
10001e0c: 4669         	mov	r1, sp
10001e0e: 910a         	str	r1, [sp, #0x28]
10001e10: 9009         	str	r0, [sp, #0x24]
10001e12: a801         	add	r0, sp, #0x4
10001e14: 9008         	str	r0, [sp, #0x20]
10001e16: a802         	add	r0, sp, #0x8
10001e18: 4611         	mov	r1, r2
10001e1a: f7ff ffbd    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #-0x86
10001e1e: defe         	trap

10001e20 <$d.285>:
10001e20: ac 3a 00 10  	.word	0x10003aac
10001e24: 4d 2a 00 10  	.word	0x10002a4d

10001e28 <core::result::unwrap_failed::h90ad36707fb7e5ea>:
10001e28: b580         	push	{r7, lr}
10001e2a: af00         	add	r7, sp, #0x0
10001e2c: b08e         	sub	sp, #0x38
10001e2e: 9101         	str	r1, [sp, #0x4]
10001e30: 9000         	str	r0, [sp]
10001e32: 9303         	str	r3, [sp, #0xc]
10001e34: 9202         	str	r2, [sp, #0x8]
10001e36: 2000         	movs	r0, #0x0
10001e38: 9008         	str	r0, [sp, #0x20]
10001e3a: 2002         	movs	r0, #0x2
10001e3c: 9005         	str	r0, [sp, #0x14]
10001e3e: 4909         	ldr	r1, [pc, #0x24]         @ 0x10001e64 <core::result::unwrap_failed::h90ad36707fb7e5ea+0x3c>
10001e40: 9104         	str	r1, [sp, #0x10]
10001e42: 9007         	str	r0, [sp, #0x1c]
10001e44: a80a         	add	r0, sp, #0x28
10001e46: 9006         	str	r0, [sp, #0x18]
10001e48: 4807         	ldr	r0, [pc, #0x1c]         @ 0x10001e68 <core::result::unwrap_failed::h90ad36707fb7e5ea+0x40>
10001e4a: 900d         	str	r0, [sp, #0x34]
10001e4c: a802         	add	r0, sp, #0x8
10001e4e: 900c         	str	r0, [sp, #0x30]
10001e50: 4806         	ldr	r0, [pc, #0x18]         @ 0x10001e6c <core::result::unwrap_failed::h90ad36707fb7e5ea+0x44>
10001e52: 900b         	str	r0, [sp, #0x2c]
10001e54: 4668         	mov	r0, sp
10001e56: 900a         	str	r0, [sp, #0x28]
10001e58: a804         	add	r0, sp, #0x10
10001e5a: 68b9         	ldr	r1, [r7, #0x8]
10001e5c: f7ff ff9c    	bl	0x10001d98 <core::panicking::panic_fmt::hd2523d0706fb7bbc> @ imm = #-0xc8
10001e60: defe         	trap
10001e62: 46c0         	mov	r8, r8

10001e64 <$d.302>:
10001e64: c0 3a 00 10  	.word	0x10003ac0
10001e68: 45 2b 00 10  	.word	0x10002b45
10001e6c: 55 2b 00 10  	.word	0x10002b55

10001e70 <core::fmt::write::h6f57486e7a0dda63>:
10001e70: b5f0         	push	{r4, r5, r6, r7, lr}
10001e72: af03         	add	r7, sp, #0xc
10001e74: b091         	sub	sp, #0x44
10001e76: 2420         	movs	r4, #0x20
10001e78: ad08         	add	r5, sp, #0x20
10001e7a: 2303         	movs	r3, #0x3
10001e7c: 9505         	str	r5, [sp, #0x14]
10001e7e: 552b         	strb	r3, [r5, r4]
10001e80: 940c         	str	r4, [sp, #0x30]
10001e82: 2300         	movs	r3, #0x0
10001e84: ac0d         	add	r4, sp, #0x34
10001e86: c40b         	stm	r4!, {r0, r1, r3}
10001e88: 930a         	str	r3, [sp, #0x28]
10001e8a: 9308         	str	r3, [sp, #0x20]
10001e8c: 6915         	ldr	r5, [r2, #0x10]
10001e8e: 2d00         	cmp	r5, #0x0
10001e90: d065         	beq	0x10001f5e <core::fmt::write::h6f57486e7a0dda63+0xee> @ imm = #0xca
10001e92: 6950         	ldr	r0, [r2, #0x14]
10001e94: 2800         	cmp	r0, #0x0
10001e96: d100         	bne	0x10001e9a <core::fmt::write::h6f57486e7a0dda63+0x2a> @ imm = #0x0
10001e98: e085         	b	0x10001fa6 <core::fmt::write::h6f57486e7a0dda63+0x136> @ imm = #0x10a
10001e9a: 9905         	ldr	r1, [sp, #0x14]
10001e9c: 3120         	adds	r1, #0x20
10001e9e: 9105         	str	r1, [sp, #0x14]
10001ea0: 211f         	movs	r1, #0x1f
10001ea2: 06c9         	lsls	r1, r1, #0x1b
10001ea4: 1e43         	subs	r3, r0, #0x1
10001ea6: 438b         	bics	r3, r1
10001ea8: 1c59         	adds	r1, r3, #0x1
10001eaa: 9101         	str	r1, [sp, #0x4]
10001eac: 0140         	lsls	r0, r0, #0x5
10001eae: 9004         	str	r0, [sp, #0x10]
10001eb0: 6890         	ldr	r0, [r2, #0x8]
10001eb2: 9007         	str	r0, [sp, #0x1c]
10001eb4: 9202         	str	r2, [sp, #0x8]
10001eb6: 6816         	ldr	r6, [r2]
10001eb8: 2400         	movs	r4, #0x0
10001eba: 9506         	str	r5, [sp, #0x18]
10001ebc: 6872         	ldr	r2, [r6, #0x4]
10001ebe: 2a00         	cmp	r2, #0x0
10001ec0: d006         	beq	0x10001ed0 <core::fmt::write::h6f57486e7a0dda63+0x60> @ imm = #0xc
10001ec2: 980e         	ldr	r0, [sp, #0x38]
10001ec4: 68c3         	ldr	r3, [r0, #0xc]
10001ec6: 6831         	ldr	r1, [r6]
10001ec8: 980d         	ldr	r0, [sp, #0x34]
10001eca: 4798         	blx	r3
10001ecc: 2800         	cmp	r0, #0x0
10001ece: d179         	bne	0x10001fc4 <core::fmt::write::h6f57486e7a0dda63+0x154> @ imm = #0xf2
10001ed0: 1928         	adds	r0, r5, r4
10001ed2: 7f01         	ldrb	r1, [r0, #0x1c]
10001ed4: 9a05         	ldr	r2, [sp, #0x14]
10001ed6: 7011         	strb	r1, [r2]
10001ed8: 6901         	ldr	r1, [r0, #0x10]
10001eda: 910c         	str	r1, [sp, #0x30]
10001edc: 6981         	ldr	r1, [r0, #0x18]
10001ede: 910f         	str	r1, [sp, #0x3c]
10001ee0: 6883         	ldr	r3, [r0, #0x8]
10001ee2: 68c2         	ldr	r2, [r0, #0xc]
10001ee4: 2100         	movs	r1, #0x0
10001ee6: 2b00         	cmp	r3, #0x0
10001ee8: d00d         	beq	0x10001f06 <core::fmt::write::h6f57486e7a0dda63+0x96> @ imm = #0x1a
10001eea: 2b01         	cmp	r3, #0x1
10001eec: 460b         	mov	r3, r1
10001eee: d10b         	bne	0x10001f08 <core::fmt::write::h6f57486e7a0dda63+0x98> @ imm = #0x16
10001ef0: 00d5         	lsls	r5, r2, #0x3
10001ef2: 9a07         	ldr	r2, [sp, #0x1c]
10001ef4: 1952         	adds	r2, r2, r5
10001ef6: 6852         	ldr	r2, [r2, #0x4]
10001ef8: 4b35         	ldr	r3, [pc, #0xd4]         @ 0x10001fd0 <core::fmt::write::h6f57486e7a0dda63+0x160>
10001efa: 429a         	cmp	r2, r3
10001efc: 460b         	mov	r3, r1
10001efe: d103         	bne	0x10001f08 <core::fmt::write::h6f57486e7a0dda63+0x98> @ imm = #0x6
10001f00: 9a07         	ldr	r2, [sp, #0x1c]
10001f02: 5952         	ldr	r2, [r2, r5]
10001f04: 6812         	ldr	r2, [r2]
10001f06: 2301         	movs	r3, #0x1
10001f08: 9209         	str	r2, [sp, #0x24]
10001f0a: 9308         	str	r3, [sp, #0x20]
10001f0c: 9d06         	ldr	r5, [sp, #0x18]
10001f0e: 592b         	ldr	r3, [r5, r4]
10001f10: 6842         	ldr	r2, [r0, #0x4]
10001f12: 2b00         	cmp	r3, #0x0
10001f14: d00f         	beq	0x10001f36 <core::fmt::write::h6f57486e7a0dda63+0xc6> @ imm = #0x1e
10001f16: 2b01         	cmp	r3, #0x1
10001f18: d10f         	bne	0x10001f3a <core::fmt::write::h6f57486e7a0dda63+0xca> @ imm = #0x1e
10001f1a: 00d2         	lsls	r2, r2, #0x3
10001f1c: 9b07         	ldr	r3, [sp, #0x1c]
10001f1e: 9203         	str	r2, [sp, #0xc]
10001f20: 189a         	adds	r2, r3, r2
10001f22: 6852         	ldr	r2, [r2, #0x4]
10001f24: 4d2a         	ldr	r5, [pc, #0xa8]         @ 0x10001fd0 <core::fmt::write::h6f57486e7a0dda63+0x160>
10001f26: 42aa         	cmp	r2, r5
10001f28: 9d06         	ldr	r5, [sp, #0x18]
10001f2a: d107         	bne	0x10001f3c <core::fmt::write::h6f57486e7a0dda63+0xcc> @ imm = #0xe
10001f2c: 9903         	ldr	r1, [sp, #0xc]
10001f2e: 5859         	ldr	r1, [r3, r1]
10001f30: 680a         	ldr	r2, [r1]
10001f32: 2101         	movs	r1, #0x1
10001f34: e002         	b	0x10001f3c <core::fmt::write::h6f57486e7a0dda63+0xcc> @ imm = #0x4
10001f36: 2101         	movs	r1, #0x1
10001f38: e7ff         	b	0x10001f3a <core::fmt::write::h6f57486e7a0dda63+0xca> @ imm = #-0x2
10001f3a: 9b07         	ldr	r3, [sp, #0x1c]
10001f3c: 920b         	str	r2, [sp, #0x2c]
10001f3e: 910a         	str	r1, [sp, #0x28]
10001f40: 6940         	ldr	r0, [r0, #0x14]
10001f42: 00c1         	lsls	r1, r0, #0x3
10001f44: 5858         	ldr	r0, [r3, r1]
10001f46: 1859         	adds	r1, r3, r1
10001f48: 684a         	ldr	r2, [r1, #0x4]
10001f4a: a908         	add	r1, sp, #0x20
10001f4c: 4790         	blx	r2
10001f4e: 2800         	cmp	r0, #0x0
10001f50: d138         	bne	0x10001fc4 <core::fmt::write::h6f57486e7a0dda63+0x154> @ imm = #0x70
10001f52: 3420         	adds	r4, #0x20
10001f54: 3608         	adds	r6, #0x8
10001f56: 9804         	ldr	r0, [sp, #0x10]
10001f58: 42a0         	cmp	r0, r4
10001f5a: d1af         	bne	0x10001ebc <core::fmt::write::h6f57486e7a0dda63+0x4c> @ imm = #-0xa2
10001f5c: e021         	b	0x10001fa2 <core::fmt::write::h6f57486e7a0dda63+0x132> @ imm = #0x42
10001f5e: 68d0         	ldr	r0, [r2, #0xc]
10001f60: 2800         	cmp	r0, #0x0
10001f62: d020         	beq	0x10001fa6 <core::fmt::write::h6f57486e7a0dda63+0x136> @ imm = #0x40
10001f64: 6894         	ldr	r4, [r2, #0x8]
10001f66: 00c1         	lsls	r1, r0, #0x3
10001f68: 1865         	adds	r5, r4, r1
10001f6a: 2107         	movs	r1, #0x7
10001f6c: 0749         	lsls	r1, r1, #0x1d
10001f6e: 1e40         	subs	r0, r0, #0x1
10001f70: 4388         	bics	r0, r1
10001f72: 1c40         	adds	r0, r0, #0x1
10001f74: 9001         	str	r0, [sp, #0x4]
10001f76: 9202         	str	r2, [sp, #0x8]
10001f78: 6816         	ldr	r6, [r2]
10001f7a: 6872         	ldr	r2, [r6, #0x4]
10001f7c: 2a00         	cmp	r2, #0x0
10001f7e: d006         	beq	0x10001f8e <core::fmt::write::h6f57486e7a0dda63+0x11e> @ imm = #0xc
10001f80: 980e         	ldr	r0, [sp, #0x38]
10001f82: 68c3         	ldr	r3, [r0, #0xc]
10001f84: 6831         	ldr	r1, [r6]
10001f86: 980d         	ldr	r0, [sp, #0x34]
10001f88: 4798         	blx	r3
10001f8a: 2800         	cmp	r0, #0x0
10001f8c: d11a         	bne	0x10001fc4 <core::fmt::write::h6f57486e7a0dda63+0x154> @ imm = #0x34
10001f8e: cc05         	ldm	r4!, {r0, r2}
10001f90: a908         	add	r1, sp, #0x20
10001f92: 3c08         	subs	r4, #0x8
10001f94: 4790         	blx	r2
10001f96: 2800         	cmp	r0, #0x0
10001f98: d114         	bne	0x10001fc4 <core::fmt::write::h6f57486e7a0dda63+0x154> @ imm = #0x28
10001f9a: 3408         	adds	r4, #0x8
10001f9c: 3608         	adds	r6, #0x8
10001f9e: 42ac         	cmp	r4, r5
10001fa0: d1eb         	bne	0x10001f7a <core::fmt::write::h6f57486e7a0dda63+0x10a> @ imm = #-0x2a
10001fa2: 9a02         	ldr	r2, [sp, #0x8]
10001fa4: 9b01         	ldr	r3, [sp, #0x4]
10001fa6: 6850         	ldr	r0, [r2, #0x4]
10001fa8: 4283         	cmp	r3, r0
10001faa: d20e         	bhs	0x10001fca <core::fmt::write::h6f57486e7a0dda63+0x15a> @ imm = #0x1c
10001fac: 4611         	mov	r1, r2
10001fae: 00d8         	lsls	r0, r3, #0x3
10001fb0: 680a         	ldr	r2, [r1]
10001fb2: 5811         	ldr	r1, [r2, r0]
10001fb4: 1810         	adds	r0, r2, r0
10001fb6: 6842         	ldr	r2, [r0, #0x4]
10001fb8: 980e         	ldr	r0, [sp, #0x38]
10001fba: 68c3         	ldr	r3, [r0, #0xc]
10001fbc: 980d         	ldr	r0, [sp, #0x34]
10001fbe: 4798         	blx	r3
10001fc0: 2800         	cmp	r0, #0x0
10001fc2: d002         	beq	0x10001fca <core::fmt::write::h6f57486e7a0dda63+0x15a> @ imm = #0x4
10001fc4: 2001         	movs	r0, #0x1
10001fc6: b011         	add	sp, #0x44
10001fc8: bdf0         	pop	{r4, r5, r6, r7, pc}
10001fca: 2000         	movs	r0, #0x0
10001fcc: b011         	add	sp, #0x44
10001fce: bdf0         	pop	{r4, r5, r6, r7, pc}

10001fd0 <$d.373>:
10001fd0: 75 1d 00 10  	.word	0x10001d75

10001fd4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac>:
10001fd4: b5f0         	push	{r4, r5, r6, r7, lr}
10001fd6: af03         	add	r7, sp, #0xc
10001fd8: b08b         	sub	sp, #0x2c
10001fda: 9308         	str	r3, [sp, #0x20]
10001fdc: 920a         	str	r2, [sp, #0x28]
10001fde: 4605         	mov	r5, r0
10001fe0: 68fc         	ldr	r4, [r7, #0xc]
10001fe2: 2900         	cmp	r1, #0x0
10001fe4: d005         	beq	0x10001ff2 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1e> @ imm = #0xa
10001fe6: 69eb         	ldr	r3, [r5, #0x1c]
10001fe8: 2001         	movs	r0, #0x1
10001fea: 4018         	ands	r0, r3
10001fec: d03a         	beq	0x10002064 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x90> @ imm = #0x74
10001fee: 212b         	movs	r1, #0x2b
10001ff0: e03a         	b	0x10002068 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x94> @ imm = #0x74
10001ff2: 69eb         	ldr	r3, [r5, #0x1c]
10001ff4: 1c62         	adds	r2, r4, #0x1
10001ff6: 202d         	movs	r0, #0x2d
10001ff8: 9007         	str	r0, [sp, #0x1c]
10001ffa: 0758         	lsls	r0, r3, #0x1d
10001ffc: d538         	bpl	0x10002070 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x9c> @ imm = #0x70
10001ffe: 9908         	ldr	r1, [sp, #0x20]
10002000: 2910         	cmp	r1, #0x10
10002002: 9209         	str	r2, [sp, #0x24]
10002004: d237         	bhs	0x10002076 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xa2> @ imm = #0x6e
10002006: 2900         	cmp	r1, #0x0
10002008: d03b         	beq	0x10002082 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xae> @ imm = #0x76
1000200a: 9303         	str	r3, [sp, #0xc]
1000200c: 9504         	str	r5, [sp, #0x10]
1000200e: 9405         	str	r4, [sp, #0x14]
10002010: 2303         	movs	r3, #0x3
10002012: 4608         	mov	r0, r1
10002014: 4018         	ands	r0, r3
10002016: 9006         	str	r0, [sp, #0x18]
10002018: 2904         	cmp	r1, #0x4
1000201a: d300         	blo	0x1000201e <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x4a> @ imm = #0x0
1000201c: e088         	b	0x10002130 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x15c> @ imm = #0x110
1000201e: 2000         	movs	r0, #0x0
10002020: 4602         	mov	r2, r0
10002022: 9906         	ldr	r1, [sp, #0x18]
10002024: 2900         	cmp	r1, #0x0
10002026: 9c05         	ldr	r4, [sp, #0x14]
10002028: 9d04         	ldr	r5, [sp, #0x10]
1000202a: 9b03         	ldr	r3, [sp, #0xc]
1000202c: d02a         	beq	0x10002084 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xb0> @ imm = #0x54
1000202e: 990a         	ldr	r1, [sp, #0x28]
10002030: 568b         	ldrsb	r3, [r1, r2]
10002032: 2140         	movs	r1, #0x40
10002034: 43c9         	mvns	r1, r1
10002036: 428b         	cmp	r3, r1
10002038: dd00         	ble	0x1000203c <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x68> @ imm = #0x0
1000203a: 1c40         	adds	r0, r0, #0x1
1000203c: 9b06         	ldr	r3, [sp, #0x18]
1000203e: 2b01         	cmp	r3, #0x1
10002040: d00e         	beq	0x10002060 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x8c> @ imm = #0x1c
10002042: 9b0a         	ldr	r3, [sp, #0x28]
10002044: 18d2         	adds	r2, r2, r3
10002046: 2301         	movs	r3, #0x1
10002048: 56d3         	ldrsb	r3, [r2, r3]
1000204a: 428b         	cmp	r3, r1
1000204c: dd00         	ble	0x10002050 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x7c> @ imm = #0x0
1000204e: 1c40         	adds	r0, r0, #0x1
10002050: 9b06         	ldr	r3, [sp, #0x18]
10002052: 2b02         	cmp	r3, #0x2
10002054: d004         	beq	0x10002060 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x8c> @ imm = #0x8
10002056: 2302         	movs	r3, #0x2
10002058: 56d2         	ldrsb	r2, [r2, r3]
1000205a: 428a         	cmp	r2, r1
1000205c: dd00         	ble	0x10002060 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x8c> @ imm = #0x0
1000205e: 1c40         	adds	r0, r0, #0x1
10002060: 9b03         	ldr	r3, [sp, #0xc]
10002062: e00f         	b	0x10002084 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xb0> @ imm = #0x1e
10002064: 2111         	movs	r1, #0x11
10002066: 0409         	lsls	r1, r1, #0x10
10002068: 9107         	str	r1, [sp, #0x1c]
1000206a: 1902         	adds	r2, r0, r4
1000206c: 0758         	lsls	r0, r3, #0x1d
1000206e: d4c6         	bmi	0x10001ffe <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x2a> @ imm = #-0x74
10002070: 2000         	movs	r0, #0x0
10002072: 900a         	str	r0, [sp, #0x28]
10002074: e008         	b	0x10002088 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xb4> @ imm = #0x10
10002076: 980a         	ldr	r0, [sp, #0x28]
10002078: 461e         	mov	r6, r3
1000207a: f000 fa6f    	bl	0x1000255c <core::str::count::do_count_chars::h419a4d2620ecb10e> @ imm = #0x4de
1000207e: 4633         	mov	r3, r6
10002080: e000         	b	0x10002084 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xb0> @ imm = #0x0
10002082: 2000         	movs	r0, #0x0
10002084: 9a09         	ldr	r2, [sp, #0x24]
10002086: 1882         	adds	r2, r0, r2
10002088: 68b8         	ldr	r0, [r7, #0x8]
1000208a: 9006         	str	r0, [sp, #0x18]
1000208c: 6828         	ldr	r0, [r5]
1000208e: 2800         	cmp	r0, #0x0
10002090: d018         	beq	0x100020c4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xf0> @ imm = #0x30
10002092: 686e         	ldr	r6, [r5, #0x4]
10002094: 4296         	cmp	r6, r2
10002096: d915         	bls	0x100020c4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xf0> @ imm = #0x2a
10002098: 0718         	lsls	r0, r3, #0x1c
1000209a: 9405         	str	r4, [sp, #0x14]
1000209c: d42c         	bmi	0x100020f8 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x124> @ imm = #0x58
1000209e: 2020         	movs	r0, #0x20
100020a0: 5c28         	ldrb	r0, [r5, r0]
100020a2: 1ab3         	subs	r3, r6, r2
100020a4: 0081         	lsls	r1, r0, #0x2
100020a6: a201         	adr	r2, #4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0xd7>
100020a8: 5851         	ldr	r1, [r2, r1]
100020aa: 468f         	mov	pc, r1

100020ac <$d.375>:
100020ac: ad 21 00 10  	.word	0x100021ad
100020b0: bd 20 00 10  	.word	0x100020bd
100020b4: a7 21 00 10  	.word	0x100021a7
100020b8: bd 20 00 10  	.word	0x100020bd

100020bc <$t.376>:
100020bc: 2100         	movs	r1, #0x0
100020be: 4618         	mov	r0, r3
100020c0: 460b         	mov	r3, r1
100020c2: e073         	b	0x100021ac <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1d8> @ imm = #0xe6
100020c4: 4626         	mov	r6, r4
100020c6: 696c         	ldr	r4, [r5, #0x14]
100020c8: 69ad         	ldr	r5, [r5, #0x18]
100020ca: 9808         	ldr	r0, [sp, #0x20]
100020cc: 9000         	str	r0, [sp]
100020ce: 4620         	mov	r0, r4
100020d0: 4629         	mov	r1, r5
100020d2: 9a07         	ldr	r2, [sp, #0x1c]
100020d4: 9b0a         	ldr	r3, [sp, #0x28]
100020d6: f000 f8b9    	bl	0x1000224c <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff> @ imm = #0x172
100020da: 2800         	cmp	r0, #0x0
100020dc: d003         	beq	0x100020e6 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x112> @ imm = #0x6
100020de: 2401         	movs	r4, #0x1
100020e0: 4620         	mov	r0, r4
100020e2: b00b         	add	sp, #0x2c
100020e4: bdf0         	pop	{r4, r5, r6, r7, pc}
100020e6: 68eb         	ldr	r3, [r5, #0xc]
100020e8: 4620         	mov	r0, r4
100020ea: 9906         	ldr	r1, [sp, #0x18]
100020ec: 4632         	mov	r2, r6
100020ee: 4798         	blx	r3
100020f0: 4604         	mov	r4, r0
100020f2: 4620         	mov	r0, r4
100020f4: b00b         	add	sp, #0x2c
100020f6: bdf0         	pop	{r4, r5, r6, r7, pc}
100020f8: 9209         	str	r2, [sp, #0x24]
100020fa: 2020         	movs	r0, #0x20
100020fc: 5c29         	ldrb	r1, [r5, r0]
100020fe: 9102         	str	r1, [sp, #0x8]
10002100: 2101         	movs	r1, #0x1
10002102: 9103         	str	r1, [sp, #0xc]
10002104: 5429         	strb	r1, [r5, r0]
10002106: 6928         	ldr	r0, [r5, #0x10]
10002108: 9001         	str	r0, [sp, #0x4]
1000210a: 2030         	movs	r0, #0x30
1000210c: 6128         	str	r0, [r5, #0x10]
1000210e: 696c         	ldr	r4, [r5, #0x14]
10002110: 9504         	str	r5, [sp, #0x10]
10002112: 69ad         	ldr	r5, [r5, #0x18]
10002114: 9808         	ldr	r0, [sp, #0x20]
10002116: 9000         	str	r0, [sp]
10002118: 4620         	mov	r0, r4
1000211a: 4629         	mov	r1, r5
1000211c: 9a07         	ldr	r2, [sp, #0x1c]
1000211e: 9b0a         	ldr	r3, [sp, #0x28]
10002120: f000 f894    	bl	0x1000224c <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff> @ imm = #0x128
10002124: 2800         	cmp	r0, #0x0
10002126: d02c         	beq	0x10002182 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1ae> @ imm = #0x58
10002128: 9c03         	ldr	r4, [sp, #0xc]
1000212a: 4620         	mov	r0, r4
1000212c: b00b         	add	sp, #0x2c
1000212e: bdf0         	pop	{r4, r5, r6, r7, pc}
10002130: 460d         	mov	r5, r1
10002132: 439d         	bics	r5, r3
10002134: 2000         	movs	r0, #0x0
10002136: 4602         	mov	r2, r0
10002138: e003         	b	0x10002142 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x16e> @ imm = #0x6
1000213a: 1d12         	adds	r2, r2, #0x4
1000213c: 4295         	cmp	r5, r2
1000213e: d100         	bne	0x10002142 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x16e> @ imm = #0x0
10002140: e76f         	b	0x10002022 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x4e> @ imm = #-0x122
10002142: 990a         	ldr	r1, [sp, #0x28]
10002144: 568e         	ldrsb	r6, [r1, r2]
10002146: 2140         	movs	r1, #0x40
10002148: 43c9         	mvns	r1, r1
1000214a: 428e         	cmp	r6, r1
1000214c: dd00         	ble	0x10002150 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x17c> @ imm = #0x0
1000214e: 1c40         	adds	r0, r0, #0x1
10002150: 9c0a         	ldr	r4, [sp, #0x28]
10002152: 18a6         	adds	r6, r4, r2
10002154: 2401         	movs	r4, #0x1
10002156: 5734         	ldrsb	r4, [r6, r4]
10002158: 428c         	cmp	r4, r1
1000215a: dc07         	bgt	0x1000216c <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x198> @ imm = #0xe
1000215c: 2402         	movs	r4, #0x2
1000215e: 5734         	ldrsb	r4, [r6, r4]
10002160: 428c         	cmp	r4, r1
10002162: dc08         	bgt	0x10002176 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1a2> @ imm = #0x10
10002164: 56f4         	ldrsb	r4, [r6, r3]
10002166: 428c         	cmp	r4, r1
10002168: dde7         	ble	0x1000213a <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x166> @ imm = #-0x32
1000216a: e008         	b	0x1000217e <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1aa> @ imm = #0x10
1000216c: 1c40         	adds	r0, r0, #0x1
1000216e: 2402         	movs	r4, #0x2
10002170: 5734         	ldrsb	r4, [r6, r4]
10002172: 428c         	cmp	r4, r1
10002174: ddf6         	ble	0x10002164 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x190> @ imm = #-0x14
10002176: 1c40         	adds	r0, r0, #0x1
10002178: 56f4         	ldrsb	r4, [r6, r3]
1000217a: 428c         	cmp	r4, r1
1000217c: dddd         	ble	0x1000213a <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x166> @ imm = #-0x46
1000217e: 1c40         	adds	r0, r0, #0x1
10002180: e7db         	b	0x1000213a <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x166> @ imm = #-0x4a
10002182: 9804         	ldr	r0, [sp, #0x10]
10002184: 3020         	adds	r0, #0x20
10002186: 900a         	str	r0, [sp, #0x28]
10002188: 9809         	ldr	r0, [sp, #0x24]
1000218a: 1a30         	subs	r0, r6, r0
1000218c: 1c46         	adds	r6, r0, #0x1
1000218e: 1e76         	subs	r6, r6, #0x1
10002190: d03e         	beq	0x10002210 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x23c> @ imm = #0x7c
10002192: 692a         	ldr	r2, [r5, #0x10]
10002194: 2130         	movs	r1, #0x30
10002196: 4620         	mov	r0, r4
10002198: 4790         	blx	r2
1000219a: 2800         	cmp	r0, #0x0
1000219c: d0f7         	beq	0x1000218e <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1ba> @ imm = #-0x12
1000219e: 9c03         	ldr	r4, [sp, #0xc]
100021a0: 4620         	mov	r0, r4
100021a2: b00b         	add	sp, #0x2c
100021a4: bdf0         	pop	{r4, r5, r6, r7, pc}
100021a6: 0858         	lsrs	r0, r3, #0x1
100021a8: 1c59         	adds	r1, r3, #0x1
100021aa: 084b         	lsrs	r3, r1, #0x1
100021ac: 9304         	str	r3, [sp, #0x10]
100021ae: 1c44         	adds	r4, r0, #0x1
100021b0: 6928         	ldr	r0, [r5, #0x10]
100021b2: 9009         	str	r0, [sp, #0x24]
100021b4: 4628         	mov	r0, r5
100021b6: 696d         	ldr	r5, [r5, #0x14]
100021b8: 6986         	ldr	r6, [r0, #0x18]
100021ba: 1e64         	subs	r4, r4, #0x1
100021bc: d006         	beq	0x100021cc <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1f8> @ imm = #0xc
100021be: 6932         	ldr	r2, [r6, #0x10]
100021c0: 4628         	mov	r0, r5
100021c2: 9909         	ldr	r1, [sp, #0x24]
100021c4: 4790         	blx	r2
100021c6: 2800         	cmp	r0, #0x0
100021c8: d0f7         	beq	0x100021ba <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x1e6> @ imm = #-0x12
100021ca: e788         	b	0x100020de <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x10a> @ imm = #-0xf0
100021cc: 9808         	ldr	r0, [sp, #0x20]
100021ce: 9000         	str	r0, [sp]
100021d0: 4628         	mov	r0, r5
100021d2: 4631         	mov	r1, r6
100021d4: 9a07         	ldr	r2, [sp, #0x1c]
100021d6: 9b0a         	ldr	r3, [sp, #0x28]
100021d8: f000 f838    	bl	0x1000224c <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff> @ imm = #0x70
100021dc: 2401         	movs	r4, #0x1
100021de: 2800         	cmp	r0, #0x0
100021e0: d000         	beq	0x100021e4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x210> @ imm = #0x0
100021e2: e77d         	b	0x100020e0 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x10c> @ imm = #-0x106
100021e4: 68f3         	ldr	r3, [r6, #0xc]
100021e6: 4628         	mov	r0, r5
100021e8: 9906         	ldr	r1, [sp, #0x18]
100021ea: 9a05         	ldr	r2, [sp, #0x14]
100021ec: 4798         	blx	r3
100021ee: 2800         	cmp	r0, #0x0
100021f0: d000         	beq	0x100021f4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x220> @ imm = #0x0
100021f2: e775         	b	0x100020e0 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x10c> @ imm = #-0x116
100021f4: 2400         	movs	r4, #0x0
100021f6: 9904         	ldr	r1, [sp, #0x10]
100021f8: 42a1         	cmp	r1, r4
100021fa: d01c         	beq	0x10002236 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x262> @ imm = #0x38
100021fc: 6932         	ldr	r2, [r6, #0x10]
100021fe: 4628         	mov	r0, r5
10002200: 9909         	ldr	r1, [sp, #0x24]
10002202: 4790         	blx	r2
10002204: 9904         	ldr	r1, [sp, #0x10]
10002206: 1c64         	adds	r4, r4, #0x1
10002208: 2800         	cmp	r0, #0x0
1000220a: d0f5         	beq	0x100021f8 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x224> @ imm = #-0x16
1000220c: 1e60         	subs	r0, r4, #0x1
1000220e: e013         	b	0x10002238 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x264> @ imm = #0x26
10002210: 68eb         	ldr	r3, [r5, #0xc]
10002212: 4620         	mov	r0, r4
10002214: 9906         	ldr	r1, [sp, #0x18]
10002216: 9a05         	ldr	r2, [sp, #0x14]
10002218: 4798         	blx	r3
1000221a: 2800         	cmp	r0, #0x0
1000221c: 9c03         	ldr	r4, [sp, #0xc]
1000221e: d000         	beq	0x10002222 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x24e> @ imm = #0x0
10002220: e75e         	b	0x100020e0 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x10c> @ imm = #-0x144
10002222: 9802         	ldr	r0, [sp, #0x8]
10002224: 990a         	ldr	r1, [sp, #0x28]
10002226: 7008         	strb	r0, [r1]
10002228: 9804         	ldr	r0, [sp, #0x10]
1000222a: 9901         	ldr	r1, [sp, #0x4]
1000222c: 6101         	str	r1, [r0, #0x10]
1000222e: 2400         	movs	r4, #0x0
10002230: 4620         	mov	r0, r4
10002232: b00b         	add	sp, #0x2c
10002234: bdf0         	pop	{r4, r5, r6, r7, pc}
10002236: 4608         	mov	r0, r1
10002238: 4288         	cmp	r0, r1
1000223a: d303         	blo	0x10002244 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x270> @ imm = #0x6
1000223c: 2400         	movs	r4, #0x0
1000223e: 4620         	mov	r0, r4
10002240: b00b         	add	sp, #0x2c
10002242: bdf0         	pop	{r4, r5, r6, r7, pc}
10002244: 2401         	movs	r4, #0x1
10002246: 4620         	mov	r0, r4
10002248: b00b         	add	sp, #0x2c
1000224a: bdf0         	pop	{r4, r5, r6, r7, pc}

1000224c <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff>:
1000224c: b5f0         	push	{r4, r5, r6, r7, lr}
1000224e: af03         	add	r7, sp, #0xc
10002250: b081         	sub	sp, #0x4
10002252: 461c         	mov	r4, r3
10002254: 460e         	mov	r6, r1
10002256: 4605         	mov	r5, r0
10002258: 2011         	movs	r0, #0x11
1000225a: 0400         	lsls	r0, r0, #0x10
1000225c: 4282         	cmp	r2, r0
1000225e: d008         	beq	0x10002272 <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff+0x26> @ imm = #0x10
10002260: 6933         	ldr	r3, [r6, #0x10]
10002262: 4628         	mov	r0, r5
10002264: 4611         	mov	r1, r2
10002266: 4798         	blx	r3
10002268: 2800         	cmp	r0, #0x0
1000226a: d002         	beq	0x10002272 <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff+0x26> @ imm = #0x4
1000226c: 2001         	movs	r0, #0x1
1000226e: b001         	add	sp, #0x4
10002270: bdf0         	pop	{r4, r5, r6, r7, pc}
10002272: 2c00         	cmp	r4, #0x0
10002274: d006         	beq	0x10002284 <core::fmt::Formatter::pad_integral::write_prefix::he0b9ec62237f10ff+0x38> @ imm = #0xc
10002276: 68ba         	ldr	r2, [r7, #0x8]
10002278: 68f3         	ldr	r3, [r6, #0xc]
1000227a: 4628         	mov	r0, r5
1000227c: 4621         	mov	r1, r4
1000227e: 4798         	blx	r3
10002280: b001         	add	sp, #0x4
10002282: bdf0         	pop	{r4, r5, r6, r7, pc}
10002284: 2000         	movs	r0, #0x0
10002286: b001         	add	sp, #0x4
10002288: bdf0         	pop	{r4, r5, r6, r7, pc}
1000228a: d4d4         	bmi	0x10002236 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac+0x262> @ imm = #-0x58

1000228c <core::fmt::Formatter::pad::hf5cda8bdf873db52>:
1000228c: b5f0         	push	{r4, r5, r6, r7, lr}
1000228e: af03         	add	r7, sp, #0xc
10002290: b089         	sub	sp, #0x24
10002292: 4615         	mov	r5, r2
10002294: 460c         	mov	r4, r1
10002296: 4603         	mov	r3, r0
10002298: 6880         	ldr	r0, [r0, #0x8]
1000229a: 6819         	ldr	r1, [r3]
1000229c: 9104         	str	r1, [sp, #0x10]
1000229e: 4301         	orrs	r1, r0
100022a0: d100         	bne	0x100022a4 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x18> @ imm = #0x0
100022a2: e0d3         	b	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #0x1a6
100022a4: 2800         	cmp	r0, #0x0
100022a6: 9306         	str	r3, [sp, #0x18]
100022a8: d100         	bne	0x100022ac <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x20> @ imm = #0x0
100022aa: e085         	b	0x100023b8 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x12c> @ imm = #0x10a
100022ac: 9501         	str	r5, [sp, #0x4]
100022ae: 1960         	adds	r0, r4, r5
100022b0: 9007         	str	r0, [sp, #0x1c]
100022b2: 2011         	movs	r0, #0x11
100022b4: 0400         	lsls	r0, r0, #0x10
100022b6: 9008         	str	r0, [sp, #0x20]
100022b8: 68d8         	ldr	r0, [r3, #0xc]
100022ba: 1c45         	adds	r5, r0, #0x1
100022bc: 2100         	movs	r1, #0x0
100022be: 4626         	mov	r6, r4
100022c0: 9405         	str	r4, [sp, #0x14]
100022c2: e005         	b	0x100022d0 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x44> @ imm = #0xa
100022c4: 1c5e         	adds	r6, r3, #0x1
100022c6: 1ac9         	subs	r1, r1, r3
100022c8: 1989         	adds	r1, r1, r6
100022ca: 9a08         	ldr	r2, [sp, #0x20]
100022cc: 4290         	cmp	r0, r2
100022ce: d033         	beq	0x10002338 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xac> @ imm = #0x66
100022d0: 4633         	mov	r3, r6
100022d2: 1e6d         	subs	r5, r5, #0x1
100022d4: d036         	beq	0x10002344 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xb8> @ imm = #0x6c
100022d6: 9807         	ldr	r0, [sp, #0x1c]
100022d8: 4283         	cmp	r3, r0
100022da: d02d         	beq	0x10002338 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xac> @ imm = #0x5a
100022dc: 2000         	movs	r0, #0x0
100022de: 561a         	ldrsb	r2, [r3, r0]
100022e0: b2d0         	uxtb	r0, r2
100022e2: 2a00         	cmp	r2, #0x0
100022e4: d5ee         	bpl	0x100022c4 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x38> @ imm = #-0x24
100022e6: 785c         	ldrb	r4, [r3, #0x1]
100022e8: 223f         	movs	r2, #0x3f
100022ea: 4014         	ands	r4, r2
100022ec: 261f         	movs	r6, #0x1f
100022ee: 4006         	ands	r6, r0
100022f0: 28df         	cmp	r0, #0xdf
100022f2: d916         	bls	0x10002322 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x96> @ imm = #0x2c
100022f4: 9102         	str	r1, [sp, #0x8]
100022f6: 9203         	str	r2, [sp, #0xc]
100022f8: 789a         	ldrb	r2, [r3, #0x2]
100022fa: 9903         	ldr	r1, [sp, #0xc]
100022fc: 400a         	ands	r2, r1
100022fe: 01a4         	lsls	r4, r4, #0x6
10002300: 18a4         	adds	r4, r4, r2
10002302: 28f0         	cmp	r0, #0xf0
10002304: d312         	blo	0x1000232c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xa0> @ imm = #0x24
10002306: 78d8         	ldrb	r0, [r3, #0x3]
10002308: 9a03         	ldr	r2, [sp, #0xc]
1000230a: 4010         	ands	r0, r2
1000230c: 01a2         	lsls	r2, r4, #0x6
1000230e: 1810         	adds	r0, r2, r0
10002310: 0772         	lsls	r2, r6, #0x1d
10002312: 0ad2         	lsrs	r2, r2, #0xb
10002314: 1880         	adds	r0, r0, r2
10002316: 9a08         	ldr	r2, [sp, #0x20]
10002318: 4290         	cmp	r0, r2
1000231a: d100         	bne	0x1000231e <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x92> @ imm = #0x0
1000231c: e0fc         	b	0x10002518 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x28c> @ imm = #0x1f8
1000231e: 1d1e         	adds	r6, r3, #0x4
10002320: e007         	b	0x10002332 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xa6> @ imm = #0xe
10002322: 01b0         	lsls	r0, r6, #0x6
10002324: 1900         	adds	r0, r0, r4
10002326: 1c9e         	adds	r6, r3, #0x2
10002328: 9c05         	ldr	r4, [sp, #0x14]
1000232a: e7cc         	b	0x100022c6 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x3a> @ imm = #-0x68
1000232c: 0330         	lsls	r0, r6, #0xc
1000232e: 1820         	adds	r0, r4, r0
10002330: 1cde         	adds	r6, r3, #0x3
10002332: 9c05         	ldr	r4, [sp, #0x14]
10002334: 9902         	ldr	r1, [sp, #0x8]
10002336: e7c6         	b	0x100022c6 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x3a> @ imm = #-0x74
10002338: 9d01         	ldr	r5, [sp, #0x4]
1000233a: 9b06         	ldr	r3, [sp, #0x18]
1000233c: 9804         	ldr	r0, [sp, #0x10]
1000233e: 2800         	cmp	r0, #0x0
10002340: d13d         	bne	0x100023be <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x132> @ imm = #0x7a
10002342: e083         	b	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #0x106
10002344: 9807         	ldr	r0, [sp, #0x1c]
10002346: 4283         	cmp	r3, r0
10002348: 9d01         	ldr	r5, [sp, #0x4]
1000234a: d026         	beq	0x1000239a <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x10e> @ imm = #0x4c
1000234c: 2400         	movs	r4, #0x0
1000234e: 5718         	ldrsb	r0, [r3, r4]
10002350: 2800         	cmp	r0, #0x0
10002352: d517         	bpl	0x10002384 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xf8> @ imm = #0x2e
10002354: b2c0         	uxtb	r0, r0
10002356: 28e0         	cmp	r0, #0xe0
10002358: d314         	blo	0x10002384 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xf8> @ imm = #0x28
1000235a: 28f0         	cmp	r0, #0xf0
1000235c: d312         	blo	0x10002384 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xf8> @ imm = #0x24
1000235e: 785a         	ldrb	r2, [r3, #0x1]
10002360: 78dd         	ldrb	r5, [r3, #0x3]
10002362: 263f         	movs	r6, #0x3f
10002364: 402e         	ands	r6, r5
10002366: 9d01         	ldr	r5, [sp, #0x4]
10002368: 0692         	lsls	r2, r2, #0x1a
1000236a: 0b92         	lsrs	r2, r2, #0xe
1000236c: 789b         	ldrb	r3, [r3, #0x2]
1000236e: 069b         	lsls	r3, r3, #0x1a
10002370: 0d1b         	lsrs	r3, r3, #0x14
10002372: 189a         	adds	r2, r3, r2
10002374: 1992         	adds	r2, r2, r6
10002376: 0740         	lsls	r0, r0, #0x1d
10002378: 0ac0         	lsrs	r0, r0, #0xb
1000237a: 1810         	adds	r0, r2, r0
1000237c: 9a08         	ldr	r2, [sp, #0x20]
1000237e: 4290         	cmp	r0, r2
10002380: d100         	bne	0x10002384 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0xf8> @ imm = #0x0
10002382: e0ca         	b	0x1000251a <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x28e> @ imm = #0x194
10002384: 2900         	cmp	r1, #0x0
10002386: d00e         	beq	0x100023a6 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x11a> @ imm = #0x1c
10002388: 42a9         	cmp	r1, r5
1000238a: d20b         	bhs	0x100023a4 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x118> @ imm = #0x16
1000238c: 9805         	ldr	r0, [sp, #0x14]
1000238e: 5640         	ldrsb	r0, [r0, r1]
10002390: 223f         	movs	r2, #0x3f
10002392: 43d2         	mvns	r2, r2
10002394: 4290         	cmp	r0, r2
10002396: da06         	bge	0x100023a6 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x11a> @ imm = #0xc
10002398: e006         	b	0x100023a8 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x11c> @ imm = #0xc
1000239a: 9b06         	ldr	r3, [sp, #0x18]
1000239c: 9804         	ldr	r0, [sp, #0x10]
1000239e: 2800         	cmp	r0, #0x0
100023a0: d10d         	bne	0x100023be <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x132> @ imm = #0x1a
100023a2: e053         	b	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #0xa6
100023a4: d100         	bne	0x100023a8 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x11c> @ imm = #0x0
100023a6: 9c05         	ldr	r4, [sp, #0x14]
100023a8: 2c00         	cmp	r4, #0x0
100023aa: d000         	beq	0x100023ae <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x122> @ imm = #0x0
100023ac: 460d         	mov	r5, r1
100023ae: 2c00         	cmp	r4, #0x0
100023b0: 9b06         	ldr	r3, [sp, #0x18]
100023b2: d000         	beq	0x100023b6 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x12a> @ imm = #0x0
100023b4: 9405         	str	r4, [sp, #0x14]
100023b6: 9c05         	ldr	r4, [sp, #0x14]
100023b8: 9804         	ldr	r0, [sp, #0x10]
100023ba: 2800         	cmp	r0, #0x0
100023bc: d046         	beq	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #0x8c
100023be: 6858         	ldr	r0, [r3, #0x4]
100023c0: 2d10         	cmp	r5, #0x10
100023c2: 9007         	str	r0, [sp, #0x1c]
100023c4: d226         	bhs	0x10002414 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x188> @ imm = #0x4c
100023c6: 2d00         	cmp	r5, #0x0
100023c8: d03c         	beq	0x10002444 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1b8> @ imm = #0x78
100023ca: 2603         	movs	r6, #0x3
100023cc: 4629         	mov	r1, r5
100023ce: 4031         	ands	r1, r6
100023d0: 9105         	str	r1, [sp, #0x14]
100023d2: 2d04         	cmp	r5, #0x4
100023d4: 9501         	str	r5, [sp, #0x4]
100023d6: d241         	bhs	0x1000245c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1d0> @ imm = #0x82
100023d8: 2000         	movs	r0, #0x0
100023da: 4602         	mov	r2, r0
100023dc: 9905         	ldr	r1, [sp, #0x14]
100023de: 2900         	cmp	r1, #0x0
100023e0: 9d01         	ldr	r5, [sp, #0x4]
100023e2: d01c         	beq	0x1000241e <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x192> @ imm = #0x38
100023e4: 56a3         	ldrsb	r3, [r4, r2]
100023e6: 2140         	movs	r1, #0x40
100023e8: 43c9         	mvns	r1, r1
100023ea: 428b         	cmp	r3, r1
100023ec: dd00         	ble	0x100023f0 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x164> @ imm = #0x0
100023ee: 1c40         	adds	r0, r0, #0x1
100023f0: 9b05         	ldr	r3, [sp, #0x14]
100023f2: 2b01         	cmp	r3, #0x1
100023f4: d012         	beq	0x1000241c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x190> @ imm = #0x24
100023f6: 1912         	adds	r2, r2, r4
100023f8: 2301         	movs	r3, #0x1
100023fa: 56d3         	ldrsb	r3, [r2, r3]
100023fc: 428b         	cmp	r3, r1
100023fe: dd00         	ble	0x10002402 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x176> @ imm = #0x0
10002400: 1c40         	adds	r0, r0, #0x1
10002402: 9b05         	ldr	r3, [sp, #0x14]
10002404: 2b02         	cmp	r3, #0x2
10002406: d009         	beq	0x1000241c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x190> @ imm = #0x12
10002408: 2302         	movs	r3, #0x2
1000240a: 56d2         	ldrsb	r2, [r2, r3]
1000240c: 428a         	cmp	r2, r1
1000240e: dd05         	ble	0x1000241c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x190> @ imm = #0xa
10002410: 1c40         	adds	r0, r0, #0x1
10002412: e003         	b	0x1000241c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x190> @ imm = #0x6
10002414: 4620         	mov	r0, r4
10002416: 4629         	mov	r1, r5
10002418: f000 f8a0    	bl	0x1000255c <core::str::count::do_count_chars::h419a4d2620ecb10e> @ imm = #0x140
1000241c: 9b06         	ldr	r3, [sp, #0x18]
1000241e: 9907         	ldr	r1, [sp, #0x1c]
10002420: 4281         	cmp	r1, r0
10002422: d913         	bls	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #0x26
10002424: 1a0e         	subs	r6, r1, r0
10002426: 2020         	movs	r0, #0x20
10002428: 5c19         	ldrb	r1, [r3, r0]
1000242a: 2000         	movs	r0, #0x0
1000242c: 9405         	str	r4, [sp, #0x14]
1000242e: 9501         	str	r5, [sp, #0x4]
10002430: 4479         	add	r1, pc
10002432: 7909         	ldrb	r1, [r1, #0x4]
10002434: 0049         	lsls	r1, r1, #0x1
10002436: 448f         	add	pc, r1

10002438 <$d.379>:
10002438: 41 01 3e 41  	.word	0x413e0141

1000243c <$t.380>:
1000243c: 2100         	movs	r1, #0x0
1000243e: 4630         	mov	r0, r6
10002440: 460e         	mov	r6, r1
10002442: e03b         	b	0x100024bc <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x230> @ imm = #0x76
10002444: 2000         	movs	r0, #0x0
10002446: 9907         	ldr	r1, [sp, #0x1c]
10002448: 4281         	cmp	r1, r0
1000244a: d8eb         	bhi	0x10002424 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x198> @ imm = #-0x2a
1000244c: 6958         	ldr	r0, [r3, #0x14]
1000244e: 6999         	ldr	r1, [r3, #0x18]
10002450: 68cb         	ldr	r3, [r1, #0xc]
10002452: 4621         	mov	r1, r4
10002454: 462a         	mov	r2, r5
10002456: 4798         	blx	r3
10002458: b009         	add	sp, #0x24
1000245a: bdf0         	pop	{r4, r5, r6, r7, pc}
1000245c: 43b5         	bics	r5, r6
1000245e: 9508         	str	r5, [sp, #0x20]
10002460: 2000         	movs	r0, #0x0
10002462: 4602         	mov	r2, r0
10002464: e005         	b	0x10002472 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1e6> @ imm = #0xa
10002466: 461c         	mov	r4, r3
10002468: 9b06         	ldr	r3, [sp, #0x18]
1000246a: 1d12         	adds	r2, r2, #0x4
1000246c: 9908         	ldr	r1, [sp, #0x20]
1000246e: 4291         	cmp	r1, r2
10002470: d0b4         	beq	0x100023dc <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x150> @ imm = #-0x98
10002472: 4635         	mov	r5, r6
10002474: 56a6         	ldrsb	r6, [r4, r2]
10002476: 2140         	movs	r1, #0x40
10002478: 43c9         	mvns	r1, r1
1000247a: 428e         	cmp	r6, r1
1000247c: dd00         	ble	0x10002480 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1f4> @ imm = #0x0
1000247e: 1c40         	adds	r0, r0, #0x1
10002480: 4623         	mov	r3, r4
10002482: 18a6         	adds	r6, r4, r2
10002484: 2401         	movs	r4, #0x1
10002486: 5734         	ldrsb	r4, [r6, r4]
10002488: 428c         	cmp	r4, r1
1000248a: dc08         	bgt	0x1000249e <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x212> @ imm = #0x10
1000248c: 2402         	movs	r4, #0x2
1000248e: 5734         	ldrsb	r4, [r6, r4]
10002490: 428c         	cmp	r4, r1
10002492: dc09         	bgt	0x100024a8 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x21c> @ imm = #0x12
10002494: 5774         	ldrsb	r4, [r6, r5]
10002496: 462e         	mov	r6, r5
10002498: 428c         	cmp	r4, r1
1000249a: dde4         	ble	0x10002466 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1da> @ imm = #-0x38
1000249c: e009         	b	0x100024b2 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x226> @ imm = #0x12
1000249e: 1c40         	adds	r0, r0, #0x1
100024a0: 2402         	movs	r4, #0x2
100024a2: 5734         	ldrsb	r4, [r6, r4]
100024a4: 428c         	cmp	r4, r1
100024a6: ddf5         	ble	0x10002494 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x208> @ imm = #-0x16
100024a8: 1c40         	adds	r0, r0, #0x1
100024aa: 5774         	ldrsb	r4, [r6, r5]
100024ac: 462e         	mov	r6, r5
100024ae: 428c         	cmp	r4, r1
100024b0: ddd9         	ble	0x10002466 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1da> @ imm = #-0x4e
100024b2: 1c40         	adds	r0, r0, #0x1
100024b4: e7d7         	b	0x10002466 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1da> @ imm = #-0x52
100024b6: 0870         	lsrs	r0, r6, #0x1
100024b8: 1c71         	adds	r1, r6, #0x1
100024ba: 084e         	lsrs	r6, r1, #0x1
100024bc: 9607         	str	r6, [sp, #0x1c]
100024be: 1c44         	adds	r4, r0, #0x1
100024c0: 6918         	ldr	r0, [r3, #0x10]
100024c2: 9008         	str	r0, [sp, #0x20]
100024c4: 695d         	ldr	r5, [r3, #0x14]
100024c6: 699e         	ldr	r6, [r3, #0x18]
100024c8: 1e64         	subs	r4, r4, #0x1
100024ca: d006         	beq	0x100024da <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x24e> @ imm = #0xc
100024cc: 6932         	ldr	r2, [r6, #0x10]
100024ce: 4628         	mov	r0, r5
100024d0: 9908         	ldr	r1, [sp, #0x20]
100024d2: 4790         	blx	r2
100024d4: 2800         	cmp	r0, #0x0
100024d6: d0f7         	beq	0x100024c8 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x23c> @ imm = #-0x12
100024d8: e01b         	b	0x10002512 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x286> @ imm = #0x36
100024da: 68f3         	ldr	r3, [r6, #0xc]
100024dc: 4628         	mov	r0, r5
100024de: 9905         	ldr	r1, [sp, #0x14]
100024e0: 9a01         	ldr	r2, [sp, #0x4]
100024e2: 4798         	blx	r3
100024e4: 2800         	cmp	r0, #0x0
100024e6: d114         	bne	0x10002512 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x286> @ imm = #0x28
100024e8: 2400         	movs	r4, #0x0
100024ea: 9807         	ldr	r0, [sp, #0x1c]
100024ec: 42a0         	cmp	r0, r4
100024ee: d009         	beq	0x10002504 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x278> @ imm = #0x12
100024f0: 6932         	ldr	r2, [r6, #0x10]
100024f2: 4628         	mov	r0, r5
100024f4: 9908         	ldr	r1, [sp, #0x20]
100024f6: 4790         	blx	r2
100024f8: 1c64         	adds	r4, r4, #0x1
100024fa: 2800         	cmp	r0, #0x0
100024fc: d0f5         	beq	0x100024ea <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x25e> @ imm = #-0x16
100024fe: 1e60         	subs	r0, r4, #0x1
10002500: 9907         	ldr	r1, [sp, #0x1c]
10002502: e001         	b	0x10002508 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x27c> @ imm = #0x2
10002504: 9907         	ldr	r1, [sp, #0x1c]
10002506: 4608         	mov	r0, r1
10002508: 4288         	cmp	r0, r1
1000250a: d302         	blo	0x10002512 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x286> @ imm = #0x4
1000250c: 2000         	movs	r0, #0x0
1000250e: b009         	add	sp, #0x24
10002510: bdf0         	pop	{r4, r5, r6, r7, pc}
10002512: 2001         	movs	r0, #0x1
10002514: b009         	add	sp, #0x24
10002516: bdf0         	pop	{r4, r5, r6, r7, pc}
10002518: 9d01         	ldr	r5, [sp, #0x4]
1000251a: 9c05         	ldr	r4, [sp, #0x14]
1000251c: 9b06         	ldr	r3, [sp, #0x18]
1000251e: 9804         	ldr	r0, [sp, #0x10]
10002520: 2800         	cmp	r0, #0x0
10002522: d093         	beq	0x1000244c <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x1c0> @ imm = #-0xda
10002524: e74b         	b	0x100023be <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x132> @ imm = #-0x16a

10002526 <<core::fmt::Formatter as core::fmt::Write>::write_str::h422771b59ce6586b>:
10002526: b5d0         	push	{r4, r6, r7, lr}
10002528: af02         	add	r7, sp, #0x8
1000252a: 6943         	ldr	r3, [r0, #0x14]
1000252c: 6980         	ldr	r0, [r0, #0x18]
1000252e: 68c4         	ldr	r4, [r0, #0xc]
10002530: 4618         	mov	r0, r3
10002532: 47a0         	blx	r4
10002534: bdd0         	pop	{r4, r6, r7, pc}

10002536 <<core::fmt::Formatter as core::fmt::Write>::write_fmt::h4b005a6d1e2e5df4>:
10002536: b580         	push	{r7, lr}
10002538: af00         	add	r7, sp, #0x0
1000253a: 460a         	mov	r2, r1
1000253c: 6943         	ldr	r3, [r0, #0x14]
1000253e: 6981         	ldr	r1, [r0, #0x18]
10002540: 4618         	mov	r0, r3
10002542: f7ff fc95    	bl	0x10001e70 <core::fmt::write::h6f57486e7a0dda63> @ imm = #-0x6d6
10002546: bd80         	pop	{r7, pc}

10002548 <<str as core::fmt::Display>::fmt::h7d7adb2d9533cabe>:
10002548: b580         	push	{r7, lr}
1000254a: af00         	add	r7, sp, #0x0
1000254c: 460b         	mov	r3, r1
1000254e: 4601         	mov	r1, r0
10002550: 4610         	mov	r0, r2
10002552: 461a         	mov	r2, r3
10002554: f7ff fe9a    	bl	0x1000228c <core::fmt::Formatter::pad::hf5cda8bdf873db52> @ imm = #-0x2cc
10002558: bd80         	pop	{r7, pc}
1000255a: d4d4         	bmi	0x10002506 <core::fmt::Formatter::pad::hf5cda8bdf873db52+0x27a> @ imm = #-0x58

1000255c <core::str::count::do_count_chars::h419a4d2620ecb10e>:
1000255c: b5f0         	push	{r4, r5, r6, r7, lr}
1000255e: af03         	add	r7, sp, #0xc
10002560: b088         	sub	sp, #0x20
10002562: 4602         	mov	r2, r0
10002564: 1cc3         	adds	r3, r0, #0x3
10002566: 2003         	movs	r0, #0x3
10002568: 4383         	bics	r3, r0
1000256a: 9306         	str	r3, [sp, #0x18]
1000256c: 1a9c         	subs	r4, r3, r2
1000256e: 42a1         	cmp	r1, r4
10002570: 9007         	str	r0, [sp, #0x1c]
10002572: d200         	bhs	0x10002576 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x1a> @ imm = #0x0
10002574: e16a         	b	0x1000284c <core::str::count::do_count_chars::h419a4d2620ecb10e+0x2f0> @ imm = #0x2d4
10002576: 1b0b         	subs	r3, r1, r4
10002578: 0898         	lsrs	r0, r3, #0x2
1000257a: 9000         	str	r0, [sp]
1000257c: d100         	bne	0x10002580 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x24> @ imm = #0x0
1000257e: e165         	b	0x1000284c <core::str::count::do_count_chars::h419a4d2620ecb10e+0x2f0> @ imm = #0x2ca
10002580: 9303         	str	r3, [sp, #0xc]
10002582: 4618         	mov	r0, r3
10002584: 9907         	ldr	r1, [sp, #0x1c]
10002586: 4008         	ands	r0, r1
10002588: 9004         	str	r0, [sp, #0x10]
1000258a: 2300         	movs	r3, #0x0
1000258c: 9806         	ldr	r0, [sp, #0x18]
1000258e: 4290         	cmp	r0, r2
10002590: 9305         	str	r3, [sp, #0x14]
10002592: d01e         	beq	0x100025d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x76> @ imm = #0x3c
10002594: 43d1         	mvns	r1, r2
10002596: 1841         	adds	r1, r0, r1
10002598: 2300         	movs	r3, #0x0
1000259a: 2903         	cmp	r1, #0x3
1000259c: d300         	blo	0x100025a0 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x44> @ imm = #0x0
1000259e: e1d9         	b	0x10002954 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3f8> @ imm = #0x3b2
100025a0: 4619         	mov	r1, r3
100025a2: 9806         	ldr	r0, [sp, #0x18]
100025a4: 4290         	cmp	r0, r2
100025a6: d014         	beq	0x100025d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x76> @ imm = #0x28
100025a8: 5655         	ldrsb	r5, [r2, r1]
100025aa: 2040         	movs	r0, #0x40
100025ac: 43c0         	mvns	r0, r0
100025ae: 4285         	cmp	r5, r0
100025b0: dd00         	ble	0x100025b4 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x58> @ imm = #0x0
100025b2: 1c5b         	adds	r3, r3, #0x1
100025b4: 2c01         	cmp	r4, #0x1
100025b6: d00c         	beq	0x100025d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x76> @ imm = #0x18
100025b8: 1889         	adds	r1, r1, r2
100025ba: 2501         	movs	r5, #0x1
100025bc: 574d         	ldrsb	r5, [r1, r5]
100025be: 4285         	cmp	r5, r0
100025c0: dd00         	ble	0x100025c4 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x68> @ imm = #0x0
100025c2: 1c5b         	adds	r3, r3, #0x1
100025c4: 2c02         	cmp	r4, #0x2
100025c6: d004         	beq	0x100025d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x76> @ imm = #0x8
100025c8: 2502         	movs	r5, #0x2
100025ca: 5749         	ldrsb	r1, [r1, r5]
100025cc: 4281         	cmp	r1, r0
100025ce: dd00         	ble	0x100025d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x76> @ imm = #0x0
100025d0: 1c5b         	adds	r3, r3, #0x1
100025d2: 1912         	adds	r2, r2, r4
100025d4: 9804         	ldr	r0, [sp, #0x10]
100025d6: 2800         	cmp	r0, #0x0
100025d8: 9907         	ldr	r1, [sp, #0x1c]
100025da: d021         	beq	0x10002620 <core::str::count::do_count_chars::h419a4d2620ecb10e+0xc4> @ imm = #0x42
100025dc: 9803         	ldr	r0, [sp, #0xc]
100025de: 4388         	bics	r0, r1
100025e0: 4614         	mov	r4, r2
100025e2: 1810         	adds	r0, r2, r0
100025e4: 2100         	movs	r1, #0x0
100025e6: 9105         	str	r1, [sp, #0x14]
100025e8: 5642         	ldrsb	r2, [r0, r1]
100025ea: 2140         	movs	r1, #0x40
100025ec: 43c9         	mvns	r1, r1
100025ee: 428a         	cmp	r2, r1
100025f0: dd01         	ble	0x100025f6 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x9a> @ imm = #0x2
100025f2: 2201         	movs	r2, #0x1
100025f4: 9205         	str	r2, [sp, #0x14]
100025f6: 9a04         	ldr	r2, [sp, #0x10]
100025f8: 2a01         	cmp	r2, #0x1
100025fa: d010         	beq	0x1000261e <core::str::count::do_count_chars::h419a4d2620ecb10e+0xc2> @ imm = #0x20
100025fc: 2201         	movs	r2, #0x1
100025fe: 5682         	ldrsb	r2, [r0, r2]
10002600: 428a         	cmp	r2, r1
10002602: dd02         	ble	0x1000260a <core::str::count::do_count_chars::h419a4d2620ecb10e+0xae> @ imm = #0x4
10002604: 9a05         	ldr	r2, [sp, #0x14]
10002606: 1c52         	adds	r2, r2, #0x1
10002608: 9205         	str	r2, [sp, #0x14]
1000260a: 9a04         	ldr	r2, [sp, #0x10]
1000260c: 2a02         	cmp	r2, #0x2
1000260e: d006         	beq	0x1000261e <core::str::count::do_count_chars::h419a4d2620ecb10e+0xc2> @ imm = #0xc
10002610: 2202         	movs	r2, #0x2
10002612: 5680         	ldrsb	r0, [r0, r2]
10002614: 4288         	cmp	r0, r1
10002616: dd02         	ble	0x1000261e <core::str::count::do_count_chars::h419a4d2620ecb10e+0xc2> @ imm = #0x4
10002618: 9805         	ldr	r0, [sp, #0x14]
1000261a: 1c40         	adds	r0, r0, #0x1
1000261c: 9005         	str	r0, [sp, #0x14]
1000261e: 4622         	mov	r2, r4
10002620: 9805         	ldr	r0, [sp, #0x14]
10002622: 18c0         	adds	r0, r0, r3
10002624: 9006         	str	r0, [sp, #0x18]
10002626: 48e8         	ldr	r0, [pc, #0x3a0]        @ 0x100029c8 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x46c>
10002628: 9d00         	ldr	r5, [sp]
1000262a: e014         	b	0x10002656 <core::str::count::do_count_chars::h419a4d2620ecb10e+0xfa> @ imm = #0x28
1000262c: 2300         	movs	r3, #0x0
1000262e: 1b2d         	subs	r5, r5, r4
10002630: 1851         	adds	r1, r2, r1
10002632: 9104         	str	r1, [sp, #0x10]
10002634: 0a19         	lsrs	r1, r3, #0x8
10002636: 4616         	mov	r6, r2
10002638: 4ae2         	ldr	r2, [pc, #0x388]        @ 0x100029c4 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x468>
1000263a: 4013         	ands	r3, r2
1000263c: 4011         	ands	r1, r2
1000263e: 18c9         	adds	r1, r1, r3
10002640: 4adf         	ldr	r2, [pc, #0x37c]        @ 0x100029c0 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x464>
10002642: 4351         	muls	r1, r2, r1
10002644: 0c09         	lsrs	r1, r1, #0x10
10002646: 9a06         	ldr	r2, [sp, #0x18]
10002648: 188a         	adds	r2, r1, r2
1000264a: 9206         	str	r2, [sp, #0x18]
1000264c: 9a04         	ldr	r2, [sp, #0x10]
1000264e: 9905         	ldr	r1, [sp, #0x14]
10002650: 2900         	cmp	r1, #0x0
10002652: d000         	beq	0x10002656 <core::str::count::do_count_chars::h419a4d2620ecb10e+0xfa> @ imm = #0x0
10002654: e143         	b	0x100028de <core::str::count::do_count_chars::h419a4d2620ecb10e+0x382> @ imm = #0x286
10002656: 2d00         	cmp	r5, #0x0
10002658: d100         	bne	0x1000265c <core::str::count::do_count_chars::h419a4d2620ecb10e+0x100> @ imm = #0x0
1000265a: e13d         	b	0x100028d8 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x37c> @ imm = #0x27a
1000265c: 2dc0         	cmp	r5, #0xc0
1000265e: 462c         	mov	r4, r5
10002660: d300         	blo	0x10002664 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x108> @ imm = #0x0
10002662: 24c0         	movs	r4, #0xc0
10002664: 4621         	mov	r1, r4
10002666: 9b07         	ldr	r3, [sp, #0x1c]
10002668: 4019         	ands	r1, r3
1000266a: 9105         	str	r1, [sp, #0x14]
1000266c: 00a1         	lsls	r1, r4, #0x2
1000266e: 2c04         	cmp	r4, #0x4
10002670: d3dc         	blo	0x1000262c <core::str::count::do_count_chars::h419a4d2620ecb10e+0xd0> @ imm = #-0x48
10002672: 9102         	str	r1, [sp, #0x8]
10002674: 3910         	subs	r1, #0x10
10002676: 090b         	lsrs	r3, r1, #0x4
10002678: 1c5b         	adds	r3, r3, #0x1
1000267a: 2930         	cmp	r1, #0x30
1000267c: 9203         	str	r2, [sp, #0xc]
1000267e: 9401         	str	r4, [sp, #0x4]
10002680: 9304         	str	r3, [sp, #0x10]
10002682: d202         	bhs	0x1000268a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x12e> @ imm = #0x4
10002684: 2300         	movs	r3, #0x0
10002686: 4616         	mov	r6, r2
10002688: e07a         	b	0x10002780 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x224> @ imm = #0xf4
1000268a: 9500         	str	r5, [sp]
1000268c: 4619         	mov	r1, r3
1000268e: 9b07         	ldr	r3, [sp, #0x1c]
10002690: 4399         	bics	r1, r3
10002692: 2300         	movs	r3, #0x0
10002694: 4616         	mov	r6, r2
10002696: 6872         	ldr	r2, [r6, #0x4]
10002698: 0994         	lsrs	r4, r2, #0x6
1000269a: 43d2         	mvns	r2, r2
1000269c: 09d2         	lsrs	r2, r2, #0x7
1000269e: 4322         	orrs	r2, r4
100026a0: 4002         	ands	r2, r0
100026a2: 6834         	ldr	r4, [r6]
100026a4: 09a5         	lsrs	r5, r4, #0x6
100026a6: 43e4         	mvns	r4, r4
100026a8: 09e4         	lsrs	r4, r4, #0x7
100026aa: 432c         	orrs	r4, r5
100026ac: 4004         	ands	r4, r0
100026ae: 18e3         	adds	r3, r4, r3
100026b0: 18d2         	adds	r2, r2, r3
100026b2: 68b3         	ldr	r3, [r6, #0x8]
100026b4: 099c         	lsrs	r4, r3, #0x6
100026b6: 43db         	mvns	r3, r3
100026b8: 09db         	lsrs	r3, r3, #0x7
100026ba: 4323         	orrs	r3, r4
100026bc: 4003         	ands	r3, r0
100026be: 189a         	adds	r2, r3, r2
100026c0: 68f3         	ldr	r3, [r6, #0xc]
100026c2: 099c         	lsrs	r4, r3, #0x6
100026c4: 43db         	mvns	r3, r3
100026c6: 09db         	lsrs	r3, r3, #0x7
100026c8: 4323         	orrs	r3, r4
100026ca: 4003         	ands	r3, r0
100026cc: 189a         	adds	r2, r3, r2
100026ce: 6933         	ldr	r3, [r6, #0x10]
100026d0: 099c         	lsrs	r4, r3, #0x6
100026d2: 43db         	mvns	r3, r3
100026d4: 09db         	lsrs	r3, r3, #0x7
100026d6: 4323         	orrs	r3, r4
100026d8: 4003         	ands	r3, r0
100026da: 189a         	adds	r2, r3, r2
100026dc: 6973         	ldr	r3, [r6, #0x14]
100026de: 099c         	lsrs	r4, r3, #0x6
100026e0: 43db         	mvns	r3, r3
100026e2: 09db         	lsrs	r3, r3, #0x7
100026e4: 4323         	orrs	r3, r4
100026e6: 4003         	ands	r3, r0
100026e8: 189a         	adds	r2, r3, r2
100026ea: 69b3         	ldr	r3, [r6, #0x18]
100026ec: 099c         	lsrs	r4, r3, #0x6
100026ee: 43db         	mvns	r3, r3
100026f0: 09db         	lsrs	r3, r3, #0x7
100026f2: 4323         	orrs	r3, r4
100026f4: 4003         	ands	r3, r0
100026f6: 189a         	adds	r2, r3, r2
100026f8: 69f3         	ldr	r3, [r6, #0x1c]
100026fa: 099c         	lsrs	r4, r3, #0x6
100026fc: 43db         	mvns	r3, r3
100026fe: 09db         	lsrs	r3, r3, #0x7
10002700: 4323         	orrs	r3, r4
10002702: 4003         	ands	r3, r0
10002704: 189a         	adds	r2, r3, r2
10002706: 6a33         	ldr	r3, [r6, #0x20]
10002708: 099c         	lsrs	r4, r3, #0x6
1000270a: 43db         	mvns	r3, r3
1000270c: 09db         	lsrs	r3, r3, #0x7
1000270e: 4323         	orrs	r3, r4
10002710: 4003         	ands	r3, r0
10002712: 189a         	adds	r2, r3, r2
10002714: 6a73         	ldr	r3, [r6, #0x24]
10002716: 099c         	lsrs	r4, r3, #0x6
10002718: 43db         	mvns	r3, r3
1000271a: 09db         	lsrs	r3, r3, #0x7
1000271c: 4323         	orrs	r3, r4
1000271e: 4003         	ands	r3, r0
10002720: 189a         	adds	r2, r3, r2
10002722: 6ab3         	ldr	r3, [r6, #0x28]
10002724: 099c         	lsrs	r4, r3, #0x6
10002726: 43db         	mvns	r3, r3
10002728: 09db         	lsrs	r3, r3, #0x7
1000272a: 4323         	orrs	r3, r4
1000272c: 4003         	ands	r3, r0
1000272e: 189a         	adds	r2, r3, r2
10002730: 6af3         	ldr	r3, [r6, #0x2c]
10002732: 099c         	lsrs	r4, r3, #0x6
10002734: 43db         	mvns	r3, r3
10002736: 09db         	lsrs	r3, r3, #0x7
10002738: 4323         	orrs	r3, r4
1000273a: 4003         	ands	r3, r0
1000273c: 189a         	adds	r2, r3, r2
1000273e: 6b33         	ldr	r3, [r6, #0x30]
10002740: 099c         	lsrs	r4, r3, #0x6
10002742: 43db         	mvns	r3, r3
10002744: 09db         	lsrs	r3, r3, #0x7
10002746: 4323         	orrs	r3, r4
10002748: 4003         	ands	r3, r0
1000274a: 189a         	adds	r2, r3, r2
1000274c: 6b73         	ldr	r3, [r6, #0x34]
1000274e: 099c         	lsrs	r4, r3, #0x6
10002750: 43db         	mvns	r3, r3
10002752: 09db         	lsrs	r3, r3, #0x7
10002754: 4323         	orrs	r3, r4
10002756: 4003         	ands	r3, r0
10002758: 189a         	adds	r2, r3, r2
1000275a: 6bb3         	ldr	r3, [r6, #0x38]
1000275c: 099c         	lsrs	r4, r3, #0x6
1000275e: 43db         	mvns	r3, r3
10002760: 09db         	lsrs	r3, r3, #0x7
10002762: 4323         	orrs	r3, r4
10002764: 4003         	ands	r3, r0
10002766: 189a         	adds	r2, r3, r2
10002768: 6bf3         	ldr	r3, [r6, #0x3c]
1000276a: 099c         	lsrs	r4, r3, #0x6
1000276c: 43db         	mvns	r3, r3
1000276e: 09db         	lsrs	r3, r3, #0x7
10002770: 4323         	orrs	r3, r4
10002772: 4003         	ands	r3, r0
10002774: 189b         	adds	r3, r3, r2
10002776: 3640         	adds	r6, #0x40
10002778: 1f09         	subs	r1, r1, #0x4
1000277a: d18c         	bne	0x10002696 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x13a> @ imm = #-0xe8
1000277c: 9d00         	ldr	r5, [sp]
1000277e: 9c01         	ldr	r4, [sp, #0x4]
10002780: 9904         	ldr	r1, [sp, #0x10]
10002782: 9a07         	ldr	r2, [sp, #0x1c]
10002784: 4011         	ands	r1, r2
10002786: 9104         	str	r1, [sp, #0x10]
10002788: 9902         	ldr	r1, [sp, #0x8]
1000278a: 9a03         	ldr	r2, [sp, #0xc]
1000278c: d100         	bne	0x10002790 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x234> @ imm = #0x0
1000278e: e74e         	b	0x1000262e <core::str::count::do_count_chars::h419a4d2620ecb10e+0xd2> @ imm = #-0x164
10002790: 6871         	ldr	r1, [r6, #0x4]
10002792: 098a         	lsrs	r2, r1, #0x6
10002794: 43c9         	mvns	r1, r1
10002796: 09c9         	lsrs	r1, r1, #0x7
10002798: 4311         	orrs	r1, r2
1000279a: 4001         	ands	r1, r0
1000279c: 6832         	ldr	r2, [r6]
1000279e: 0994         	lsrs	r4, r2, #0x6
100027a0: 43d2         	mvns	r2, r2
100027a2: 09d2         	lsrs	r2, r2, #0x7
100027a4: 4322         	orrs	r2, r4
100027a6: 4002         	ands	r2, r0
100027a8: 18d2         	adds	r2, r2, r3
100027aa: 1889         	adds	r1, r1, r2
100027ac: 68b2         	ldr	r2, [r6, #0x8]
100027ae: 0993         	lsrs	r3, r2, #0x6
100027b0: 43d2         	mvns	r2, r2
100027b2: 09d2         	lsrs	r2, r2, #0x7
100027b4: 431a         	orrs	r2, r3
100027b6: 4002         	ands	r2, r0
100027b8: 1851         	adds	r1, r2, r1
100027ba: 68f2         	ldr	r2, [r6, #0xc]
100027bc: 0993         	lsrs	r3, r2, #0x6
100027be: 43d2         	mvns	r2, r2
100027c0: 09d2         	lsrs	r2, r2, #0x7
100027c2: 431a         	orrs	r2, r3
100027c4: 4002         	ands	r2, r0
100027c6: 1853         	adds	r3, r2, r1
100027c8: 9904         	ldr	r1, [sp, #0x10]
100027ca: 2901         	cmp	r1, #0x1
100027cc: d03a         	beq	0x10002844 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x2e8> @ imm = #0x74
100027ce: 6971         	ldr	r1, [r6, #0x14]
100027d0: 098a         	lsrs	r2, r1, #0x6
100027d2: 43c9         	mvns	r1, r1
100027d4: 09c9         	lsrs	r1, r1, #0x7
100027d6: 4311         	orrs	r1, r2
100027d8: 4001         	ands	r1, r0
100027da: 6932         	ldr	r2, [r6, #0x10]
100027dc: 0994         	lsrs	r4, r2, #0x6
100027de: 43d2         	mvns	r2, r2
100027e0: 09d2         	lsrs	r2, r2, #0x7
100027e2: 4322         	orrs	r2, r4
100027e4: 4002         	ands	r2, r0
100027e6: 18d2         	adds	r2, r2, r3
100027e8: 1889         	adds	r1, r1, r2
100027ea: 69b2         	ldr	r2, [r6, #0x18]
100027ec: 0993         	lsrs	r3, r2, #0x6
100027ee: 43d2         	mvns	r2, r2
100027f0: 09d2         	lsrs	r2, r2, #0x7
100027f2: 431a         	orrs	r2, r3
100027f4: 4002         	ands	r2, r0
100027f6: 1851         	adds	r1, r2, r1
100027f8: 69f2         	ldr	r2, [r6, #0x1c]
100027fa: 0993         	lsrs	r3, r2, #0x6
100027fc: 43d2         	mvns	r2, r2
100027fe: 09d2         	lsrs	r2, r2, #0x7
10002800: 431a         	orrs	r2, r3
10002802: 4002         	ands	r2, r0
10002804: 1853         	adds	r3, r2, r1
10002806: 9904         	ldr	r1, [sp, #0x10]
10002808: 2902         	cmp	r1, #0x2
1000280a: d01b         	beq	0x10002844 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x2e8> @ imm = #0x36
1000280c: 6a71         	ldr	r1, [r6, #0x24]
1000280e: 098a         	lsrs	r2, r1, #0x6
10002810: 43c9         	mvns	r1, r1
10002812: 09c9         	lsrs	r1, r1, #0x7
10002814: 4311         	orrs	r1, r2
10002816: 4001         	ands	r1, r0
10002818: 6a32         	ldr	r2, [r6, #0x20]
1000281a: 0994         	lsrs	r4, r2, #0x6
1000281c: 43d2         	mvns	r2, r2
1000281e: 09d2         	lsrs	r2, r2, #0x7
10002820: 4322         	orrs	r2, r4
10002822: 4002         	ands	r2, r0
10002824: 18d2         	adds	r2, r2, r3
10002826: 1889         	adds	r1, r1, r2
10002828: 6ab2         	ldr	r2, [r6, #0x28]
1000282a: 0993         	lsrs	r3, r2, #0x6
1000282c: 43d2         	mvns	r2, r2
1000282e: 09d2         	lsrs	r2, r2, #0x7
10002830: 431a         	orrs	r2, r3
10002832: 4002         	ands	r2, r0
10002834: 1851         	adds	r1, r2, r1
10002836: 6af2         	ldr	r2, [r6, #0x2c]
10002838: 0993         	lsrs	r3, r2, #0x6
1000283a: 43d2         	mvns	r2, r2
1000283c: 09d2         	lsrs	r2, r2, #0x7
1000283e: 431a         	orrs	r2, r3
10002840: 4002         	ands	r2, r0
10002842: 1853         	adds	r3, r2, r1
10002844: 9a03         	ldr	r2, [sp, #0xc]
10002846: 9c01         	ldr	r4, [sp, #0x4]
10002848: 9902         	ldr	r1, [sp, #0x8]
1000284a: e6f0         	b	0x1000262e <core::str::count::do_count_chars::h419a4d2620ecb10e+0xd2> @ imm = #-0x220
1000284c: 2900         	cmp	r1, #0x0
1000284e: d019         	beq	0x10002884 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x328> @ imm = #0x32
10002850: 460b         	mov	r3, r1
10002852: 9807         	ldr	r0, [sp, #0x1c]
10002854: 4003         	ands	r3, r0
10002856: 9305         	str	r3, [sp, #0x14]
10002858: 2904         	cmp	r1, #0x4
1000285a: 9206         	str	r2, [sp, #0x18]
1000285c: d215         	bhs	0x1000288a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x32e> @ imm = #0x2a
1000285e: 2000         	movs	r0, #0x0
10002860: 4604         	mov	r4, r0
10002862: 9905         	ldr	r1, [sp, #0x14]
10002864: 2900         	cmp	r1, #0x0
10002866: d00b         	beq	0x10002880 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x324> @ imm = #0x16
10002868: 4611         	mov	r1, r2
1000286a: 4602         	mov	r2, r0
1000286c: 5708         	ldrsb	r0, [r1, r4]
1000286e: 2140         	movs	r1, #0x40
10002870: 43c9         	mvns	r1, r1
10002872: 4288         	cmp	r0, r1
10002874: dc5d         	bgt	0x10002932 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3d6> @ imm = #0xba
10002876: 4610         	mov	r0, r2
10002878: 9a05         	ldr	r2, [sp, #0x14]
1000287a: 2a01         	cmp	r2, #0x1
1000287c: 9a06         	ldr	r2, [sp, #0x18]
1000287e: d15e         	bne	0x1000293e <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3e2> @ imm = #0xbc
10002880: b008         	add	sp, #0x20
10002882: bdf0         	pop	{r4, r5, r6, r7, pc}
10002884: 2000         	movs	r0, #0x0
10002886: b008         	add	sp, #0x20
10002888: bdf0         	pop	{r4, r5, r6, r7, pc}
1000288a: 4381         	bics	r1, r0
1000288c: 2000         	movs	r0, #0x0
1000288e: 4604         	mov	r4, r0
10002890: e004         	b	0x1000289c <core::str::count::do_count_chars::h419a4d2620ecb10e+0x340> @ imm = #0x8
10002892: 4610         	mov	r0, r2
10002894: 9a06         	ldr	r2, [sp, #0x18]
10002896: 1d24         	adds	r4, r4, #0x4
10002898: 42a1         	cmp	r1, r4
1000289a: d0e2         	beq	0x10002862 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x306> @ imm = #-0x3c
1000289c: 5716         	ldrsb	r6, [r2, r4]
1000289e: 2540         	movs	r5, #0x40
100028a0: 43ed         	mvns	r5, r5
100028a2: 42ae         	cmp	r6, r5
100028a4: dd00         	ble	0x100028a8 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x34c> @ imm = #0x0
100028a6: 1c40         	adds	r0, r0, #0x1
100028a8: 1916         	adds	r6, r2, r4
100028aa: 2301         	movs	r3, #0x1
100028ac: 56f3         	ldrsb	r3, [r6, r3]
100028ae: 42ab         	cmp	r3, r5
100028b0: dd00         	ble	0x100028b4 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x358> @ imm = #0x0
100028b2: 1c40         	adds	r0, r0, #0x1
100028b4: 2302         	movs	r3, #0x2
100028b6: 56f3         	ldrsb	r3, [r6, r3]
100028b8: 42ab         	cmp	r3, r5
100028ba: dc05         	bgt	0x100028c8 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x36c> @ imm = #0xa
100028bc: 4602         	mov	r2, r0
100028be: 9807         	ldr	r0, [sp, #0x1c]
100028c0: 5633         	ldrsb	r3, [r6, r0]
100028c2: 42ab         	cmp	r3, r5
100028c4: dde5         	ble	0x10002892 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x336> @ imm = #-0x36
100028c6: e004         	b	0x100028d2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x376> @ imm = #0x8
100028c8: 1c42         	adds	r2, r0, #0x1
100028ca: 9807         	ldr	r0, [sp, #0x1c]
100028cc: 5633         	ldrsb	r3, [r6, r0]
100028ce: 42ab         	cmp	r3, r5
100028d0: dddf         	ble	0x10002892 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x336> @ imm = #-0x42
100028d2: 4610         	mov	r0, r2
100028d4: 1c50         	adds	r0, r2, #0x1
100028d6: e7dd         	b	0x10002894 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x338> @ imm = #-0x46
100028d8: 9806         	ldr	r0, [sp, #0x18]
100028da: b008         	add	sp, #0x20
100028dc: bdf0         	pop	{r4, r5, r6, r7, pc}
100028de: 21fc         	movs	r1, #0xfc
100028e0: 400c         	ands	r4, r1
100028e2: 00a2         	lsls	r2, r4, #0x2
100028e4: 58b1         	ldr	r1, [r6, r2]
100028e6: 098b         	lsrs	r3, r1, #0x6
100028e8: 43c9         	mvns	r1, r1
100028ea: 09c9         	lsrs	r1, r1, #0x7
100028ec: 4319         	orrs	r1, r3
100028ee: 9b05         	ldr	r3, [sp, #0x14]
100028f0: 4001         	ands	r1, r0
100028f2: 2b01         	cmp	r3, #0x1
100028f4: d011         	beq	0x1000291a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3be> @ imm = #0x22
100028f6: 18b2         	adds	r2, r6, r2
100028f8: 461d         	mov	r5, r3
100028fa: 6853         	ldr	r3, [r2, #0x4]
100028fc: 099c         	lsrs	r4, r3, #0x6
100028fe: 43db         	mvns	r3, r3
10002900: 09db         	lsrs	r3, r3, #0x7
10002902: 4323         	orrs	r3, r4
10002904: 4003         	ands	r3, r0
10002906: 1859         	adds	r1, r3, r1
10002908: 2d02         	cmp	r5, #0x2
1000290a: d006         	beq	0x1000291a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3be> @ imm = #0xc
1000290c: 6892         	ldr	r2, [r2, #0x8]
1000290e: 0993         	lsrs	r3, r2, #0x6
10002910: 43d2         	mvns	r2, r2
10002912: 09d2         	lsrs	r2, r2, #0x7
10002914: 431a         	orrs	r2, r3
10002916: 4002         	ands	r2, r0
10002918: 1851         	adds	r1, r2, r1
1000291a: 0a08         	lsrs	r0, r1, #0x8
1000291c: 4a29         	ldr	r2, [pc, #0xa4]         @ 0x100029c4 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x468>
1000291e: 4011         	ands	r1, r2
10002920: 4010         	ands	r0, r2
10002922: 1840         	adds	r0, r0, r1
10002924: 4926         	ldr	r1, [pc, #0x98]         @ 0x100029c0 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x464>
10002926: 4341         	muls	r1, r0, r1
10002928: 0c08         	lsrs	r0, r1, #0x10
1000292a: 9906         	ldr	r1, [sp, #0x18]
1000292c: 1840         	adds	r0, r0, r1
1000292e: b008         	add	sp, #0x20
10002930: bdf0         	pop	{r4, r5, r6, r7, pc}
10002932: 4610         	mov	r0, r2
10002934: 1c50         	adds	r0, r2, #0x1
10002936: 9a05         	ldr	r2, [sp, #0x14]
10002938: 2a01         	cmp	r2, #0x1
1000293a: 9a06         	ldr	r2, [sp, #0x18]
1000293c: d0a0         	beq	0x10002880 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x324> @ imm = #-0xc0
1000293e: 4603         	mov	r3, r0
10002940: 18a2         	adds	r2, r4, r2
10002942: 2001         	movs	r0, #0x1
10002944: 5610         	ldrsb	r0, [r2, r0]
10002946: 4288         	cmp	r0, r1
10002948: dc29         	bgt	0x1000299e <core::str::count::do_count_chars::h419a4d2620ecb10e+0x442> @ imm = #0x52
1000294a: 4618         	mov	r0, r3
1000294c: 9b05         	ldr	r3, [sp, #0x14]
1000294e: 2b02         	cmp	r3, #0x2
10002950: d096         	beq	0x10002880 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x324> @ imm = #-0xd4
10002952: e02a         	b	0x100029aa <core::str::count::do_count_chars::h419a4d2620ecb10e+0x44e> @ imm = #0x54
10002954: 4619         	mov	r1, r3
10002956: e002         	b	0x1000295e <core::str::count::do_count_chars::h419a4d2620ecb10e+0x402> @ imm = #0x4
10002958: 1d09         	adds	r1, r1, #0x4
1000295a: d100         	bne	0x1000295e <core::str::count::do_count_chars::h419a4d2620ecb10e+0x402> @ imm = #0x0
1000295c: e621         	b	0x100025a2 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x46> @ imm = #-0x3be
1000295e: 5656         	ldrsb	r6, [r2, r1]
10002960: 2540         	movs	r5, #0x40
10002962: 43ed         	mvns	r5, r5
10002964: 42ae         	cmp	r6, r5
10002966: dd00         	ble	0x1000296a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x40e> @ imm = #0x0
10002968: 1c5b         	adds	r3, r3, #0x1
1000296a: 1856         	adds	r6, r2, r1
1000296c: 2001         	movs	r0, #0x1
1000296e: 5630         	ldrsb	r0, [r6, r0]
10002970: 42a8         	cmp	r0, r5
10002972: dc08         	bgt	0x10002986 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x42a> @ imm = #0x10
10002974: 2002         	movs	r0, #0x2
10002976: 5630         	ldrsb	r0, [r6, r0]
10002978: 42a8         	cmp	r0, r5
1000297a: dc09         	bgt	0x10002990 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x434> @ imm = #0x12
1000297c: 9807         	ldr	r0, [sp, #0x1c]
1000297e: 5630         	ldrsb	r0, [r6, r0]
10002980: 42a8         	cmp	r0, r5
10002982: dde9         	ble	0x10002958 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3fc> @ imm = #-0x2e
10002984: e009         	b	0x1000299a <core::str::count::do_count_chars::h419a4d2620ecb10e+0x43e> @ imm = #0x12
10002986: 1c5b         	adds	r3, r3, #0x1
10002988: 2002         	movs	r0, #0x2
1000298a: 5630         	ldrsb	r0, [r6, r0]
1000298c: 42a8         	cmp	r0, r5
1000298e: ddf5         	ble	0x1000297c <core::str::count::do_count_chars::h419a4d2620ecb10e+0x420> @ imm = #-0x16
10002990: 1c5b         	adds	r3, r3, #0x1
10002992: 9807         	ldr	r0, [sp, #0x1c]
10002994: 5630         	ldrsb	r0, [r6, r0]
10002996: 42a8         	cmp	r0, r5
10002998: ddde         	ble	0x10002958 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3fc> @ imm = #-0x44
1000299a: 1c5b         	adds	r3, r3, #0x1
1000299c: e7dc         	b	0x10002958 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x3fc> @ imm = #-0x48
1000299e: 4618         	mov	r0, r3
100029a0: 1c58         	adds	r0, r3, #0x1
100029a2: 9b05         	ldr	r3, [sp, #0x14]
100029a4: 2b02         	cmp	r3, #0x2
100029a6: d100         	bne	0x100029aa <core::str::count::do_count_chars::h419a4d2620ecb10e+0x44e> @ imm = #0x0
100029a8: e76a         	b	0x10002880 <core::str::count::do_count_chars::h419a4d2620ecb10e+0x324> @ imm = #-0x12c
100029aa: 4603         	mov	r3, r0
100029ac: 2002         	movs	r0, #0x2
100029ae: 5610         	ldrsb	r0, [r2, r0]
100029b0: 4288         	cmp	r0, r1
100029b2: dc02         	bgt	0x100029ba <core::str::count::do_count_chars::h419a4d2620ecb10e+0x45e> @ imm = #0x4
100029b4: 4618         	mov	r0, r3
100029b6: b008         	add	sp, #0x20
100029b8: bdf0         	pop	{r4, r5, r6, r7, pc}
100029ba: 1c58         	adds	r0, r3, #0x1
100029bc: b008         	add	sp, #0x20
100029be: bdf0         	pop	{r4, r5, r6, r7, pc}

100029c0 <$d.471>:
100029c0: 01 00 01 00  	.word	0x00010001
100029c4: ff 00 ff 00  	.word	0x00ff00ff
100029c8: 01 01 01 01  	.word	0x01010101

100029cc <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217>:
100029cc: b5f0         	push	{r4, r5, r6, r7, lr}
100029ce: af03         	add	r7, sp, #0xc
100029d0: b08d         	sub	sp, #0x34
100029d2: 460c         	mov	r4, r1
100029d4: 7802         	ldrb	r2, [r0]
100029d6: 2a64         	cmp	r2, #0x64
100029d8: d312         	blo	0x10002a00 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x34> @ imm = #0x24
100029da: 2029         	movs	r0, #0x29
100029dc: 4350         	muls	r0, r2, r0
100029de: 0b01         	lsrs	r1, r0, #0xc
100029e0: 2064         	movs	r0, #0x64
100029e2: 4348         	muls	r0, r1, r0
100029e4: 1a10         	subs	r0, r2, r0
100029e6: b2c0         	uxtb	r0, r0
100029e8: 0040         	lsls	r0, r0, #0x1
100029ea: 4a16         	ldr	r2, [pc, #0x58]         @ 0x10002a44 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x78>
100029ec: 5c13         	ldrb	r3, [r2, r0]
100029ee: 2525         	movs	r5, #0x25
100029f0: ae03         	add	r6, sp, #0xc
100029f2: 5573         	strb	r3, [r6, r5]
100029f4: 1810         	adds	r0, r2, r0
100029f6: 7840         	ldrb	r0, [r0, #0x1]
100029f8: 3625         	adds	r6, #0x25
100029fa: 7070         	strb	r0, [r6, #0x1]
100029fc: 2024         	movs	r0, #0x24
100029fe: e003         	b	0x10002a08 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x3c> @ imm = #0x6
10002a00: 2a0a         	cmp	r2, #0xa
10002a02: d206         	bhs	0x10002a12 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x46> @ imm = #0xc
10002a04: 2026         	movs	r0, #0x26
10002a06: 4611         	mov	r1, r2
10002a08: 2230         	movs	r2, #0x30
10002a0a: 430a         	orrs	r2, r1
10002a0c: a903         	add	r1, sp, #0xc
10002a0e: 540a         	strb	r2, [r1, r0]
10002a10: e009         	b	0x10002a26 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x5a> @ imm = #0x12
10002a12: 0051         	lsls	r1, r2, #0x1
10002a14: 4a0b         	ldr	r2, [pc, #0x2c]         @ 0x10002a44 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x78>
10002a16: 5c53         	ldrb	r3, [r2, r1]
10002a18: 2025         	movs	r0, #0x25
10002a1a: ad03         	add	r5, sp, #0xc
10002a1c: 542b         	strb	r3, [r5, r0]
10002a1e: 1851         	adds	r1, r2, r1
10002a20: 7849         	ldrb	r1, [r1, #0x1]
10002a22: 3525         	adds	r5, #0x25
10002a24: 7069         	strb	r1, [r5, #0x1]
10002a26: 2127         	movs	r1, #0x27
10002a28: 1a09         	subs	r1, r1, r0
10002a2a: 9101         	str	r1, [sp, #0x4]
10002a2c: a903         	add	r1, sp, #0xc
10002a2e: 1808         	adds	r0, r1, r0
10002a30: 9000         	str	r0, [sp]
10002a32: 2101         	movs	r1, #0x1
10002a34: 4a04         	ldr	r2, [pc, #0x10]         @ 0x10002a48 <core::fmt::num::imp::<impl core::fmt::Display for u8>::fmt::hb71450302c228217+0x7c>
10002a36: 2300         	movs	r3, #0x0
10002a38: 4620         	mov	r0, r4
10002a3a: f7ff facb    	bl	0x10001fd4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac> @ imm = #-0xa6a
10002a3e: b00d         	add	sp, #0x34
10002a40: bdf0         	pop	{r4, r5, r6, r7, pc}
10002a42: 46c0         	mov	r8, r8

10002a44 <$d.727>:
10002a44: d0 3a 00 10  	.word	0x10003ad0
10002a48: 88 3a 00 10  	.word	0x10003a88

10002a4c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07>:
10002a4c: b5f0         	push	{r4, r5, r6, r7, lr}
10002a4e: af03         	add	r7, sp, #0xc
10002a50: b08f         	sub	sp, #0x3c
10002a52: 9102         	str	r1, [sp, #0x8]
10002a54: 6802         	ldr	r2, [r0]
10002a56: 4c35         	ldr	r4, [pc, #0xd4]         @ 0x10002b2c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xe0>
10002a58: 2627         	movs	r6, #0x27
10002a5a: 42a2         	cmp	r2, r4
10002a5c: d92e         	bls	0x10002abc <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0x70> @ imm = #0x5c
10002a5e: 4615         	mov	r5, r2
10002a60: 9604         	str	r6, [sp, #0x10]
10002a62: 4628         	mov	r0, r5
10002a64: 4932         	ldr	r1, [pc, #0xc8]         @ 0x10002b30 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xe4>
10002a66: f7fe fbf3    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x181a
10002a6a: 9003         	str	r0, [sp, #0xc]
10002a6c: 1c61         	adds	r1, r4, #0x1
10002a6e: 4341         	muls	r1, r0, r1
10002a70: 1a69         	subs	r1, r5, r1
10002a72: b28a         	uxth	r2, r1
10002a74: 0892         	lsrs	r2, r2, #0x2
10002a76: 482f         	ldr	r0, [pc, #0xbc]         @ 0x10002b34 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xe8>
10002a78: 4342         	muls	r2, r0, r2
10002a7a: 0c52         	lsrs	r2, r2, #0x11
10002a7c: 0053         	lsls	r3, r2, #0x1
10002a7e: 482e         	ldr	r0, [pc, #0xb8]         @ 0x10002b38 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xec>
10002a80: 5cc0         	ldrb	r0, [r0, r3]
10002a82: ac05         	add	r4, sp, #0x14
10002a84: 19a4         	adds	r4, r4, r6
10002a86: 1f26         	subs	r6, r4, #0x4
10002a88: 7030         	strb	r0, [r6]
10002a8a: 482b         	ldr	r0, [pc, #0xac]         @ 0x10002b38 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xec>
10002a8c: 18c0         	adds	r0, r0, r3
10002a8e: 7840         	ldrb	r0, [r0, #0x1]
10002a90: 7070         	strb	r0, [r6, #0x1]
10002a92: 9e04         	ldr	r6, [sp, #0x10]
10002a94: 2064         	movs	r0, #0x64
10002a96: 4350         	muls	r0, r2, r0
10002a98: 1a08         	subs	r0, r1, r0
10002a9a: b280         	uxth	r0, r0
10002a9c: 0040         	lsls	r0, r0, #0x1
10002a9e: 4a26         	ldr	r2, [pc, #0x98]         @ 0x10002b38 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xec>
10002aa0: 5c11         	ldrb	r1, [r2, r0]
10002aa2: 4613         	mov	r3, r2
10002aa4: 1ea2         	subs	r2, r4, #0x2
10002aa6: 4c21         	ldr	r4, [pc, #0x84]         @ 0x10002b2c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xe0>
10002aa8: 7011         	strb	r1, [r2]
10002aaa: 1818         	adds	r0, r3, r0
10002aac: 7840         	ldrb	r0, [r0, #0x1]
10002aae: 7050         	strb	r0, [r2, #0x1]
10002ab0: 9a03         	ldr	r2, [sp, #0xc]
10002ab2: 1f36         	subs	r6, r6, #0x4
10002ab4: 4821         	ldr	r0, [pc, #0x84]         @ 0x10002b3c <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xf0>
10002ab6: 4285         	cmp	r5, r0
10002ab8: 4615         	mov	r5, r2
10002aba: d8d1         	bhi	0x10002a60 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0x14> @ imm = #-0x5e
10002abc: 2a63         	cmp	r2, #0x63
10002abe: d91f         	bls	0x10002b00 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xb4> @ imm = #0x3e
10002ac0: b290         	uxth	r0, r2
10002ac2: 0880         	lsrs	r0, r0, #0x2
10002ac4: 491b         	ldr	r1, [pc, #0x6c]         @ 0x10002b34 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xe8>
10002ac6: 4341         	muls	r1, r0, r1
10002ac8: 0c49         	lsrs	r1, r1, #0x11
10002aca: 2064         	movs	r0, #0x64
10002acc: 4348         	muls	r0, r1, r0
10002ace: 1a10         	subs	r0, r2, r0
10002ad0: b280         	uxth	r0, r0
10002ad2: 0040         	lsls	r0, r0, #0x1
10002ad4: 4a18         	ldr	r2, [pc, #0x60]         @ 0x10002b38 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xec>
10002ad6: 5c13         	ldrb	r3, [r2, r0]
10002ad8: 1eb6         	subs	r6, r6, #0x2
10002ada: ac05         	add	r4, sp, #0x14
10002adc: 55a3         	strb	r3, [r4, r6]
10002ade: 19a3         	adds	r3, r4, r6
10002ae0: 1810         	adds	r0, r2, r0
10002ae2: 7840         	ldrb	r0, [r0, #0x1]
10002ae4: 7058         	strb	r0, [r3, #0x1]
10002ae6: 290a         	cmp	r1, #0xa
10002ae8: d30d         	blo	0x10002b06 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xba> @ imm = #0x1a
10002aea: 0049         	lsls	r1, r1, #0x1
10002aec: 4a12         	ldr	r2, [pc, #0x48]         @ 0x10002b38 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xec>
10002aee: 5c53         	ldrb	r3, [r2, r1]
10002af0: 1eb0         	subs	r0, r6, #0x2
10002af2: ac05         	add	r4, sp, #0x14
10002af4: 5423         	strb	r3, [r4, r0]
10002af6: 1823         	adds	r3, r4, r0
10002af8: 1851         	adds	r1, r2, r1
10002afa: 7849         	ldrb	r1, [r1, #0x1]
10002afc: 7059         	strb	r1, [r3, #0x1]
10002afe: e006         	b	0x10002b0e <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xc2> @ imm = #0xc
10002b00: 4611         	mov	r1, r2
10002b02: 290a         	cmp	r1, #0xa
10002b04: d2f1         	bhs	0x10002aea <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0x9e> @ imm = #-0x1e
10002b06: 1e70         	subs	r0, r6, #0x1
10002b08: 3130         	adds	r1, #0x30
10002b0a: aa05         	add	r2, sp, #0x14
10002b0c: 5411         	strb	r1, [r2, r0]
10002b0e: 2127         	movs	r1, #0x27
10002b10: 1a09         	subs	r1, r1, r0
10002b12: 9101         	str	r1, [sp, #0x4]
10002b14: a905         	add	r1, sp, #0x14
10002b16: 1808         	adds	r0, r1, r0
10002b18: 9000         	str	r0, [sp]
10002b1a: 2101         	movs	r1, #0x1
10002b1c: 4a08         	ldr	r2, [pc, #0x20]         @ 0x10002b40 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h9b41588d046d2e07+0xf4>
10002b1e: 2300         	movs	r3, #0x0
10002b20: 9802         	ldr	r0, [sp, #0x8]
10002b22: f7ff fa57    	bl	0x10001fd4 <core::fmt::Formatter::pad_integral::hc0f64e92f53dc8ac> @ imm = #-0xb52
10002b26: b00f         	add	sp, #0x3c
10002b28: bdf0         	pop	{r4, r5, r6, r7, pc}
10002b2a: 46c0         	mov	r8, r8

10002b2c <$d.735>:
10002b2c: 0f 27 00 00  	.word	0x0000270f
10002b30: 10 27 00 00  	.word	0x00002710
10002b34: 7b 14 00 00  	.word	0x0000147b
10002b38: d0 3a 00 10  	.word	0x10003ad0
10002b3c: ff e0 f5 05  	.word	0x05f5e0ff
10002b40: 88 3a 00 10  	.word	0x10003a88

10002b44 <<&T as core::fmt::Debug>::fmt::h79f2a740dcca4575>:
10002b44: b580         	push	{r7, lr}
10002b46: af00         	add	r7, sp, #0x0
10002b48: 6802         	ldr	r2, [r0]
10002b4a: 6840         	ldr	r0, [r0, #0x4]
10002b4c: 68c3         	ldr	r3, [r0, #0xc]
10002b4e: 4610         	mov	r0, r2
10002b50: 4798         	blx	r3
10002b52: bd80         	pop	{r7, pc}

10002b54 <<&T as core::fmt::Display>::fmt::ha285b7e5fc4ea0c7>:
10002b54: b580         	push	{r7, lr}
10002b56: af00         	add	r7, sp, #0x0
10002b58: 460b         	mov	r3, r1
10002b5a: c806         	ldm	r0!, {r1, r2}
10002b5c: 4618         	mov	r0, r3
10002b5e: f7ff fb95    	bl	0x1000228c <core::fmt::Formatter::pad::hf5cda8bdf873db52> @ imm = #-0x8d6
10002b62: bd80         	pop	{r7, pc}

10002b64 <__aeabi_llsl>:
10002b64: b5d0         	push	{r4, r6, r7, lr}
10002b66: af02         	add	r7, sp, #0x8
10002b68: 0693         	lsls	r3, r2, #0x1a
10002b6a: d40b         	bmi	0x10002b84 <__aeabi_llsl+0x20> @ imm = #0x16
10002b6c: 2a00         	cmp	r2, #0x0
10002b6e: d008         	beq	0x10002b82 <__aeabi_llsl+0x1e> @ imm = #0x10
10002b70: 231f         	movs	r3, #0x1f
10002b72: 4254         	rsbs	r4, r2, #0
10002b74: 401a         	ands	r2, r3
10002b76: 4091         	lsls	r1, r2
10002b78: 401c         	ands	r4, r3
10002b7a: 4603         	mov	r3, r0
10002b7c: 40e3         	lsrs	r3, r4
10002b7e: 4319         	orrs	r1, r3
10002b80: 4090         	lsls	r0, r2
10002b82: bdd0         	pop	{r4, r6, r7, pc}
10002b84: 211f         	movs	r1, #0x1f
10002b86: 400a         	ands	r2, r1
10002b88: 4601         	mov	r1, r0
10002b8a: 4091         	lsls	r1, r2
10002b8c: 2000         	movs	r0, #0x0
10002b8e: bdd0         	pop	{r4, r6, r7, pc}

10002b90 <__aeabi_lmul>:
10002b90: b5f0         	push	{r4, r5, r6, r7, lr}
10002b92: af03         	add	r7, sp, #0xc
10002b94: b084         	sub	sp, #0x10
10002b96: 9303         	str	r3, [sp, #0xc]
10002b98: 4614         	mov	r4, r2
10002b9a: 9102         	str	r1, [sp, #0x8]
10002b9c: 9001         	str	r0, [sp, #0x4]
10002b9e: 0c05         	lsrs	r5, r0, #0x10
10002ba0: b292         	uxth	r2, r2
10002ba2: 9200         	str	r2, [sp]
10002ba4: 4629         	mov	r1, r5
10002ba6: 4351         	muls	r1, r2, r1
10002ba8: b282         	uxth	r2, r0
10002baa: 0c23         	lsrs	r3, r4, #0x10
10002bac: 4616         	mov	r6, r2
10002bae: 435e         	muls	r6, r3, r6
10002bb0: 2000         	movs	r0, #0x0
10002bb2: 1871         	adds	r1, r6, r1
10002bb4: 4140         	adcs	r0, r0
10002bb6: 0c0e         	lsrs	r6, r1, #0x10
10002bb8: 0400         	lsls	r0, r0, #0x10
10002bba: 1986         	adds	r6, r0, r6
10002bbc: 0408         	lsls	r0, r1, #0x10
10002bbe: 435d         	muls	r5, r3, r5
10002bc0: 9900         	ldr	r1, [sp]
10002bc2: 434a         	muls	r2, r1, r2
10002bc4: 1810         	adds	r0, r2, r0
10002bc6: 4175         	adcs	r5, r6
10002bc8: 9a02         	ldr	r2, [sp, #0x8]
10002bca: 4362         	muls	r2, r4, r2
10002bcc: 9903         	ldr	r1, [sp, #0xc]
10002bce: 9b01         	ldr	r3, [sp, #0x4]
10002bd0: 4359         	muls	r1, r3, r1
10002bd2: 1889         	adds	r1, r1, r2
10002bd4: 1869         	adds	r1, r5, r1
10002bd6: b004         	add	sp, #0x10
10002bd8: bdf0         	pop	{r4, r5, r6, r7, pc}

10002bda <__aeabi_uldivmod>:
10002bda: b510         	push	{r4, lr}
10002bdc: b084         	sub	sp, #0x10
10002bde: ac02         	add	r4, sp, #0x8
10002be0: 9400         	str	r4, [sp]
10002be2: f000 f805    	bl	0x10002bf0 <__udivmoddi4> @ imm = #0xa
10002be6: 9a02         	ldr	r2, [sp, #0x8]
10002be8: 9b03         	ldr	r3, [sp, #0xc]
10002bea: b004         	add	sp, #0x10
10002bec: bd10         	pop	{r4, pc}
10002bee: defe         	trap

10002bf0 <__udivmoddi4>:
10002bf0: b5d0         	push	{r4, r6, r7, lr}
10002bf2: af02         	add	r7, sp, #0x8
10002bf4: f000 f805    	bl	0x10002c02 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45> @ imm = #0xa
10002bf8: 68bc         	ldr	r4, [r7, #0x8]
10002bfa: 2c00         	cmp	r4, #0x0
10002bfc: d000         	beq	0x10002c00 <__udivmoddi4+0x10> @ imm = #0x0
10002bfe: c40c         	stm	r4!, {r2, r3}
10002c00: bdd0         	pop	{r4, r6, r7, pc}

10002c02 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45>:
10002c02: b5f0         	push	{r4, r5, r6, r7, lr}
10002c04: af03         	add	r7, sp, #0xc
10002c06: b087         	sub	sp, #0x1c
10002c08: 4615         	mov	r5, r2
10002c0a: 460c         	mov	r4, r1
10002c0c: 4606         	mov	r6, r0
10002c0e: 9303         	str	r3, [sp, #0xc]
10002c10: 2a00         	cmp	r2, #0x0
10002c12: d100         	bne	0x10002c16 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x14> @ imm = #0x0
10002c14: e084         	b	0x10002d20 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x11e> @ imm = #0x108
10002c16: 2b00         	cmp	r3, #0x0
10002c18: d000         	beq	0x10002c1c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x1a> @ imm = #0x0
10002c1a: e081         	b	0x10002d20 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x11e> @ imm = #0x102
10002c1c: 2c00         	cmp	r4, #0x0
10002c1e: d100         	bne	0x10002c22 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x20> @ imm = #0x0
10002c20: e11e         	b	0x10002e60 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x25e> @ imm = #0x23c
10002c22: 42ac         	cmp	r4, r5
10002c24: d300         	blo	0x10002c28 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x26> @ imm = #0x0
10002c26: e122         	b	0x10002e6e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x26c> @ imm = #0x244
10002c28: 0c2a         	lsrs	r2, r5, #0x10
10002c2a: 4294         	cmp	r4, r2
10002c2c: 4620         	mov	r0, r4
10002c2e: 462c         	mov	r4, r5
10002c30: d800         	bhi	0x10002c34 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x32> @ imm = #0x0
10002c32: e13e         	b	0x10002eb2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2b0> @ imm = #0x27c
10002c34: 0a23         	lsrs	r3, r4, #0x8
10002c36: 4298         	cmp	r0, r3
10002c38: d800         	bhi	0x10002c3c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3a> @ imm = #0x0
10002c3a: e13f         	b	0x10002ebc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2ba> @ imm = #0x27e
10002c3c: 0921         	lsrs	r1, r4, #0x4
10002c3e: 4288         	cmp	r0, r1
10002c40: d800         	bhi	0x10002c44 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x42> @ imm = #0x0
10002c42: 460c         	mov	r4, r1
10002c44: 9104         	str	r1, [sp, #0x10]
10002c46: 9502         	str	r5, [sp, #0x8]
10002c48: 08a1         	lsrs	r1, r4, #0x2
10002c4a: 4288         	cmp	r0, r1
10002c4c: d800         	bhi	0x10002c50 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x4e> @ imm = #0x0
10002c4e: 460c         	mov	r4, r1
10002c50: 9106         	str	r1, [sp, #0x18]
10002c52: 0865         	lsrs	r5, r4, #0x1
10002c54: 2101         	movs	r1, #0x1
10002c56: 2400         	movs	r4, #0x0
10002c58: 9405         	str	r4, [sp, #0x14]
10002c5a: 460c         	mov	r4, r1
10002c5c: 42a8         	cmp	r0, r5
10002c5e: 460d         	mov	r5, r1
10002c60: d900         	bls	0x10002c64 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x62> @ imm = #0x0
10002c62: e131         	b	0x10002ec8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2c6> @ imm = #0x262
10002c64: 4290         	cmp	r0, r2
10002c66: 4622         	mov	r2, r4
10002c68: 9904         	ldr	r1, [sp, #0x10]
10002c6a: d900         	bls	0x10002c6e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x6c> @ imm = #0x0
10002c6c: e132         	b	0x10002ed4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2d2> @ imm = #0x264
10002c6e: 0112         	lsls	r2, r2, #0x4
10002c70: 4298         	cmp	r0, r3
10002c72: 4623         	mov	r3, r4
10002c74: d900         	bls	0x10002c78 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x76> @ imm = #0x0
10002c76: 9b05         	ldr	r3, [sp, #0x14]
10002c78: 00db         	lsls	r3, r3, #0x3
10002c7a: 189a         	adds	r2, r3, r2
10002c7c: 4288         	cmp	r0, r1
10002c7e: 4621         	mov	r1, r4
10002c80: 4623         	mov	r3, r4
10002c82: d900         	bls	0x10002c86 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x84> @ imm = #0x0
10002c84: 9905         	ldr	r1, [sp, #0x14]
10002c86: 9604         	str	r6, [sp, #0x10]
10002c88: 0089         	lsls	r1, r1, #0x2
10002c8a: 1851         	adds	r1, r2, r1
10002c8c: 4604         	mov	r4, r0
10002c8e: 9a06         	ldr	r2, [sp, #0x18]
10002c90: 4290         	cmp	r0, r2
10002c92: 9301         	str	r3, [sp, #0x4]
10002c94: 4618         	mov	r0, r3
10002c96: d900         	bls	0x10002c9a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x98> @ imm = #0x0
10002c98: 9805         	ldr	r0, [sp, #0x14]
10002c9a: 0040         	lsls	r0, r0, #0x1
10002c9c: 1808         	adds	r0, r1, r0
10002c9e: 261f         	movs	r6, #0x1f
10002ca0: 1940         	adds	r0, r0, r5
10002ca2: 4635         	mov	r5, r6
10002ca4: d001         	beq	0x10002caa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xa8> @ imm = #0x2
10002ca6: 2120         	movs	r1, #0x20
10002ca8: 1a0d         	subs	r5, r1, r0
10002caa: 9802         	ldr	r0, [sp, #0x8]
10002cac: 9903         	ldr	r1, [sp, #0xc]
10002cae: 462a         	mov	r2, r5
10002cb0: f7ff ff58    	bl	0x10002b64 <__aeabi_llsl> @ imm = #-0x150
10002cb4: 402e         	ands	r6, r5
10002cb6: 9a01         	ldr	r2, [sp, #0x4]
10002cb8: 40b2         	lsls	r2, r6
10002cba: 9206         	str	r2, [sp, #0x18]
10002cbc: 9e04         	ldr	r6, [sp, #0x10]
10002cbe: e009         	b	0x10002cd4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xd2> @ imm = #0x12
10002cc0: 461e         	mov	r6, r3
10002cc2: 462c         	mov	r4, r5
10002cc4: 9804         	ldr	r0, [sp, #0x10]
10002cc6: 0880         	lsrs	r0, r0, #0x2
10002cc8: 078a         	lsls	r2, r1, #0x1e
10002cca: 1880         	adds	r0, r0, r2
10002ccc: 9a06         	ldr	r2, [sp, #0x18]
10002cce: 0892         	lsrs	r2, r2, #0x2
10002cd0: 9206         	str	r2, [sp, #0x18]
10002cd2: 0889         	lsrs	r1, r1, #0x2
10002cd4: 1a33         	subs	r3, r6, r0
10002cd6: 4625         	mov	r5, r4
10002cd8: 418d         	sbcs	r5, r1
10002cda: d40b         	bmi	0x10002cf4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xf2> @ imm = #0x16
10002cdc: 4606         	mov	r6, r0
10002cde: 9a05         	ldr	r2, [sp, #0x14]
10002ce0: 9806         	ldr	r0, [sp, #0x18]
10002ce2: 4302         	orrs	r2, r0
10002ce4: 9205         	str	r2, [sp, #0x14]
10002ce6: 9801         	ldr	r0, [sp, #0x4]
10002ce8: 4285         	cmp	r5, r0
10002cea: d200         	bhs	0x10002cee <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xec> @ imm = #0x0
10002cec: e0de         	b	0x10002eac <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2aa> @ imm = #0x1bc
10002cee: 462c         	mov	r4, r5
10002cf0: 4630         	mov	r0, r6
10002cf2: e001         	b	0x10002cf8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xf6> @ imm = #0x2
10002cf4: 4633         	mov	r3, r6
10002cf6: 4625         	mov	r5, r4
10002cf8: 9004         	str	r0, [sp, #0x10]
10002cfa: 0846         	lsrs	r6, r0, #0x1
10002cfc: 07ca         	lsls	r2, r1, #0x1f
10002cfe: 18b2         	adds	r2, r6, r2
10002d00: 084e         	lsrs	r6, r1, #0x1
10002d02: 1a98         	subs	r0, r3, r2
10002d04: 41b4         	sbcs	r4, r6
10002d06: d4db         	bmi	0x10002cc0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xbe> @ imm = #-0x4a
10002d08: 9a06         	ldr	r2, [sp, #0x18]
10002d0a: 0852         	lsrs	r2, r2, #0x1
10002d0c: 9b05         	ldr	r3, [sp, #0x14]
10002d0e: 4313         	orrs	r3, r2
10002d10: 9d01         	ldr	r5, [sp, #0x4]
10002d12: 42ac         	cmp	r4, r5
10002d14: 9305         	str	r3, [sp, #0x14]
10002d16: d200         	bhs	0x10002d1a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x118> @ imm = #0x0
10002d18: e0e3         	b	0x10002ee2 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2e0> @ imm = #0x1c6
10002d1a: 4622         	mov	r2, r4
10002d1c: 4606         	mov	r6, r0
10002d1e: e7d1         	b	0x10002cc4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0xc2> @ imm = #-0x5e
10002d20: 2100         	movs	r1, #0x0
10002d22: 1b70         	subs	r0, r6, r5
10002d24: 4620         	mov	r0, r4
10002d26: 9a03         	ldr	r2, [sp, #0xc]
10002d28: 4190         	sbcs	r0, r2
10002d2a: d200         	bhs	0x10002d2e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x12c> @ imm = #0x0
10002d2c: e091         	b	0x10002e52 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x250> @ imm = #0x122
10002d2e: 2c00         	cmp	r4, #0x0
10002d30: d100         	bne	0x10002d34 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x132> @ imm = #0x0
10002d32: e08e         	b	0x10002e52 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x250> @ imm = #0x11c
10002d34: 9502         	str	r5, [sp, #0x8]
10002d36: 4618         	mov	r0, r3
10002d38: 0c23         	lsrs	r3, r4, #0x10
10002d3a: 4601         	mov	r1, r0
10002d3c: 4298         	cmp	r0, r3
10002d3e: 4620         	mov	r0, r4
10002d40: d800         	bhi	0x10002d44 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x142> @ imm = #0x0
10002d42: e0a1         	b	0x10002e88 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x286> @ imm = #0x142
10002d44: 0a05         	lsrs	r5, r0, #0x8
10002d46: 42a9         	cmp	r1, r5
10002d48: d800         	bhi	0x10002d4c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x14a> @ imm = #0x0
10002d4a: e0a2         	b	0x10002e92 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x290> @ imm = #0x144
10002d4c: 9401         	str	r4, [sp, #0x4]
10002d4e: 0902         	lsrs	r2, r0, #0x4
10002d50: 4291         	cmp	r1, r2
10002d52: d800         	bhi	0x10002d56 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x154> @ imm = #0x0
10002d54: e0a3         	b	0x10002e9e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x29c> @ imm = #0x146
10002d56: 9604         	str	r6, [sp, #0x10]
10002d58: 0884         	lsrs	r4, r0, #0x2
10002d5a: 42a1         	cmp	r1, r4
10002d5c: d800         	bhi	0x10002d60 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x15e> @ imm = #0x0
10002d5e: 4620         	mov	r0, r4
10002d60: 9405         	str	r4, [sp, #0x14]
10002d62: 0846         	lsrs	r6, r0, #0x1
10002d64: 2401         	movs	r4, #0x1
10002d66: 2000         	movs	r0, #0x0
10002d68: 42b1         	cmp	r1, r6
10002d6a: 4606         	mov	r6, r0
10002d6c: 9406         	str	r4, [sp, #0x18]
10002d6e: d900         	bls	0x10002d72 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x170> @ imm = #0x0
10002d70: 4634         	mov	r4, r6
10002d72: 9400         	str	r4, [sp]
10002d74: 4299         	cmp	r1, r3
10002d76: 9b06         	ldr	r3, [sp, #0x18]
10002d78: 9804         	ldr	r0, [sp, #0x10]
10002d7a: d900         	bls	0x10002d7e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x17c> @ imm = #0x0
10002d7c: 4633         	mov	r3, r6
10002d7e: 011b         	lsls	r3, r3, #0x4
10002d80: 42a9         	cmp	r1, r5
10002d82: 9d06         	ldr	r5, [sp, #0x18]
10002d84: 9c01         	ldr	r4, [sp, #0x4]
10002d86: d900         	bls	0x10002d8a <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x188> @ imm = #0x0
10002d88: 4635         	mov	r5, r6
10002d8a: 00ed         	lsls	r5, r5, #0x3
10002d8c: 18eb         	adds	r3, r5, r3
10002d8e: 4291         	cmp	r1, r2
10002d90: 9a06         	ldr	r2, [sp, #0x18]
10002d92: d900         	bls	0x10002d96 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x194> @ imm = #0x0
10002d94: 4632         	mov	r2, r6
10002d96: 0092         	lsls	r2, r2, #0x2
10002d98: 189a         	adds	r2, r3, r2
10002d9a: 460b         	mov	r3, r1
10002d9c: 9905         	ldr	r1, [sp, #0x14]
10002d9e: 428b         	cmp	r3, r1
10002da0: 9906         	ldr	r1, [sp, #0x18]
10002da2: 9d02         	ldr	r5, [sp, #0x8]
10002da4: d900         	bls	0x10002da8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x1a6> @ imm = #0x0
10002da6: 4631         	mov	r1, r6
10002da8: 0049         	lsls	r1, r1, #0x1
10002daa: 1851         	adds	r1, r2, r1
10002dac: 9a00         	ldr	r2, [sp]
10002dae: 188a         	adds	r2, r1, r2
10002db0: 4093         	lsls	r3, r2
10002db2: 9305         	str	r3, [sp, #0x14]
10002db4: 231f         	movs	r3, #0x1f
10002db6: 4053         	eors	r3, r2
10002db8: 0869         	lsrs	r1, r5, #0x1
10002dba: 40d9         	lsrs	r1, r3
10002dbc: 9b05         	ldr	r3, [sp, #0x14]
10002dbe: 4319         	orrs	r1, r3
10002dc0: 462b         	mov	r3, r5
10002dc2: 460d         	mov	r5, r1
10002dc4: 4619         	mov	r1, r3
10002dc6: 4091         	lsls	r1, r2
10002dc8: 9b06         	ldr	r3, [sp, #0x18]
10002dca: 4093         	lsls	r3, r2
10002dcc: 9306         	str	r3, [sp, #0x18]
10002dce: e00b         	b	0x10002de8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x1e6> @ imm = #0x16
10002dd0: 462e         	mov	r6, r5
10002dd2: 460b         	mov	r3, r1
10002dd4: 9804         	ldr	r0, [sp, #0x10]
10002dd6: 0880         	lsrs	r0, r0, #0x2
10002dd8: 9d05         	ldr	r5, [sp, #0x14]
10002dda: 07aa         	lsls	r2, r5, #0x1e
10002ddc: 1881         	adds	r1, r0, r2
10002dde: 9806         	ldr	r0, [sp, #0x18]
10002de0: 0880         	lsrs	r0, r0, #0x2
10002de2: 9006         	str	r0, [sp, #0x18]
10002de4: 08ad         	lsrs	r5, r5, #0x2
10002de6: 4618         	mov	r0, r3
10002de8: 9104         	str	r1, [sp, #0x10]
10002dea: 1a41         	subs	r1, r0, r1
10002dec: 4622         	mov	r2, r4
10002dee: 9505         	str	r5, [sp, #0x14]
10002df0: 41aa         	sbcs	r2, r5
10002df2: d409         	bmi	0x10002e08 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x206> @ imm = #0x12
10002df4: 9806         	ldr	r0, [sp, #0x18]
10002df6: 4306         	orrs	r6, r0
10002df8: 4635         	mov	r5, r6
10002dfa: 9802         	ldr	r0, [sp, #0x8]
10002dfc: 1a0e         	subs	r6, r1, r0
10002dfe: 4616         	mov	r6, r2
10002e00: 9803         	ldr	r0, [sp, #0xc]
10002e02: 4186         	sbcs	r6, r0
10002e04: d203         	bhs	0x10002e0e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x20c> @ imm = #0x6
10002e06: e01c         	b	0x10002e42 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x240> @ imm = #0x38
10002e08: 4635         	mov	r5, r6
10002e0a: 4601         	mov	r1, r0
10002e0c: 4622         	mov	r2, r4
10002e0e: 9804         	ldr	r0, [sp, #0x10]
10002e10: 0846         	lsrs	r6, r0, #0x1
10002e12: 9b05         	ldr	r3, [sp, #0x14]
10002e14: 07d8         	lsls	r0, r3, #0x1f
10002e16: 1830         	adds	r0, r6, r0
10002e18: 085e         	lsrs	r6, r3, #0x1
10002e1a: 4614         	mov	r4, r2
10002e1c: 1a0a         	subs	r2, r1, r0
10002e1e: 4623         	mov	r3, r4
10002e20: 41b3         	sbcs	r3, r6
10002e22: d4d5         	bmi	0x10002dd0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x1ce> @ imm = #-0x56
10002e24: 9806         	ldr	r0, [sp, #0x18]
10002e26: 0846         	lsrs	r6, r0, #0x1
10002e28: 432e         	orrs	r6, r5
10002e2a: 9802         	ldr	r0, [sp, #0x8]
10002e2c: 1a10         	subs	r0, r2, r0
10002e2e: 4618         	mov	r0, r3
10002e30: 9c03         	ldr	r4, [sp, #0xc]
10002e32: 41a0         	sbcs	r0, r4
10002e34: 4635         	mov	r5, r6
10002e36: 4618         	mov	r0, r3
10002e38: 4613         	mov	r3, r2
10002e3a: 4611         	mov	r1, r2
10002e3c: 4604         	mov	r4, r0
10002e3e: 4602         	mov	r2, r0
10002e40: d2c8         	bhs	0x10002dd4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x1d2> @ imm = #-0x70
10002e42: 2000         	movs	r0, #0x0
10002e44: 9006         	str	r0, [sp, #0x18]
10002e46: 4628         	mov	r0, r5
10002e48: 4613         	mov	r3, r2
10002e4a: 460a         	mov	r2, r1
10002e4c: 9906         	ldr	r1, [sp, #0x18]
10002e4e: b007         	add	sp, #0x1c
10002e50: bdf0         	pop	{r4, r5, r6, r7, pc}
10002e52: 4632         	mov	r2, r6
10002e54: 4623         	mov	r3, r4
10002e56: 4608         	mov	r0, r1
10002e58: 9106         	str	r1, [sp, #0x18]
10002e5a: 9906         	ldr	r1, [sp, #0x18]
10002e5c: b007         	add	sp, #0x1c
10002e5e: bdf0         	pop	{r4, r5, r6, r7, pc}
10002e60: 4630         	mov	r0, r6
10002e62: 4629         	mov	r1, r5
10002e64: f7fe f9f4    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1c18
10002e68: 4345         	muls	r5, r0, r5
10002e6a: 1b72         	subs	r2, r6, r5
10002e6c: e044         	b	0x10002ef8 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2f6> @ imm = #0x88
10002e6e: d148         	bne	0x10002f02 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x300> @ imm = #0x90
10002e70: 4630         	mov	r0, r6
10002e72: 4621         	mov	r1, r4
10002e74: f7fe f9ec    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1c28
10002e78: 4344         	muls	r4, r0, r4
10002e7a: 1b32         	subs	r2, r6, r4
10002e7c: 2300         	movs	r3, #0x0
10002e7e: 2101         	movs	r1, #0x1
10002e80: 9106         	str	r1, [sp, #0x18]
10002e82: 9906         	ldr	r1, [sp, #0x18]
10002e84: b007         	add	sp, #0x1c
10002e86: bdf0         	pop	{r4, r5, r6, r7, pc}
10002e88: 4618         	mov	r0, r3
10002e8a: 0a05         	lsrs	r5, r0, #0x8
10002e8c: 42a9         	cmp	r1, r5
10002e8e: d900         	bls	0x10002e92 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x290> @ imm = #0x0
10002e90: e75c         	b	0x10002d4c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x14a> @ imm = #-0x148
10002e92: 4628         	mov	r0, r5
10002e94: 9401         	str	r4, [sp, #0x4]
10002e96: 0902         	lsrs	r2, r0, #0x4
10002e98: 4291         	cmp	r1, r2
10002e9a: d900         	bls	0x10002e9e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x29c> @ imm = #0x0
10002e9c: e75b         	b	0x10002d56 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x154> @ imm = #-0x14a
10002e9e: 4610         	mov	r0, r2
10002ea0: 9604         	str	r6, [sp, #0x10]
10002ea2: 0884         	lsrs	r4, r0, #0x2
10002ea4: 42a1         	cmp	r1, r4
10002ea6: d800         	bhi	0x10002eaa <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2a8> @ imm = #0x0
10002ea8: e759         	b	0x10002d5e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x15c> @ imm = #-0x14e
10002eaa: e759         	b	0x10002d60 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x15e> @ imm = #-0x14e
10002eac: 461e         	mov	r6, r3
10002eae: 9d02         	ldr	r5, [sp, #0x8]
10002eb0: e019         	b	0x10002ee6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2e4> @ imm = #0x32
10002eb2: 4614         	mov	r4, r2
10002eb4: 0a23         	lsrs	r3, r4, #0x8
10002eb6: 4298         	cmp	r0, r3
10002eb8: d900         	bls	0x10002ebc <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2ba> @ imm = #0x0
10002eba: e6bf         	b	0x10002c3c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3a> @ imm = #-0x282
10002ebc: 461c         	mov	r4, r3
10002ebe: 0921         	lsrs	r1, r4, #0x4
10002ec0: 4288         	cmp	r0, r1
10002ec2: d800         	bhi	0x10002ec6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2c4> @ imm = #0x0
10002ec4: e6bd         	b	0x10002c42 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x40> @ imm = #-0x286
10002ec6: e6bd         	b	0x10002c44 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x42> @ imm = #-0x286
10002ec8: 9d05         	ldr	r5, [sp, #0x14]
10002eca: 4290         	cmp	r0, r2
10002ecc: 4622         	mov	r2, r4
10002ece: 9904         	ldr	r1, [sp, #0x10]
10002ed0: d800         	bhi	0x10002ed4 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2d2> @ imm = #0x0
10002ed2: e6cc         	b	0x10002c6e <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x6c> @ imm = #-0x268
10002ed4: 9a05         	ldr	r2, [sp, #0x14]
10002ed6: 0112         	lsls	r2, r2, #0x4
10002ed8: 4298         	cmp	r0, r3
10002eda: 4623         	mov	r3, r4
10002edc: d900         	bls	0x10002ee0 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x2de> @ imm = #0x0
10002ede: e6ca         	b	0x10002c76 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x74> @ imm = #-0x26c
10002ee0: e6ca         	b	0x10002c78 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x76> @ imm = #-0x26c
10002ee2: 9d02         	ldr	r5, [sp, #0x8]
10002ee4: 4606         	mov	r6, r0
10002ee6: 4630         	mov	r0, r6
10002ee8: 4629         	mov	r1, r5
10002eea: f7fe f9b1    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1c9e
10002eee: 9905         	ldr	r1, [sp, #0x14]
10002ef0: 4301         	orrs	r1, r0
10002ef2: 4345         	muls	r5, r0, r5
10002ef4: 1b72         	subs	r2, r6, r5
10002ef6: 4608         	mov	r0, r1
10002ef8: 2300         	movs	r3, #0x0
10002efa: 9306         	str	r3, [sp, #0x18]
10002efc: 9906         	ldr	r1, [sp, #0x18]
10002efe: b007         	add	sp, #0x1c
10002f00: bdf0         	pop	{r4, r5, r6, r7, pc}
10002f02: 9305         	str	r3, [sp, #0x14]
10002f04: 4620         	mov	r0, r4
10002f06: 4629         	mov	r1, r5
10002f08: f7fe f9a2    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1cbc
10002f0c: 4629         	mov	r1, r5
10002f0e: 9006         	str	r0, [sp, #0x18]
10002f10: 4341         	muls	r1, r0, r1
10002f12: 1a63         	subs	r3, r4, r1
10002f14: 0c28         	lsrs	r0, r5, #0x10
10002f16: d11f         	bne	0x10002f58 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x356> @ imm = #0x3e
10002f18: 0c30         	lsrs	r0, r6, #0x10
10002f1a: 0419         	lsls	r1, r3, #0x10
10002f1c: 180c         	adds	r4, r1, r0
10002f1e: 4620         	mov	r0, r4
10002f20: 4629         	mov	r1, r5
10002f22: f7fe f995    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1cd6
10002f26: 4631         	mov	r1, r6
10002f28: 4606         	mov	r6, r0
10002f2a: 4628         	mov	r0, r5
10002f2c: 4370         	muls	r0, r6, r0
10002f2e: 1a20         	subs	r0, r4, r0
10002f30: 0400         	lsls	r0, r0, #0x10
10002f32: b289         	uxth	r1, r1
10002f34: 1844         	adds	r4, r0, r1
10002f36: 4620         	mov	r0, r4
10002f38: 4629         	mov	r1, r5
10002f3a: f7fe f989    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1cee
10002f3e: 4345         	muls	r5, r0, r5
10002f40: 1b62         	subs	r2, r4, r5
10002f42: 0431         	lsls	r1, r6, #0x10
10002f44: 4301         	orrs	r1, r0
10002f46: 0c33         	lsrs	r3, r6, #0x10
10002f48: 4608         	mov	r0, r1
10002f4a: 9906         	ldr	r1, [sp, #0x18]
10002f4c: 4319         	orrs	r1, r3
10002f4e: 9106         	str	r1, [sp, #0x18]
10002f50: 2300         	movs	r3, #0x0
10002f52: 9906         	ldr	r1, [sp, #0x18]
10002f54: b007         	add	sp, #0x1c
10002f56: bdf0         	pop	{r4, r5, r6, r7, pc}
10002f58: 1b70         	subs	r0, r6, r5
10002f5a: 4618         	mov	r0, r3
10002f5c: 9903         	ldr	r1, [sp, #0xc]
10002f5e: 4188         	sbcs	r0, r1
10002f60: d204         	bhs	0x10002f6c <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x36a> @ imm = #0x8
10002f62: 2000         	movs	r0, #0x0
10002f64: 4632         	mov	r2, r6
10002f66: 9906         	ldr	r1, [sp, #0x18]
10002f68: b007         	add	sp, #0x1c
10002f6a: bdf0         	pop	{r4, r5, r6, r7, pc}
10002f6c: 2201         	movs	r2, #0x1
10002f6e: 0868         	lsrs	r0, r5, #0x1
10002f70: 9905         	ldr	r1, [sp, #0x14]
10002f72: 07c9         	lsls	r1, r1, #0x1f
10002f74: 1809         	adds	r1, r1, r0
10002f76: 9502         	str	r5, [sp, #0x8]
10002f78: 07e8         	lsls	r0, r5, #0x1f
10002f7a: 9203         	str	r2, [sp, #0xc]
10002f7c: 07d2         	lsls	r2, r2, #0x1f
10002f7e: 2500         	movs	r5, #0x0
10002f80: e007         	b	0x10002f92 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x390> @ imm = #0xe
10002f82: 4626         	mov	r6, r4
10002f84: 9805         	ldr	r0, [sp, #0x14]
10002f86: 0880         	lsrs	r0, r0, #0x2
10002f88: 078a         	lsls	r2, r1, #0x1e
10002f8a: 1880         	adds	r0, r0, r2
10002f8c: 9a04         	ldr	r2, [sp, #0x10]
10002f8e: 0892         	lsrs	r2, r2, #0x2
10002f90: 0889         	lsrs	r1, r1, #0x2
10002f92: 4634         	mov	r4, r6
10002f94: 9005         	str	r0, [sp, #0x14]
10002f96: 1a36         	subs	r6, r6, r0
10002f98: 4618         	mov	r0, r3
10002f9a: 4188         	sbcs	r0, r1
10002f9c: 9204         	str	r2, [sp, #0x10]
10002f9e: d405         	bmi	0x10002fac <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3aa> @ imm = #0xa
10002fa0: 4315         	orrs	r5, r2
10002fa2: 9a03         	ldr	r2, [sp, #0xc]
10002fa4: 4290         	cmp	r0, r2
10002fa6: d312         	blo	0x10002fce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3cc> @ imm = #0x24
10002fa8: 4634         	mov	r4, r6
10002faa: 4603         	mov	r3, r0
10002fac: 9805         	ldr	r0, [sp, #0x14]
10002fae: 0840         	lsrs	r0, r0, #0x1
10002fb0: 07ce         	lsls	r6, r1, #0x1f
10002fb2: 1980         	adds	r0, r0, r6
10002fb4: 084a         	lsrs	r2, r1, #0x1
10002fb6: 1a26         	subs	r6, r4, r0
10002fb8: 4618         	mov	r0, r3
10002fba: 4190         	sbcs	r0, r2
10002fbc: d4e1         	bmi	0x10002f82 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x380> @ imm = #-0x3e
10002fbe: 9a04         	ldr	r2, [sp, #0x10]
10002fc0: 0852         	lsrs	r2, r2, #0x1
10002fc2: 4315         	orrs	r5, r2
10002fc4: 9a03         	ldr	r2, [sp, #0xc]
10002fc6: 4290         	cmp	r0, r2
10002fc8: d301         	blo	0x10002fce <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3cc> @ imm = #0x2
10002fca: 4603         	mov	r3, r0
10002fcc: e7da         	b	0x10002f84 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x382> @ imm = #-0x4c
10002fce: 4630         	mov	r0, r6
10002fd0: 9c02         	ldr	r4, [sp, #0x8]
10002fd2: 4621         	mov	r1, r4
10002fd4: f7fe f93c    	bl	0x10001250 <_rphal_unsigned_divmod> @ imm = #-0x1d88
10002fd8: 4305         	orrs	r5, r0
10002fda: 4344         	muls	r4, r0, r4
10002fdc: 1b32         	subs	r2, r6, r4
10002fde: 4628         	mov	r0, r5
10002fe0: 2300         	movs	r3, #0x0
10002fe2: 9906         	ldr	r1, [sp, #0x18]
10002fe4: b007         	add	sp, #0x1c
10002fe6: bdf0         	pop	{r4, r5, r6, r7, pc}

10002fe8 <__Thumbv6MABSLongThunk_rp2040_flash::flash::write_flash_inner::h52bc03164e3df116>:
10002fe8: b403         	push	{r0, r1}
10002fea: 4801         	ldr	r0, [pc, #0x4]          @ 0x10002ff0 <__Thumbv6MABSLongThunk_rp2040_flash::flash::write_flash_inner::h52bc03164e3df116+0x8>
10002fec: 9001         	str	r0, [sp, #0x4]
10002fee: bd01         	pop	{r0, pc}

10002ff0 <$d>:
10002ff0: 49 00 00 20  	.word	0x20000049

10002ff4 <HardFaultTrampoline>:
10002ff4: 4670         	mov	r0, lr
10002ff6: 2104         	movs	r1, #0x4
10002ff8: 4208         	tst	r0, r1
10002ffa: d102         	bne	0x10003002 <HardFaultTrampoline+0xe> @ imm = #0x4
10002ffc: f3ef 8008    	mrs	r0, msp
10003000: e002         	b	0x10003008 <HardFault_> @ imm = #0x4
10003002: f3ef 8009    	mrs	r0, psp
10003006: e7ff         	b	0x10003008 <HardFault_> @ imm = #-0x2

10003008 <HardFault_>:
10003008: e7fe         	b	0x10003008 <HardFault_> @ imm = #-0x4
1000300a: d4d4         	bmi	0x10002fb6 <compiler_builtins::int::specialized_div_rem::u64_div_rem::h2d0547516307db45+0x3b4> @ imm = #-0x58

Disassembly of section .data:

20000000 <__sdata>:
20000000: 4810         	ldr	r0, [pc, #0x40]         @ 0x20000044 <__sdata+0x44>
20000002: 6801         	ldr	r1, [r0]
20000004: 07c9         	lsls	r1, r1, #0x1f
20000006: d01c         	beq	0x20000042 <__sdata+0x42> @ imm = #0x38
20000008: 6881         	ldr	r1, [r0, #0x8]
2000000a: 2969         	cmp	r1, #0x69
2000000c: d119         	bne	0x20000042 <__sdata+0x42> @ imm = #0x32
2000000e: 2121         	movs	r1, #0x21
20000010: 0249         	lsls	r1, r1, #0x9
20000012: 6802         	ldr	r2, [r0]
20000014: 07d2         	lsls	r2, r2, #0x1f
20000016: d002         	beq	0x2000001e <__sdata+0x1e> @ imm = #0x4
20000018: 6882         	ldr	r2, [r0, #0x8]
2000001a: 428a         	cmp	r2, r1
2000001c: d011         	beq	0x20000042 <__sdata+0x42> @ imm = #0x22
2000001e: 6802         	ldr	r2, [r0]
20000020: 07d2         	lsls	r2, r2, #0x1f
20000022: d002         	beq	0x2000002a <__sdata+0x2a> @ imm = #0x4
20000024: 6882         	ldr	r2, [r0, #0x8]
20000026: 428a         	cmp	r2, r1
20000028: d00b         	beq	0x20000042 <__sdata+0x42> @ imm = #0x16
2000002a: 6802         	ldr	r2, [r0]
2000002c: 07d2         	lsls	r2, r2, #0x1f
2000002e: d002         	beq	0x20000036 <__sdata+0x36> @ imm = #0x4
20000030: 6882         	ldr	r2, [r0, #0x8]
20000032: 428a         	cmp	r2, r1
20000034: d005         	beq	0x20000042 <__sdata+0x42> @ imm = #0xa
20000036: 6802         	ldr	r2, [r0]
20000038: 07d2         	lsls	r2, r2, #0x1f
2000003a: d0ea         	beq	0x20000012 <__sdata+0x12> @ imm = #-0x2c
2000003c: 6882         	ldr	r2, [r0, #0x8]
2000003e: 428a         	cmp	r2, r1
20000040: d1e7         	bne	0x20000012 <__sdata+0x12> @ imm = #-0x32
20000042: 4770         	bx	lr

20000044 <$d.8>:
20000044: 50 00 00 d0  	.word	0xd0000050

20000048 <rp2040_flash::flash::write_flash_inner::h52bc03164e3df116>:
20000048: b5f0         	push	{r4, r5, r6, r7, lr}
2000004a: af03         	add	r7, sp, #0xc
2000004c: 46d6         	mov	lr, r10
2000004e: 464e         	mov	r6, r9
20000050: 4645         	mov	r5, r8
20000052: b560         	push	{r5, r6, lr}
20000054: 461d         	mov	r5, r3
20000056: 4680         	mov	r8, r0
20000058: 4691         	mov	r9, r2
2000005a: 468a         	mov	r10, r1
2000005c: 682c         	ldr	r4, [r5]
2000005e: 47a0         	blx	r4
20000060: 686c         	ldr	r4, [r5, #0x4]
20000062: 47a0         	blx	r4
20000064: 4640         	mov	r0, r8
20000066: 4651         	mov	r1, r10
20000068: 2201         	movs	r2, #0x1
2000006a: 07d2         	lsls	r2, r2, #0x1f
2000006c: 2300         	movs	r3, #0x0
2000006e: 68ac         	ldr	r4, [r5, #0x8]
20000070: 2c00         	cmp	r4, #0x0
20000072: d000         	beq	0x20000076 <rp2040_flash::flash::write_flash_inner::h52bc03164e3df116+0x2e> @ imm = #0x0
20000074: 47a0         	blx	r4
20000076: 4640         	mov	r0, r8
20000078: 4649         	mov	r1, r9
2000007a: 4652         	mov	r2, r10
2000007c: 68ec         	ldr	r4, [r5, #0xc]
2000007e: 2c00         	cmp	r4, #0x0
20000080: d000         	beq	0x20000084 <rp2040_flash::flash::write_flash_inner::h52bc03164e3df116+0x3c> @ imm = #0x0
20000082: 47a0         	blx	r4
20000084: 692c         	ldr	r4, [r5, #0x10]
20000086: 47a0         	blx	r4
20000088: 696c         	ldr	r4, [r5, #0x14]
2000008a: 47a0         	blx	r4
2000008c: bc07         	pop	{r0, r1, r2}
2000008e: 4680         	mov	r8, r0
20000090: 4689         	mov	r9, r1
20000092: 4692         	mov	r10, r2
20000094: bdf0         	pop	{r4, r5, r6, r7, pc}

20000096 <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3>:
20000096: b590         	push	{r4, r7, lr}
20000098: af01         	add	r7, sp, #0x4
2000009a: 46d6         	mov	lr, r10
2000009c: 464c         	mov	r4, r9
2000009e: 4643         	mov	r3, r8
200000a0: b518         	push	{r3, r4, lr}
200000a2: 4682         	mov	r10, r0
200000a4: 460d         	mov	r5, r1
200000a6: 682c         	ldr	r4, [r5]
200000a8: 47a0         	blx	r4
200000aa: 686c         	ldr	r4, [r5, #0x4]
200000ac: 47a0         	blx	r4
200000ae: 4657         	mov	r7, r10
200000b0: 2418         	movs	r4, #0x18
200000b2: 0624         	lsls	r4, r4, #0x18
200000b4: 2000         	movs	r0, #0x0
200000b6: 60a0         	str	r0, [r4, #0x8]
200000b8: 2003         	movs	r0, #0x3
200000ba: 0200         	lsls	r0, r0, #0x8
200000bc: 6821         	ldr	r1, [r4]
200000be: 4301         	orrs	r1, r0
200000c0: 6021         	str	r1, [r4]
200000c2: 68b8         	ldr	r0, [r7, #0x8]
200000c4: 6939         	ldr	r1, [r7, #0x10]
200000c6: 4408         	add	r0, r1
200000c8: 3801         	subs	r0, #0x1
200000ca: 6060         	str	r0, [r4, #0x4]
200000cc: 2001         	movs	r0, #0x1
200000ce: 60a0         	str	r0, [r4, #0x8]
200000d0: 4622         	mov	r2, r4
200000d2: 3260         	adds	r2, #0x60
200000d4: 6838         	ldr	r0, [r7]
200000d6: 6879         	ldr	r1, [r7, #0x4]
200000d8: 7803         	ldrb	r3, [r0]
200000da: 7013         	strb	r3, [r2]
200000dc: 3001         	adds	r0, #0x1
200000de: 3901         	subs	r1, #0x1
200000e0: d1fa         	bne	0x200000d8 <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x42> @ imm = #-0xc
200000e2: 68b9         	ldr	r1, [r7, #0x8]
200000e4: 2900         	cmp	r1, #0x0
200000e6: d008         	beq	0x200000fa <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x64> @ imm = #0x10
200000e8: 6aa3         	ldr	r3, [r4, #0x28]
200000ea: 2208         	movs	r2, #0x8
200000ec: 4213         	tst	r3, r2
200000ee: d0fb         	beq	0x200000e8 <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x52> @ imm = #-0xa
200000f0: 4622         	mov	r2, r4
200000f2: 3260         	adds	r2, #0x60
200000f4: 7813         	ldrb	r3, [r2]
200000f6: 3901         	subs	r1, #0x1
200000f8: d1f6         	bne	0x200000e8 <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x52> @ imm = #-0x14
200000fa: 68f8         	ldr	r0, [r7, #0xc]
200000fc: 6939         	ldr	r1, [r7, #0x10]
200000fe: 6aa3         	ldr	r3, [r4, #0x28]
20000100: 2208         	movs	r2, #0x8
20000102: 4213         	tst	r3, r2
20000104: d0fb         	beq	0x200000fe <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x68> @ imm = #-0xa
20000106: 4622         	mov	r2, r4
20000108: 3260         	adds	r2, #0x60
2000010a: 7813         	ldrb	r3, [r2]
2000010c: 7003         	strb	r3, [r0]
2000010e: 3001         	adds	r0, #0x1
20000110: 3901         	subs	r1, #0x1
20000112: d1f4         	bne	0x200000fe <rp2040_flash::flash::read_flash_inner::hab23373b05973ac3+0x68> @ imm = #-0x18
20000114: 2000         	movs	r0, #0x0
20000116: 60a0         	str	r0, [r4, #0x8]
20000118: 6060         	str	r0, [r4, #0x4]
2000011a: 696c         	ldr	r4, [r5, #0x14]
2000011c: 47a0         	blx	r4
2000011e: bc07         	pop	{r0, r1, r2}
20000120: 4680         	mov	r8, r0
20000122: 4689         	mov	r9, r1
20000124: 4692         	mov	r10, r2
20000126: bd90         	pop	{r4, r7, pc}
