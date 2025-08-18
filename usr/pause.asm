
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb000272 	bl	9f8 <printf>
      2c:	eb000161 	bl	5b8 <exit>
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e3530002 	cmp	r3, #2
      38:	da000002 	ble	48 <main+0x48>
      3c:	e59f106c 	ldr	r1, [pc, #108]	@ b0 <main+0xb0>
      40:	e3a00002 	mov	r0, #2
      44:	eb00026b 	bl	9f8 <printf>
      48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      4c:	e2833004 	add	r3, r3, #4
      50:	e5933000 	ldr	r3, [r3]
      54:	e1a00003 	mov	r0, r3
      58:	eb00010f 	bl	49c <atoi>
      5c:	e50b0008 	str	r0, [fp, #-8]
      60:	e51b3008 	ldr	r3, [fp, #-8]
      64:	e3530000 	cmp	r3, #0
      68:	ca000003 	bgt	7c <main+0x7c>
      6c:	e59f1040 	ldr	r1, [pc, #64]	@ b4 <main+0xb4>
      70:	e3a00002 	mov	r0, #2
      74:	eb00025f 	bl	9f8 <printf>
      78:	eb00014e 	bl	5b8 <exit>
      7c:	e51b2008 	ldr	r2, [fp, #-8]
      80:	e59f1030 	ldr	r1, [pc, #48]	@ b8 <main+0xb8>
      84:	e3a00002 	mov	r0, #2
      88:	eb00025a 	bl	9f8 <printf>
      8c:	e51b2008 	ldr	r2, [fp, #-8]
      90:	e1a03002 	mov	r3, r2
      94:	e1a03103 	lsl	r3, r3, #2
      98:	e0833002 	add	r3, r3, r2
      9c:	e1a03083 	lsl	r3, r3, #1
      a0:	e1a00003 	mov	r0, r3
      a4:	eb0001e5 	bl	840 <sleep>
      a8:	eb000142 	bl	5b8 <exit>
      ac:	000010b4 	.word	0x000010b4
      b0:	000010d8 	.word	0x000010d8
      b4:	00001110 	.word	0x00001110
      b8:	00001134 	.word	0x00001134

000000bc <strcpy>:
      bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      c0:	e28db000 	add	fp, sp, #0
      c4:	e24dd014 	sub	sp, sp, #20
      c8:	e50b0010 	str	r0, [fp, #-16]
      cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      d0:	e51b3010 	ldr	r3, [fp, #-16]
      d4:	e50b3008 	str	r3, [fp, #-8]
      d8:	e1a00000 	nop			@ (mov r0, r0)
      dc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e0:	e2823001 	add	r3, r2, #1
      e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e8:	e51b3010 	ldr	r3, [fp, #-16]
      ec:	e2831001 	add	r1, r3, #1
      f0:	e50b1010 	str	r1, [fp, #-16]
      f4:	e5d22000 	ldrb	r2, [r2]
      f8:	e5c32000 	strb	r2, [r3]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e3530000 	cmp	r3, #0
     104:	1afffff4 	bne	dc <strcpy+0x20>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e1a00003 	mov	r0, r3
     110:	e28bd000 	add	sp, fp, #0
     114:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     118:	e12fff1e 	bx	lr

0000011c <strcmp>:
     11c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     120:	e28db000 	add	fp, sp, #0
     124:	e24dd00c 	sub	sp, sp, #12
     128:	e50b0008 	str	r0, [fp, #-8]
     12c:	e50b100c 	str	r1, [fp, #-12]
     130:	ea000005 	b	14c <strcmp+0x30>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e2833001 	add	r3, r3, #1
     13c:	e50b3008 	str	r3, [fp, #-8]
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b300c 	str	r3, [fp, #-12]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e3530000 	cmp	r3, #0
     158:	0a000005 	beq	174 <strcmp+0x58>
     15c:	e51b3008 	ldr	r3, [fp, #-8]
     160:	e5d32000 	ldrb	r2, [r3]
     164:	e51b300c 	ldr	r3, [fp, #-12]
     168:	e5d33000 	ldrb	r3, [r3]
     16c:	e1520003 	cmp	r2, r3
     170:	0affffef 	beq	134 <strcmp+0x18>
     174:	e51b3008 	ldr	r3, [fp, #-8]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e1a02003 	mov	r2, r3
     180:	e51b300c 	ldr	r3, [fp, #-12]
     184:	e5d33000 	ldrb	r3, [r3]
     188:	e0423003 	sub	r3, r2, r3
     18c:	e1a00003 	mov	r0, r3
     190:	e28bd000 	add	sp, fp, #0
     194:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     198:	e12fff1e 	bx	lr

0000019c <strlen>:
     19c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1a0:	e28db000 	add	fp, sp, #0
     1a4:	e24dd014 	sub	sp, sp, #20
     1a8:	e50b0010 	str	r0, [fp, #-16]
     1ac:	e3a03000 	mov	r3, #0
     1b0:	e50b3008 	str	r3, [fp, #-8]
     1b4:	ea000002 	b	1c4 <strlen+0x28>
     1b8:	e51b3008 	ldr	r3, [fp, #-8]
     1bc:	e2833001 	add	r3, r3, #1
     1c0:	e50b3008 	str	r3, [fp, #-8]
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e51b2010 	ldr	r2, [fp, #-16]
     1cc:	e0823003 	add	r3, r2, r3
     1d0:	e5d33000 	ldrb	r3, [r3]
     1d4:	e3530000 	cmp	r3, #0
     1d8:	1afffff6 	bne	1b8 <strlen+0x1c>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e1a00003 	mov	r0, r3
     1e4:	e28bd000 	add	sp, fp, #0
     1e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ec:	e12fff1e 	bx	lr

000001f0 <memset>:
     1f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f4:	e28db000 	add	fp, sp, #0
     1f8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1fc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     200:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     204:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     208:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     20c:	e50b3008 	str	r3, [fp, #-8]
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e54b300d 	strb	r3, [fp, #-13]
     218:	e55b200d 	ldrb	r2, [fp, #-13]
     21c:	e1a03002 	mov	r3, r2
     220:	e1a03403 	lsl	r3, r3, #8
     224:	e0833002 	add	r3, r3, r2
     228:	e1a03803 	lsl	r3, r3, #16
     22c:	e1a02003 	mov	r2, r3
     230:	e55b300d 	ldrb	r3, [fp, #-13]
     234:	e1a03403 	lsl	r3, r3, #8
     238:	e1822003 	orr	r2, r2, r3
     23c:	e55b300d 	ldrb	r3, [fp, #-13]
     240:	e1823003 	orr	r3, r2, r3
     244:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     248:	ea000008 	b	270 <memset+0x80>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e55b200d 	ldrb	r2, [fp, #-13]
     254:	e5c32000 	strb	r2, [r3]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e2433001 	sub	r3, r3, #1
     260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e2833001 	add	r3, r3, #1
     26c:	e50b3008 	str	r3, [fp, #-8]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e3530000 	cmp	r3, #0
     278:	0a000003 	beq	28c <memset+0x9c>
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e2033003 	and	r3, r3, #3
     284:	e3530000 	cmp	r3, #0
     288:	1affffef 	bne	24c <memset+0x5c>
     28c:	e51b3008 	ldr	r3, [fp, #-8]
     290:	e50b300c 	str	r3, [fp, #-12]
     294:	ea000008 	b	2bc <memset+0xcc>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2a0:	e5832000 	str	r2, [r3]
     2a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e2433004 	sub	r3, r3, #4
     2ac:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e51b300c 	ldr	r3, [fp, #-12]
     2b4:	e2833004 	add	r3, r3, #4
     2b8:	e50b300c 	str	r3, [fp, #-12]
     2bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e3530003 	cmp	r3, #3
     2c4:	8afffff3 	bhi	298 <memset+0xa8>
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	ea000008 	b	2f8 <memset+0x108>
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e5c32000 	strb	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433001 	sub	r3, r3, #1
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e2833001 	add	r3, r3, #1
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530000 	cmp	r3, #0
     300:	1afffff3 	bne	2d4 <memset+0xe4>
     304:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     308:	e1a00003 	mov	r0, r3
     30c:	e28bd000 	add	sp, fp, #0
     310:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     314:	e12fff1e 	bx	lr

00000318 <strchr>:
     318:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     31c:	e28db000 	add	fp, sp, #0
     320:	e24dd00c 	sub	sp, sp, #12
     324:	e50b0008 	str	r0, [fp, #-8]
     328:	e1a03001 	mov	r3, r1
     32c:	e54b3009 	strb	r3, [fp, #-9]
     330:	ea000009 	b	35c <strchr+0x44>
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e5d33000 	ldrb	r3, [r3]
     33c:	e55b2009 	ldrb	r2, [fp, #-9]
     340:	e1520003 	cmp	r2, r3
     344:	1a000001 	bne	350 <strchr+0x38>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	ea000007 	b	370 <strchr+0x58>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e2833001 	add	r3, r3, #1
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e5d33000 	ldrb	r3, [r3]
     364:	e3530000 	cmp	r3, #0
     368:	1afffff1 	bne	334 <strchr+0x1c>
     36c:	e3a03000 	mov	r3, #0
     370:	e1a00003 	mov	r0, r3
     374:	e28bd000 	add	sp, fp, #0
     378:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     37c:	e12fff1e 	bx	lr

00000380 <gets>:
     380:	e92d4800 	push	{fp, lr}
     384:	e28db004 	add	fp, sp, #4
     388:	e24dd018 	sub	sp, sp, #24
     38c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     390:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     394:	e3a03000 	mov	r3, #0
     398:	e50b3008 	str	r3, [fp, #-8]
     39c:	ea000016 	b	3fc <gets+0x7c>
     3a0:	e24b300d 	sub	r3, fp, #13
     3a4:	e3a02001 	mov	r2, #1
     3a8:	e1a01003 	mov	r1, r3
     3ac:	e3a00000 	mov	r0, #0
     3b0:	eb00009b 	bl	624 <read>
     3b4:	e50b000c 	str	r0, [fp, #-12]
     3b8:	e51b300c 	ldr	r3, [fp, #-12]
     3bc:	e3530000 	cmp	r3, #0
     3c0:	da000013 	ble	414 <gets+0x94>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	e2832001 	add	r2, r3, #1
     3cc:	e50b2008 	str	r2, [fp, #-8]
     3d0:	e1a02003 	mov	r2, r3
     3d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d8:	e0833002 	add	r3, r3, r2
     3dc:	e55b200d 	ldrb	r2, [fp, #-13]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e55b300d 	ldrb	r3, [fp, #-13]
     3e8:	e353000a 	cmp	r3, #10
     3ec:	0a000009 	beq	418 <gets+0x98>
     3f0:	e55b300d 	ldrb	r3, [fp, #-13]
     3f4:	e353000d 	cmp	r3, #13
     3f8:	0a000006 	beq	418 <gets+0x98>
     3fc:	e51b3008 	ldr	r3, [fp, #-8]
     400:	e2833001 	add	r3, r3, #1
     404:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     408:	e1520003 	cmp	r2, r3
     40c:	caffffe3 	bgt	3a0 <gets+0x20>
     410:	ea000000 	b	418 <gets+0x98>
     414:	e1a00000 	nop			@ (mov r0, r0)
     418:	e51b3008 	ldr	r3, [fp, #-8]
     41c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     420:	e0823003 	add	r3, r2, r3
     424:	e3a02000 	mov	r2, #0
     428:	e5c32000 	strb	r2, [r3]
     42c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     430:	e1a00003 	mov	r0, r3
     434:	e24bd004 	sub	sp, fp, #4
     438:	e8bd8800 	pop	{fp, pc}

0000043c <stat>:
     43c:	e92d4800 	push	{fp, lr}
     440:	e28db004 	add	fp, sp, #4
     444:	e24dd010 	sub	sp, sp, #16
     448:	e50b0010 	str	r0, [fp, #-16]
     44c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     450:	e3a01000 	mov	r1, #0
     454:	e51b0010 	ldr	r0, [fp, #-16]
     458:	eb00009e 	bl	6d8 <open>
     45c:	e50b0008 	str	r0, [fp, #-8]
     460:	e51b3008 	ldr	r3, [fp, #-8]
     464:	e3530000 	cmp	r3, #0
     468:	aa000001 	bge	474 <stat+0x38>
     46c:	e3e03000 	mvn	r3, #0
     470:	ea000006 	b	490 <stat+0x54>
     474:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     478:	e51b0008 	ldr	r0, [fp, #-8]
     47c:	eb0000b0 	bl	744 <fstat>
     480:	e50b000c 	str	r0, [fp, #-12]
     484:	e51b0008 	ldr	r0, [fp, #-8]
     488:	eb000077 	bl	66c <close>
     48c:	e51b300c 	ldr	r3, [fp, #-12]
     490:	e1a00003 	mov	r0, r3
     494:	e24bd004 	sub	sp, fp, #4
     498:	e8bd8800 	pop	{fp, pc}

0000049c <atoi>:
     49c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a0:	e28db000 	add	fp, sp, #0
     4a4:	e24dd014 	sub	sp, sp, #20
     4a8:	e50b0010 	str	r0, [fp, #-16]
     4ac:	e3a03000 	mov	r3, #0
     4b0:	e50b3008 	str	r3, [fp, #-8]
     4b4:	ea00000c 	b	4ec <atoi+0x50>
     4b8:	e51b2008 	ldr	r2, [fp, #-8]
     4bc:	e1a03002 	mov	r3, r2
     4c0:	e1a03103 	lsl	r3, r3, #2
     4c4:	e0833002 	add	r3, r3, r2
     4c8:	e1a03083 	lsl	r3, r3, #1
     4cc:	e1a01003 	mov	r1, r3
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e2832001 	add	r2, r3, #1
     4d8:	e50b2010 	str	r2, [fp, #-16]
     4dc:	e5d33000 	ldrb	r3, [r3]
     4e0:	e0813003 	add	r3, r1, r3
     4e4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e8:	e50b3008 	str	r3, [fp, #-8]
     4ec:	e51b3010 	ldr	r3, [fp, #-16]
     4f0:	e5d33000 	ldrb	r3, [r3]
     4f4:	e353002f 	cmp	r3, #47	@ 0x2f
     4f8:	9a000003 	bls	50c <atoi+0x70>
     4fc:	e51b3010 	ldr	r3, [fp, #-16]
     500:	e5d33000 	ldrb	r3, [r3]
     504:	e3530039 	cmp	r3, #57	@ 0x39
     508:	9affffea 	bls	4b8 <atoi+0x1c>
     50c:	e51b3008 	ldr	r3, [fp, #-8]
     510:	e1a00003 	mov	r0, r3
     514:	e28bd000 	add	sp, fp, #0
     518:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <memmove>:
     520:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     524:	e28db000 	add	fp, sp, #0
     528:	e24dd01c 	sub	sp, sp, #28
     52c:	e50b0010 	str	r0, [fp, #-16]
     530:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     534:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e50b3008 	str	r3, [fp, #-8]
     540:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     544:	e50b300c 	str	r3, [fp, #-12]
     548:	ea000007 	b	56c <memmove+0x4c>
     54c:	e51b200c 	ldr	r2, [fp, #-12]
     550:	e2823001 	add	r3, r2, #1
     554:	e50b300c 	str	r3, [fp, #-12]
     558:	e51b3008 	ldr	r3, [fp, #-8]
     55c:	e2831001 	add	r1, r3, #1
     560:	e50b1008 	str	r1, [fp, #-8]
     564:	e5d22000 	ldrb	r2, [r2]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     570:	e2432001 	sub	r2, r3, #1
     574:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     578:	e3530000 	cmp	r3, #0
     57c:	cafffff2 	bgt	54c <memmove+0x2c>
     580:	e51b3010 	ldr	r3, [fp, #-16]
     584:	e1a00003 	mov	r0, r3
     588:	e28bd000 	add	sp, fp, #0
     58c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <fork>:
     594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     598:	e1a04003 	mov	r4, r3
     59c:	e1a03002 	mov	r3, r2
     5a0:	e1a02001 	mov	r2, r1
     5a4:	e1a01000 	mov	r1, r0
     5a8:	e3a00001 	mov	r0, #1
     5ac:	ef000000 	svc	0x00000000
     5b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <exit>:
     5b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5bc:	e1a04003 	mov	r4, r3
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a02001 	mov	r2, r1
     5c8:	e1a01000 	mov	r1, r0
     5cc:	e3a00002 	mov	r0, #2
     5d0:	ef000000 	svc	0x00000000
     5d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <wait>:
     5dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e0:	e1a04003 	mov	r4, r3
     5e4:	e1a03002 	mov	r3, r2
     5e8:	e1a02001 	mov	r2, r1
     5ec:	e1a01000 	mov	r1, r0
     5f0:	e3a00003 	mov	r0, #3
     5f4:	ef000000 	svc	0x00000000
     5f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <pipe>:
     600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     604:	e1a04003 	mov	r4, r3
     608:	e1a03002 	mov	r3, r2
     60c:	e1a02001 	mov	r2, r1
     610:	e1a01000 	mov	r1, r0
     614:	e3a00004 	mov	r0, #4
     618:	ef000000 	svc	0x00000000
     61c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <read>:
     624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     628:	e1a04003 	mov	r4, r3
     62c:	e1a03002 	mov	r3, r2
     630:	e1a02001 	mov	r2, r1
     634:	e1a01000 	mov	r1, r0
     638:	e3a00005 	mov	r0, #5
     63c:	ef000000 	svc	0x00000000
     640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <write>:
     648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a00010 	mov	r0, #16
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <close>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a00015 	mov	r0, #21
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <kill>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00006 	mov	r0, #6
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <exec>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00007 	mov	r0, #7
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <open>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a0000f 	mov	r0, #15
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <mknod>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00011 	mov	r0, #17
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <unlink>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00012 	mov	r0, #18
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <fstat>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00008 	mov	r0, #8
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <link>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a00013 	mov	r0, #19
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <mkdir>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a00014 	mov	r0, #20
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <chdir>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a00009 	mov	r0, #9
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <dup>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000a 	mov	r0, #10
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <getpid>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a0000b 	mov	r0, #11
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <sbrk>:
     81c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     820:	e1a04003 	mov	r4, r3
     824:	e1a03002 	mov	r3, r2
     828:	e1a02001 	mov	r2, r1
     82c:	e1a01000 	mov	r1, r0
     830:	e3a0000c 	mov	r0, #12
     834:	ef000000 	svc	0x00000000
     838:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     83c:	e12fff1e 	bx	lr

00000840 <sleep>:
     840:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     844:	e1a04003 	mov	r4, r3
     848:	e1a03002 	mov	r3, r2
     84c:	e1a02001 	mov	r2, r1
     850:	e1a01000 	mov	r1, r0
     854:	e3a0000d 	mov	r0, #13
     858:	ef000000 	svc	0x00000000
     85c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     860:	e12fff1e 	bx	lr

00000864 <uptime>:
     864:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     868:	e1a04003 	mov	r4, r3
     86c:	e1a03002 	mov	r3, r2
     870:	e1a02001 	mov	r2, r1
     874:	e1a01000 	mov	r1, r0
     878:	e3a0000e 	mov	r0, #14
     87c:	ef000000 	svc	0x00000000
     880:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     884:	e12fff1e 	bx	lr

00000888 <putc>:
     888:	e92d4800 	push	{fp, lr}
     88c:	e28db004 	add	fp, sp, #4
     890:	e24dd008 	sub	sp, sp, #8
     894:	e50b0008 	str	r0, [fp, #-8]
     898:	e1a03001 	mov	r3, r1
     89c:	e54b3009 	strb	r3, [fp, #-9]
     8a0:	e24b3009 	sub	r3, fp, #9
     8a4:	e3a02001 	mov	r2, #1
     8a8:	e1a01003 	mov	r1, r3
     8ac:	e51b0008 	ldr	r0, [fp, #-8]
     8b0:	ebffff64 	bl	648 <write>
     8b4:	e1a00000 	nop			@ (mov r0, r0)
     8b8:	e24bd004 	sub	sp, fp, #4
     8bc:	e8bd8800 	pop	{fp, pc}

000008c0 <printint>:
     8c0:	e92d4800 	push	{fp, lr}
     8c4:	e28db004 	add	fp, sp, #4
     8c8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8cc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8d0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8d4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8d8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8dc:	e3a03000 	mov	r3, #0
     8e0:	e50b300c 	str	r3, [fp, #-12]
     8e4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8e8:	e3530000 	cmp	r3, #0
     8ec:	0a000008 	beq	914 <printint+0x54>
     8f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8f4:	e3530000 	cmp	r3, #0
     8f8:	aa000005 	bge	914 <printint+0x54>
     8fc:	e3a03001 	mov	r3, #1
     900:	e50b300c 	str	r3, [fp, #-12]
     904:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     908:	e2633000 	rsb	r3, r3, #0
     90c:	e50b3010 	str	r3, [fp, #-16]
     910:	ea000001 	b	91c <printint+0x5c>
     914:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     918:	e50b3010 	str	r3, [fp, #-16]
     91c:	e3a03000 	mov	r3, #0
     920:	e50b3008 	str	r3, [fp, #-8]
     924:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     928:	e51b3010 	ldr	r3, [fp, #-16]
     92c:	e1a01002 	mov	r1, r2
     930:	e1a00003 	mov	r0, r3
     934:	eb0001d5 	bl	1090 <__aeabi_uidivmod>
     938:	e1a03001 	mov	r3, r1
     93c:	e1a01003 	mov	r1, r3
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e2832001 	add	r2, r3, #1
     948:	e50b2008 	str	r2, [fp, #-8]
     94c:	e59f20a0 	ldr	r2, [pc, #160]	@ 9f4 <printint+0x134>
     950:	e7d22001 	ldrb	r2, [r2, r1]
     954:	e2433004 	sub	r3, r3, #4
     958:	e083300b 	add	r3, r3, fp
     95c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     960:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     964:	e1a01003 	mov	r1, r3
     968:	e51b0010 	ldr	r0, [fp, #-16]
     96c:	eb00018a 	bl	f9c <__udivsi3>
     970:	e1a03000 	mov	r3, r0
     974:	e50b3010 	str	r3, [fp, #-16]
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e3530000 	cmp	r3, #0
     980:	1affffe7 	bne	924 <printint+0x64>
     984:	e51b300c 	ldr	r3, [fp, #-12]
     988:	e3530000 	cmp	r3, #0
     98c:	0a00000e 	beq	9cc <printint+0x10c>
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e2832001 	add	r2, r3, #1
     998:	e50b2008 	str	r2, [fp, #-8]
     99c:	e2433004 	sub	r3, r3, #4
     9a0:	e083300b 	add	r3, r3, fp
     9a4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9a8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9ac:	ea000006 	b	9cc <printint+0x10c>
     9b0:	e24b2020 	sub	r2, fp, #32
     9b4:	e51b3008 	ldr	r3, [fp, #-8]
     9b8:	e0823003 	add	r3, r2, r3
     9bc:	e5d33000 	ldrb	r3, [r3]
     9c0:	e1a01003 	mov	r1, r3
     9c4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9c8:	ebffffae 	bl	888 <putc>
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e2433001 	sub	r3, r3, #1
     9d4:	e50b3008 	str	r3, [fp, #-8]
     9d8:	e51b3008 	ldr	r3, [fp, #-8]
     9dc:	e3530000 	cmp	r3, #0
     9e0:	aafffff2 	bge	9b0 <printint+0xf0>
     9e4:	e1a00000 	nop			@ (mov r0, r0)
     9e8:	e1a00000 	nop			@ (mov r0, r0)
     9ec:	e24bd004 	sub	sp, fp, #4
     9f0:	e8bd8800 	pop	{fp, pc}
     9f4:	0000115c 	.word	0x0000115c

000009f8 <printf>:
     9f8:	e92d000e 	push	{r1, r2, r3}
     9fc:	e92d4800 	push	{fp, lr}
     a00:	e28db004 	add	fp, sp, #4
     a04:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a08:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a0c:	e3a03000 	mov	r3, #0
     a10:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a14:	e28b3008 	add	r3, fp, #8
     a18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a1c:	e3a03000 	mov	r3, #0
     a20:	e50b3010 	str	r3, [fp, #-16]
     a24:	ea000074 	b	bfc <printf+0x204>
     a28:	e59b2004 	ldr	r2, [fp, #4]
     a2c:	e51b3010 	ldr	r3, [fp, #-16]
     a30:	e0823003 	add	r3, r2, r3
     a34:	e5d33000 	ldrb	r3, [r3]
     a38:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a40:	e3530000 	cmp	r3, #0
     a44:	1a00000b 	bne	a78 <printf+0x80>
     a48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a4c:	e3530025 	cmp	r3, #37	@ 0x25
     a50:	1a000002 	bne	a60 <printf+0x68>
     a54:	e3a03025 	mov	r3, #37	@ 0x25
     a58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a5c:	ea000063 	b	bf0 <printf+0x1f8>
     a60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a64:	e6ef3073 	uxtb	r3, r3
     a68:	e1a01003 	mov	r1, r3
     a6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a70:	ebffff84 	bl	888 <putc>
     a74:	ea00005d 	b	bf0 <printf+0x1f8>
     a78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a7c:	e3530025 	cmp	r3, #37	@ 0x25
     a80:	1a00005a 	bne	bf0 <printf+0x1f8>
     a84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a88:	e3530064 	cmp	r3, #100	@ 0x64
     a8c:	1a00000a 	bne	abc <printf+0xc4>
     a90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a94:	e5933000 	ldr	r3, [r3]
     a98:	e1a01003 	mov	r1, r3
     a9c:	e3a03001 	mov	r3, #1
     aa0:	e3a0200a 	mov	r2, #10
     aa4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aa8:	ebffff84 	bl	8c0 <printint>
     aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	e2833004 	add	r3, r3, #4
     ab4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab8:	ea00004a 	b	be8 <printf+0x1f0>
     abc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac0:	e3530078 	cmp	r3, #120	@ 0x78
     ac4:	0a000002 	beq	ad4 <printf+0xdc>
     ac8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     acc:	e3530070 	cmp	r3, #112	@ 0x70
     ad0:	1a00000a 	bne	b00 <printf+0x108>
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	e5933000 	ldr	r3, [r3]
     adc:	e1a01003 	mov	r1, r3
     ae0:	e3a03000 	mov	r3, #0
     ae4:	e3a02010 	mov	r2, #16
     ae8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aec:	ebffff73 	bl	8c0 <printint>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e2833004 	add	r3, r3, #4
     af8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     afc:	ea000039 	b	be8 <printf+0x1f0>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e3530073 	cmp	r3, #115	@ 0x73
     b08:	1a000018 	bne	b70 <printf+0x178>
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b10:	e5933000 	ldr	r3, [r3]
     b14:	e50b300c 	str	r3, [fp, #-12]
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e2833004 	add	r3, r3, #4
     b20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b24:	e51b300c 	ldr	r3, [fp, #-12]
     b28:	e3530000 	cmp	r3, #0
     b2c:	1a00000a 	bne	b5c <printf+0x164>
     b30:	e59f30f4 	ldr	r3, [pc, #244]	@ c2c <printf+0x234>
     b34:	e50b300c 	str	r3, [fp, #-12]
     b38:	ea000007 	b	b5c <printf+0x164>
     b3c:	e51b300c 	ldr	r3, [fp, #-12]
     b40:	e5d33000 	ldrb	r3, [r3]
     b44:	e1a01003 	mov	r1, r3
     b48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b4c:	ebffff4d 	bl	888 <putc>
     b50:	e51b300c 	ldr	r3, [fp, #-12]
     b54:	e2833001 	add	r3, r3, #1
     b58:	e50b300c 	str	r3, [fp, #-12]
     b5c:	e51b300c 	ldr	r3, [fp, #-12]
     b60:	e5d33000 	ldrb	r3, [r3]
     b64:	e3530000 	cmp	r3, #0
     b68:	1afffff3 	bne	b3c <printf+0x144>
     b6c:	ea00001d 	b	be8 <printf+0x1f0>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e3530063 	cmp	r3, #99	@ 0x63
     b78:	1a000009 	bne	ba4 <printf+0x1ac>
     b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b80:	e5933000 	ldr	r3, [r3]
     b84:	e6ef3073 	uxtb	r3, r3
     b88:	e1a01003 	mov	r1, r3
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff3c 	bl	888 <putc>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	ea000010 	b	be8 <printf+0x1f0>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e3530025 	cmp	r3, #37	@ 0x25
     bac:	1a000005 	bne	bc8 <printf+0x1d0>
     bb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb4:	e6ef3073 	uxtb	r3, r3
     bb8:	e1a01003 	mov	r1, r3
     bbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc0:	ebffff30 	bl	888 <putc>
     bc4:	ea000007 	b	be8 <printf+0x1f0>
     bc8:	e3a01025 	mov	r1, #37	@ 0x25
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff2c 	bl	888 <putc>
     bd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd8:	e6ef3073 	uxtb	r3, r3
     bdc:	e1a01003 	mov	r1, r3
     be0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be4:	ebffff27 	bl	888 <putc>
     be8:	e3a03000 	mov	r3, #0
     bec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bf0:	e51b3010 	ldr	r3, [fp, #-16]
     bf4:	e2833001 	add	r3, r3, #1
     bf8:	e50b3010 	str	r3, [fp, #-16]
     bfc:	e59b2004 	ldr	r2, [fp, #4]
     c00:	e51b3010 	ldr	r3, [fp, #-16]
     c04:	e0823003 	add	r3, r2, r3
     c08:	e5d33000 	ldrb	r3, [r3]
     c0c:	e3530000 	cmp	r3, #0
     c10:	1affff84 	bne	a28 <printf+0x30>
     c14:	e1a00000 	nop			@ (mov r0, r0)
     c18:	e1a00000 	nop			@ (mov r0, r0)
     c1c:	e24bd004 	sub	sp, fp, #4
     c20:	e8bd4800 	pop	{fp, lr}
     c24:	e28dd00c 	add	sp, sp, #12
     c28:	e12fff1e 	bx	lr
     c2c:	00001154 	.word	0x00001154

00000c30 <free>:
     c30:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c34:	e28db000 	add	fp, sp, #0
     c38:	e24dd014 	sub	sp, sp, #20
     c3c:	e50b0010 	str	r0, [fp, #-16]
     c40:	e51b3010 	ldr	r3, [fp, #-16]
     c44:	e2433008 	sub	r3, r3, #8
     c48:	e50b300c 	str	r3, [fp, #-12]
     c4c:	e59f3154 	ldr	r3, [pc, #340]	@ da8 <free+0x178>
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e50b3008 	str	r3, [fp, #-8]
     c58:	ea000010 	b	ca0 <free+0x70>
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e51b2008 	ldr	r2, [fp, #-8]
     c68:	e1520003 	cmp	r2, r3
     c6c:	3a000008 	bcc	c94 <free+0x64>
     c70:	e51b200c 	ldr	r2, [fp, #-12]
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e1520003 	cmp	r2, r3
     c7c:	8a000010 	bhi	cc4 <free+0x94>
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e5933000 	ldr	r3, [r3]
     c88:	e51b200c 	ldr	r2, [fp, #-12]
     c8c:	e1520003 	cmp	r2, r3
     c90:	3a00000b 	bcc	cc4 <free+0x94>
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e50b3008 	str	r3, [fp, #-8]
     ca0:	e51b200c 	ldr	r2, [fp, #-12]
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e1520003 	cmp	r2, r3
     cac:	9affffea 	bls	c5c <free+0x2c>
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e5933000 	ldr	r3, [r3]
     cb8:	e51b200c 	ldr	r2, [fp, #-12]
     cbc:	e1520003 	cmp	r2, r3
     cc0:	2affffe5 	bcs	c5c <free+0x2c>
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5933004 	ldr	r3, [r3, #4]
     ccc:	e1a03183 	lsl	r3, r3, #3
     cd0:	e51b200c 	ldr	r2, [fp, #-12]
     cd4:	e0822003 	add	r2, r2, r3
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e1520003 	cmp	r2, r3
     ce4:	1a00000d 	bne	d20 <free+0xf0>
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5932004 	ldr	r2, [r3, #4]
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5933000 	ldr	r3, [r3]
     cf8:	e5933004 	ldr	r3, [r3, #4]
     cfc:	e0822003 	add	r2, r2, r3
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5832004 	str	r2, [r3, #4]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5933000 	ldr	r3, [r3]
     d10:	e5932000 	ldr	r2, [r3]
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e5832000 	str	r2, [r3]
     d1c:	ea000003 	b	d30 <free+0x100>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5932000 	ldr	r2, [r3]
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5832000 	str	r2, [r3]
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5933004 	ldr	r3, [r3, #4]
     d38:	e1a03183 	lsl	r3, r3, #3
     d3c:	e51b2008 	ldr	r2, [fp, #-8]
     d40:	e0823003 	add	r3, r2, r3
     d44:	e51b200c 	ldr	r2, [fp, #-12]
     d48:	e1520003 	cmp	r2, r3
     d4c:	1a00000b 	bne	d80 <free+0x150>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5932004 	ldr	r2, [r3, #4]
     d58:	e51b300c 	ldr	r3, [fp, #-12]
     d5c:	e5933004 	ldr	r3, [r3, #4]
     d60:	e0822003 	add	r2, r2, r3
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5832004 	str	r2, [r3, #4]
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e5932000 	ldr	r2, [r3]
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5832000 	str	r2, [r3]
     d7c:	ea000002 	b	d8c <free+0x15c>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e5832000 	str	r2, [r3]
     d8c:	e59f2014 	ldr	r2, [pc, #20]	@ da8 <free+0x178>
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5823000 	str	r3, [r2]
     d98:	e1a00000 	nop			@ (mov r0, r0)
     d9c:	e28bd000 	add	sp, fp, #0
     da0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     da4:	e12fff1e 	bx	lr
     da8:	00001178 	.word	0x00001178

00000dac <morecore>:
     dac:	e92d4800 	push	{fp, lr}
     db0:	e28db004 	add	fp, sp, #4
     db4:	e24dd010 	sub	sp, sp, #16
     db8:	e50b0010 	str	r0, [fp, #-16]
     dbc:	e51b3010 	ldr	r3, [fp, #-16]
     dc0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     dc4:	2a000001 	bcs	dd0 <morecore+0x24>
     dc8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     dcc:	e50b3010 	str	r3, [fp, #-16]
     dd0:	e51b3010 	ldr	r3, [fp, #-16]
     dd4:	e1a03183 	lsl	r3, r3, #3
     dd8:	e1a00003 	mov	r0, r3
     ddc:	ebfffe8e 	bl	81c <sbrk>
     de0:	e50b0008 	str	r0, [fp, #-8]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e3730001 	cmn	r3, #1
     dec:	1a000001 	bne	df8 <morecore+0x4c>
     df0:	e3a03000 	mov	r3, #0
     df4:	ea00000a 	b	e24 <morecore+0x78>
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e50b300c 	str	r3, [fp, #-12]
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e51b2010 	ldr	r2, [fp, #-16]
     e08:	e5832004 	str	r2, [r3, #4]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e2833008 	add	r3, r3, #8
     e14:	e1a00003 	mov	r0, r3
     e18:	ebffff84 	bl	c30 <free>
     e1c:	e59f300c 	ldr	r3, [pc, #12]	@ e30 <morecore+0x84>
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e1a00003 	mov	r0, r3
     e28:	e24bd004 	sub	sp, fp, #4
     e2c:	e8bd8800 	pop	{fp, pc}
     e30:	00001178 	.word	0x00001178

00000e34 <malloc>:
     e34:	e92d4800 	push	{fp, lr}
     e38:	e28db004 	add	fp, sp, #4
     e3c:	e24dd018 	sub	sp, sp, #24
     e40:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e48:	e2833007 	add	r3, r3, #7
     e4c:	e1a031a3 	lsr	r3, r3, #3
     e50:	e2833001 	add	r3, r3, #1
     e54:	e50b3010 	str	r3, [fp, #-16]
     e58:	e59f3134 	ldr	r3, [pc, #308]	@ f94 <malloc+0x160>
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e50b300c 	str	r3, [fp, #-12]
     e64:	e51b300c 	ldr	r3, [fp, #-12]
     e68:	e3530000 	cmp	r3, #0
     e6c:	1a00000b 	bne	ea0 <malloc+0x6c>
     e70:	e59f3120 	ldr	r3, [pc, #288]	@ f98 <malloc+0x164>
     e74:	e50b300c 	str	r3, [fp, #-12]
     e78:	e59f2114 	ldr	r2, [pc, #276]	@ f94 <malloc+0x160>
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e5823000 	str	r3, [r2]
     e84:	e59f3108 	ldr	r3, [pc, #264]	@ f94 <malloc+0x160>
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e59f2104 	ldr	r2, [pc, #260]	@ f98 <malloc+0x164>
     e90:	e5823000 	str	r3, [r2]
     e94:	e59f30fc 	ldr	r3, [pc, #252]	@ f98 <malloc+0x164>
     e98:	e3a02000 	mov	r2, #0
     e9c:	e5832004 	str	r2, [r3, #4]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e5933000 	ldr	r3, [r3]
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5933004 	ldr	r3, [r3, #4]
     eb4:	e51b2010 	ldr	r2, [fp, #-16]
     eb8:	e1520003 	cmp	r2, r3
     ebc:	8a00001e 	bhi	f3c <malloc+0x108>
     ec0:	e51b3008 	ldr	r3, [fp, #-8]
     ec4:	e5933004 	ldr	r3, [r3, #4]
     ec8:	e51b2010 	ldr	r2, [fp, #-16]
     ecc:	e1520003 	cmp	r2, r3
     ed0:	1a000004 	bne	ee8 <malloc+0xb4>
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5932000 	ldr	r2, [r3]
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5832000 	str	r2, [r3]
     ee4:	ea00000e 	b	f24 <malloc+0xf0>
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5932004 	ldr	r2, [r3, #4]
     ef0:	e51b3010 	ldr	r3, [fp, #-16]
     ef4:	e0422003 	sub	r2, r2, r3
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5832004 	str	r2, [r3, #4]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e5933004 	ldr	r3, [r3, #4]
     f08:	e1a03183 	lsl	r3, r3, #3
     f0c:	e51b2008 	ldr	r2, [fp, #-8]
     f10:	e0823003 	add	r3, r2, r3
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e51b2010 	ldr	r2, [fp, #-16]
     f20:	e5832004 	str	r2, [r3, #4]
     f24:	e59f2068 	ldr	r2, [pc, #104]	@ f94 <malloc+0x160>
     f28:	e51b300c 	ldr	r3, [fp, #-12]
     f2c:	e5823000 	str	r3, [r2]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e2833008 	add	r3, r3, #8
     f38:	ea000012 	b	f88 <malloc+0x154>
     f3c:	e59f3050 	ldr	r3, [pc, #80]	@ f94 <malloc+0x160>
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e51b2008 	ldr	r2, [fp, #-8]
     f48:	e1520003 	cmp	r2, r3
     f4c:	1a000007 	bne	f70 <malloc+0x13c>
     f50:	e51b0010 	ldr	r0, [fp, #-16]
     f54:	ebffff94 	bl	dac <morecore>
     f58:	e50b0008 	str	r0, [fp, #-8]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e3530000 	cmp	r3, #0
     f64:	1a000001 	bne	f70 <malloc+0x13c>
     f68:	e3a03000 	mov	r3, #0
     f6c:	ea000005 	b	f88 <malloc+0x154>
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e50b300c 	str	r3, [fp, #-12]
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e50b3008 	str	r3, [fp, #-8]
     f84:	eaffffc8 	b	eac <malloc+0x78>
     f88:	e1a00003 	mov	r0, r3
     f8c:	e24bd004 	sub	sp, fp, #4
     f90:	e8bd8800 	pop	{fp, pc}
     f94:	00001178 	.word	0x00001178
     f98:	00001170 	.word	0x00001170

00000f9c <__udivsi3>:
     f9c:	e2512001 	subs	r2, r1, #1
     fa0:	012fff1e 	bxeq	lr
     fa4:	3a000036 	bcc	1084 <__udivsi3+0xe8>
     fa8:	e1500001 	cmp	r0, r1
     fac:	9a000022 	bls	103c <__udivsi3+0xa0>
     fb0:	e1110002 	tst	r1, r2
     fb4:	0a000023 	beq	1048 <__udivsi3+0xac>
     fb8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fbc:	01a01181 	lsleq	r1, r1, #3
     fc0:	03a03008 	moveq	r3, #8
     fc4:	13a03001 	movne	r3, #1
     fc8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fcc:	31510000 	cmpcc	r1, r0
     fd0:	31a01201 	lslcc	r1, r1, #4
     fd4:	31a03203 	lslcc	r3, r3, #4
     fd8:	3afffffa 	bcc	fc8 <__udivsi3+0x2c>
     fdc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fe0:	31510000 	cmpcc	r1, r0
     fe4:	31a01081 	lslcc	r1, r1, #1
     fe8:	31a03083 	lslcc	r3, r3, #1
     fec:	3afffffa 	bcc	fdc <__udivsi3+0x40>
     ff0:	e3a02000 	mov	r2, #0
     ff4:	e1500001 	cmp	r0, r1
     ff8:	20400001 	subcs	r0, r0, r1
     ffc:	21822003 	orrcs	r2, r2, r3
    1000:	e15000a1 	cmp	r0, r1, lsr #1
    1004:	204000a1 	subcs	r0, r0, r1, lsr #1
    1008:	218220a3 	orrcs	r2, r2, r3, lsr #1
    100c:	e1500121 	cmp	r0, r1, lsr #2
    1010:	20400121 	subcs	r0, r0, r1, lsr #2
    1014:	21822123 	orrcs	r2, r2, r3, lsr #2
    1018:	e15001a1 	cmp	r0, r1, lsr #3
    101c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1020:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1024:	e3500000 	cmp	r0, #0
    1028:	11b03223 	lsrsne	r3, r3, #4
    102c:	11a01221 	lsrne	r1, r1, #4
    1030:	1affffef 	bne	ff4 <__udivsi3+0x58>
    1034:	e1a00002 	mov	r0, r2
    1038:	e12fff1e 	bx	lr
    103c:	03a00001 	moveq	r0, #1
    1040:	13a00000 	movne	r0, #0
    1044:	e12fff1e 	bx	lr
    1048:	e3510801 	cmp	r1, #65536	@ 0x10000
    104c:	21a01821 	lsrcs	r1, r1, #16
    1050:	23a02010 	movcs	r2, #16
    1054:	33a02000 	movcc	r2, #0
    1058:	e3510c01 	cmp	r1, #256	@ 0x100
    105c:	21a01421 	lsrcs	r1, r1, #8
    1060:	22822008 	addcs	r2, r2, #8
    1064:	e3510010 	cmp	r1, #16
    1068:	21a01221 	lsrcs	r1, r1, #4
    106c:	22822004 	addcs	r2, r2, #4
    1070:	e3510004 	cmp	r1, #4
    1074:	82822003 	addhi	r2, r2, #3
    1078:	908220a1 	addls	r2, r2, r1, lsr #1
    107c:	e1a00230 	lsr	r0, r0, r2
    1080:	e12fff1e 	bx	lr
    1084:	e3500000 	cmp	r0, #0
    1088:	13e00000 	mvnne	r0, #0
    108c:	ea000007 	b	10b0 <__aeabi_idiv0>

00001090 <__aeabi_uidivmod>:
    1090:	e3510000 	cmp	r1, #0
    1094:	0afffffa 	beq	1084 <__udivsi3+0xe8>
    1098:	e92d4003 	push	{r0, r1, lr}
    109c:	ebffffbe 	bl	f9c <__udivsi3>
    10a0:	e8bd4006 	pop	{r1, r2, lr}
    10a4:	e0030092 	mul	r3, r2, r0
    10a8:	e0411003 	sub	r1, r1, r3
    10ac:	e12fff1e 	bx	lr

000010b0 <__aeabi_idiv0>:
    10b0:	e12fff1e 	bx	lr
