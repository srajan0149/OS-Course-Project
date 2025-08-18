
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	eb000226 	bl	8b4 <uptime>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e59f20d8 	ldr	r2, [pc, #216]	@ 100 <main+0x100>
      24:	e0c21392 	smull	r1, r2, r2, r3
      28:	e1a02142 	asr	r2, r2, #2
      2c:	e1a03fc3 	asr	r3, r3, #31
      30:	e0423003 	sub	r3, r2, r3
      34:	e50b300c 	str	r3, [fp, #-12]
      38:	e51b300c 	ldr	r3, [fp, #-12]
      3c:	e59f20c0 	ldr	r2, [pc, #192]	@ 104 <main+0x104>
      40:	e0c21392 	smull	r1, r2, r2, r3
      44:	e0822003 	add	r2, r2, r3
      48:	e1a022c2 	asr	r2, r2, #5
      4c:	e1a03fc3 	asr	r3, r3, #31
      50:	e0423003 	sub	r3, r2, r3
      54:	e50b3010 	str	r3, [fp, #-16]
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e59f20a0 	ldr	r2, [pc, #160]	@ 104 <main+0x104>
      60:	e0c21392 	smull	r1, r2, r2, r3
      64:	e0822003 	add	r2, r2, r3
      68:	e1a022c2 	asr	r2, r2, #5
      6c:	e1a03fc3 	asr	r3, r3, #31
      70:	e0423003 	sub	r3, r2, r3
      74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      78:	e51b2010 	ldr	r2, [fp, #-16]
      7c:	e59f3080 	ldr	r3, [pc, #128]	@ 104 <main+0x104>
      80:	e0c31293 	smull	r1, r3, r3, r2
      84:	e0833002 	add	r3, r3, r2
      88:	e1a012c3 	asr	r1, r3, #5
      8c:	e1a03fc2 	asr	r3, r2, #31
      90:	e0411003 	sub	r1, r1, r3
      94:	e1a03001 	mov	r3, r1
      98:	e1a03203 	lsl	r3, r3, #4
      9c:	e0433001 	sub	r3, r3, r1
      a0:	e1a03103 	lsl	r3, r3, #2
      a4:	e0423003 	sub	r3, r2, r3
      a8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e51b200c 	ldr	r2, [fp, #-12]
      b0:	e59f304c 	ldr	r3, [pc, #76]	@ 104 <main+0x104>
      b4:	e0c31293 	smull	r1, r3, r3, r2
      b8:	e0833002 	add	r3, r3, r2
      bc:	e1a012c3 	asr	r1, r3, #5
      c0:	e1a03fc2 	asr	r3, r2, #31
      c4:	e0411003 	sub	r1, r1, r3
      c8:	e1a03001 	mov	r3, r1
      cc:	e1a03203 	lsl	r3, r3, #4
      d0:	e0433001 	sub	r3, r3, r1
      d4:	e1a03103 	lsl	r3, r3, #2
      d8:	e0423003 	sub	r3, r2, r3
      dc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
      e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      e4:	e58d3000 	str	r3, [sp]
      e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      f0:	e59f1010 	ldr	r1, [pc, #16]	@ 108 <main+0x108>
      f4:	e3a00001 	mov	r0, #1
      f8:	eb000252 	bl	a48 <printf>
      fc:	eb000141 	bl	608 <exit>
     100:	66666667 	.word	0x66666667
     104:	88888889 	.word	0x88888889
     108:	00001104 	.word	0x00001104

0000010c <strcpy>:
     10c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     110:	e28db000 	add	fp, sp, #0
     114:	e24dd014 	sub	sp, sp, #20
     118:	e50b0010 	str	r0, [fp, #-16]
     11c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     120:	e51b3010 	ldr	r3, [fp, #-16]
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	e1a00000 	nop			@ (mov r0, r0)
     12c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     130:	e2823001 	add	r3, r2, #1
     134:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     138:	e51b3010 	ldr	r3, [fp, #-16]
     13c:	e2831001 	add	r1, r3, #1
     140:	e50b1010 	str	r1, [fp, #-16]
     144:	e5d22000 	ldrb	r2, [r2]
     148:	e5c32000 	strb	r2, [r3]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e3530000 	cmp	r3, #0
     154:	1afffff4 	bne	12c <strcpy+0x20>
     158:	e51b3008 	ldr	r3, [fp, #-8]
     15c:	e1a00003 	mov	r0, r3
     160:	e28bd000 	add	sp, fp, #0
     164:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     168:	e12fff1e 	bx	lr

0000016c <strcmp>:
     16c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     170:	e28db000 	add	fp, sp, #0
     174:	e24dd00c 	sub	sp, sp, #12
     178:	e50b0008 	str	r0, [fp, #-8]
     17c:	e50b100c 	str	r1, [fp, #-12]
     180:	ea000005 	b	19c <strcmp+0x30>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b300c 	ldr	r3, [fp, #-12]
     194:	e2833001 	add	r3, r3, #1
     198:	e50b300c 	str	r3, [fp, #-12]
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e5d33000 	ldrb	r3, [r3]
     1a4:	e3530000 	cmp	r3, #0
     1a8:	0a000005 	beq	1c4 <strcmp+0x58>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e5d32000 	ldrb	r2, [r3]
     1b4:	e51b300c 	ldr	r3, [fp, #-12]
     1b8:	e5d33000 	ldrb	r3, [r3]
     1bc:	e1520003 	cmp	r2, r3
     1c0:	0affffef 	beq	184 <strcmp+0x18>
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e1a02003 	mov	r2, r3
     1d0:	e51b300c 	ldr	r3, [fp, #-12]
     1d4:	e5d33000 	ldrb	r3, [r3]
     1d8:	e0423003 	sub	r3, r2, r3
     1dc:	e1a00003 	mov	r0, r3
     1e0:	e28bd000 	add	sp, fp, #0
     1e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e8:	e12fff1e 	bx	lr

000001ec <strlen>:
     1ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1f0:	e28db000 	add	fp, sp, #0
     1f4:	e24dd014 	sub	sp, sp, #20
     1f8:	e50b0010 	str	r0, [fp, #-16]
     1fc:	e3a03000 	mov	r3, #0
     200:	e50b3008 	str	r3, [fp, #-8]
     204:	ea000002 	b	214 <strlen+0x28>
     208:	e51b3008 	ldr	r3, [fp, #-8]
     20c:	e2833001 	add	r3, r3, #1
     210:	e50b3008 	str	r3, [fp, #-8]
     214:	e51b3008 	ldr	r3, [fp, #-8]
     218:	e51b2010 	ldr	r2, [fp, #-16]
     21c:	e0823003 	add	r3, r2, r3
     220:	e5d33000 	ldrb	r3, [r3]
     224:	e3530000 	cmp	r3, #0
     228:	1afffff6 	bne	208 <strlen+0x1c>
     22c:	e51b3008 	ldr	r3, [fp, #-8]
     230:	e1a00003 	mov	r0, r3
     234:	e28bd000 	add	sp, fp, #0
     238:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     23c:	e12fff1e 	bx	lr

00000240 <memset>:
     240:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     244:	e28db000 	add	fp, sp, #0
     248:	e24dd024 	sub	sp, sp, #36	@ 0x24
     24c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     250:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     254:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     258:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     264:	e54b300d 	strb	r3, [fp, #-13]
     268:	e55b200d 	ldrb	r2, [fp, #-13]
     26c:	e1a03002 	mov	r3, r2
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e0833002 	add	r3, r3, r2
     278:	e1a03803 	lsl	r3, r3, #16
     27c:	e1a02003 	mov	r2, r3
     280:	e55b300d 	ldrb	r3, [fp, #-13]
     284:	e1a03403 	lsl	r3, r3, #8
     288:	e1822003 	orr	r2, r2, r3
     28c:	e55b300d 	ldrb	r3, [fp, #-13]
     290:	e1823003 	orr	r3, r2, r3
     294:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     298:	ea000008 	b	2c0 <memset+0x80>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e55b200d 	ldrb	r2, [fp, #-13]
     2a4:	e5c32000 	strb	r2, [r3]
     2a8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2ac:	e2433001 	sub	r3, r3, #1
     2b0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e51b3008 	ldr	r3, [fp, #-8]
     2b8:	e2833001 	add	r3, r3, #1
     2bc:	e50b3008 	str	r3, [fp, #-8]
     2c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c4:	e3530000 	cmp	r3, #0
     2c8:	0a000003 	beq	2dc <memset+0x9c>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e2033003 	and	r3, r3, #3
     2d4:	e3530000 	cmp	r3, #0
     2d8:	1affffef 	bne	29c <memset+0x5c>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	e50b300c 	str	r3, [fp, #-12]
     2e4:	ea000008 	b	30c <memset+0xcc>
     2e8:	e51b300c 	ldr	r3, [fp, #-12]
     2ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2f0:	e5832000 	str	r2, [r3]
     2f4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f8:	e2433004 	sub	r3, r3, #4
     2fc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     300:	e51b300c 	ldr	r3, [fp, #-12]
     304:	e2833004 	add	r3, r3, #4
     308:	e50b300c 	str	r3, [fp, #-12]
     30c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     310:	e3530003 	cmp	r3, #3
     314:	8afffff3 	bhi	2e8 <memset+0xa8>
     318:	e51b300c 	ldr	r3, [fp, #-12]
     31c:	e50b3008 	str	r3, [fp, #-8]
     320:	ea000008 	b	348 <memset+0x108>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e55b200d 	ldrb	r2, [fp, #-13]
     32c:	e5c32000 	strb	r2, [r3]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e2433001 	sub	r3, r3, #1
     338:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2833001 	add	r3, r3, #1
     344:	e50b3008 	str	r3, [fp, #-8]
     348:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     34c:	e3530000 	cmp	r3, #0
     350:	1afffff3 	bne	324 <memset+0xe4>
     354:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     358:	e1a00003 	mov	r0, r3
     35c:	e28bd000 	add	sp, fp, #0
     360:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     364:	e12fff1e 	bx	lr

00000368 <strchr>:
     368:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     36c:	e28db000 	add	fp, sp, #0
     370:	e24dd00c 	sub	sp, sp, #12
     374:	e50b0008 	str	r0, [fp, #-8]
     378:	e1a03001 	mov	r3, r1
     37c:	e54b3009 	strb	r3, [fp, #-9]
     380:	ea000009 	b	3ac <strchr+0x44>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e5d33000 	ldrb	r3, [r3]
     38c:	e55b2009 	ldrb	r2, [fp, #-9]
     390:	e1520003 	cmp	r2, r3
     394:	1a000001 	bne	3a0 <strchr+0x38>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	ea000007 	b	3c0 <strchr+0x58>
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e2833001 	add	r3, r3, #1
     3a8:	e50b3008 	str	r3, [fp, #-8]
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e5d33000 	ldrb	r3, [r3]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	1afffff1 	bne	384 <strchr+0x1c>
     3bc:	e3a03000 	mov	r3, #0
     3c0:	e1a00003 	mov	r0, r3
     3c4:	e28bd000 	add	sp, fp, #0
     3c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3cc:	e12fff1e 	bx	lr

000003d0 <gets>:
     3d0:	e92d4800 	push	{fp, lr}
     3d4:	e28db004 	add	fp, sp, #4
     3d8:	e24dd018 	sub	sp, sp, #24
     3dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3e0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3e4:	e3a03000 	mov	r3, #0
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	ea000016 	b	44c <gets+0x7c>
     3f0:	e24b300d 	sub	r3, fp, #13
     3f4:	e3a02001 	mov	r2, #1
     3f8:	e1a01003 	mov	r1, r3
     3fc:	e3a00000 	mov	r0, #0
     400:	eb00009b 	bl	674 <read>
     404:	e50b000c 	str	r0, [fp, #-12]
     408:	e51b300c 	ldr	r3, [fp, #-12]
     40c:	e3530000 	cmp	r3, #0
     410:	da000013 	ble	464 <gets+0x94>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e2832001 	add	r2, r3, #1
     41c:	e50b2008 	str	r2, [fp, #-8]
     420:	e1a02003 	mov	r2, r3
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e0833002 	add	r3, r3, r2
     42c:	e55b200d 	ldrb	r2, [fp, #-13]
     430:	e5c32000 	strb	r2, [r3]
     434:	e55b300d 	ldrb	r3, [fp, #-13]
     438:	e353000a 	cmp	r3, #10
     43c:	0a000009 	beq	468 <gets+0x98>
     440:	e55b300d 	ldrb	r3, [fp, #-13]
     444:	e353000d 	cmp	r3, #13
     448:	0a000006 	beq	468 <gets+0x98>
     44c:	e51b3008 	ldr	r3, [fp, #-8]
     450:	e2833001 	add	r3, r3, #1
     454:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     458:	e1520003 	cmp	r2, r3
     45c:	caffffe3 	bgt	3f0 <gets+0x20>
     460:	ea000000 	b	468 <gets+0x98>
     464:	e1a00000 	nop			@ (mov r0, r0)
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     470:	e0823003 	add	r3, r2, r3
     474:	e3a02000 	mov	r2, #0
     478:	e5c32000 	strb	r2, [r3]
     47c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     480:	e1a00003 	mov	r0, r3
     484:	e24bd004 	sub	sp, fp, #4
     488:	e8bd8800 	pop	{fp, pc}

0000048c <stat>:
     48c:	e92d4800 	push	{fp, lr}
     490:	e28db004 	add	fp, sp, #4
     494:	e24dd010 	sub	sp, sp, #16
     498:	e50b0010 	str	r0, [fp, #-16]
     49c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4a0:	e3a01000 	mov	r1, #0
     4a4:	e51b0010 	ldr	r0, [fp, #-16]
     4a8:	eb00009e 	bl	728 <open>
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e3530000 	cmp	r3, #0
     4b8:	aa000001 	bge	4c4 <stat+0x38>
     4bc:	e3e03000 	mvn	r3, #0
     4c0:	ea000006 	b	4e0 <stat+0x54>
     4c4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4c8:	e51b0008 	ldr	r0, [fp, #-8]
     4cc:	eb0000b0 	bl	794 <fstat>
     4d0:	e50b000c 	str	r0, [fp, #-12]
     4d4:	e51b0008 	ldr	r0, [fp, #-8]
     4d8:	eb000077 	bl	6bc <close>
     4dc:	e51b300c 	ldr	r3, [fp, #-12]
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e24bd004 	sub	sp, fp, #4
     4e8:	e8bd8800 	pop	{fp, pc}

000004ec <atoi>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd014 	sub	sp, sp, #20
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e3a03000 	mov	r3, #0
     500:	e50b3008 	str	r3, [fp, #-8]
     504:	ea00000c 	b	53c <atoi+0x50>
     508:	e51b2008 	ldr	r2, [fp, #-8]
     50c:	e1a03002 	mov	r3, r2
     510:	e1a03103 	lsl	r3, r3, #2
     514:	e0833002 	add	r3, r3, r2
     518:	e1a03083 	lsl	r3, r3, #1
     51c:	e1a01003 	mov	r1, r3
     520:	e51b3010 	ldr	r3, [fp, #-16]
     524:	e2832001 	add	r2, r3, #1
     528:	e50b2010 	str	r2, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e0813003 	add	r3, r1, r3
     534:	e2433030 	sub	r3, r3, #48	@ 0x30
     538:	e50b3008 	str	r3, [fp, #-8]
     53c:	e51b3010 	ldr	r3, [fp, #-16]
     540:	e5d33000 	ldrb	r3, [r3]
     544:	e353002f 	cmp	r3, #47	@ 0x2f
     548:	9a000003 	bls	55c <atoi+0x70>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e5d33000 	ldrb	r3, [r3]
     554:	e3530039 	cmp	r3, #57	@ 0x39
     558:	9affffea 	bls	508 <atoi+0x1c>
     55c:	e51b3008 	ldr	r3, [fp, #-8]
     560:	e1a00003 	mov	r0, r3
     564:	e28bd000 	add	sp, fp, #0
     568:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <memmove>:
     570:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     574:	e28db000 	add	fp, sp, #0
     578:	e24dd01c 	sub	sp, sp, #28
     57c:	e50b0010 	str	r0, [fp, #-16]
     580:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     584:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     588:	e51b3010 	ldr	r3, [fp, #-16]
     58c:	e50b3008 	str	r3, [fp, #-8]
     590:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     594:	e50b300c 	str	r3, [fp, #-12]
     598:	ea000007 	b	5bc <memmove+0x4c>
     59c:	e51b200c 	ldr	r2, [fp, #-12]
     5a0:	e2823001 	add	r3, r2, #1
     5a4:	e50b300c 	str	r3, [fp, #-12]
     5a8:	e51b3008 	ldr	r3, [fp, #-8]
     5ac:	e2831001 	add	r1, r3, #1
     5b0:	e50b1008 	str	r1, [fp, #-8]
     5b4:	e5d22000 	ldrb	r2, [r2]
     5b8:	e5c32000 	strb	r2, [r3]
     5bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5c0:	e2432001 	sub	r2, r3, #1
     5c4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5c8:	e3530000 	cmp	r3, #0
     5cc:	cafffff2 	bgt	59c <memmove+0x2c>
     5d0:	e51b3010 	ldr	r3, [fp, #-16]
     5d4:	e1a00003 	mov	r0, r3
     5d8:	e28bd000 	add	sp, fp, #0
     5dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <fork>:
     5e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e8:	e1a04003 	mov	r4, r3
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a02001 	mov	r2, r1
     5f4:	e1a01000 	mov	r1, r0
     5f8:	e3a00001 	mov	r0, #1
     5fc:	ef000000 	svc	0x00000000
     600:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <exit>:
     608:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     60c:	e1a04003 	mov	r4, r3
     610:	e1a03002 	mov	r3, r2
     614:	e1a02001 	mov	r2, r1
     618:	e1a01000 	mov	r1, r0
     61c:	e3a00002 	mov	r0, #2
     620:	ef000000 	svc	0x00000000
     624:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <wait>:
     62c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     630:	e1a04003 	mov	r4, r3
     634:	e1a03002 	mov	r3, r2
     638:	e1a02001 	mov	r2, r1
     63c:	e1a01000 	mov	r1, r0
     640:	e3a00003 	mov	r0, #3
     644:	ef000000 	svc	0x00000000
     648:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <pipe>:
     650:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00004 	mov	r0, #4
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <read>:
     674:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00005 	mov	r0, #5
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <write>:
     698:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a00010 	mov	r0, #16
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <close>:
     6bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00015 	mov	r0, #21
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <kill>:
     6e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00006 	mov	r0, #6
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <exec>:
     704:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00007 	mov	r0, #7
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <open>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a0000f 	mov	r0, #15
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <mknod>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00011 	mov	r0, #17
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <unlink>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00012 	mov	r0, #18
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <fstat>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00008 	mov	r0, #8
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <link>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00013 	mov	r0, #19
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <mkdir>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00014 	mov	r0, #20
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <chdir>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00009 	mov	r0, #9
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <dup>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a0000a 	mov	r0, #10
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <getpid>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a0000b 	mov	r0, #11
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <sbrk>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a0000c 	mov	r0, #12
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <sleep>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a0000d 	mov	r0, #13
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <uptime>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a0000e 	mov	r0, #14
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <putc>:
     8d8:	e92d4800 	push	{fp, lr}
     8dc:	e28db004 	add	fp, sp, #4
     8e0:	e24dd008 	sub	sp, sp, #8
     8e4:	e50b0008 	str	r0, [fp, #-8]
     8e8:	e1a03001 	mov	r3, r1
     8ec:	e54b3009 	strb	r3, [fp, #-9]
     8f0:	e24b3009 	sub	r3, fp, #9
     8f4:	e3a02001 	mov	r2, #1
     8f8:	e1a01003 	mov	r1, r3
     8fc:	e51b0008 	ldr	r0, [fp, #-8]
     900:	ebffff64 	bl	698 <write>
     904:	e1a00000 	nop			@ (mov r0, r0)
     908:	e24bd004 	sub	sp, fp, #4
     90c:	e8bd8800 	pop	{fp, pc}

00000910 <printint>:
     910:	e92d4800 	push	{fp, lr}
     914:	e28db004 	add	fp, sp, #4
     918:	e24dd030 	sub	sp, sp, #48	@ 0x30
     91c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     920:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     924:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     928:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     92c:	e3a03000 	mov	r3, #0
     930:	e50b300c 	str	r3, [fp, #-12]
     934:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     938:	e3530000 	cmp	r3, #0
     93c:	0a000008 	beq	964 <printint+0x54>
     940:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     944:	e3530000 	cmp	r3, #0
     948:	aa000005 	bge	964 <printint+0x54>
     94c:	e3a03001 	mov	r3, #1
     950:	e50b300c 	str	r3, [fp, #-12]
     954:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     958:	e2633000 	rsb	r3, r3, #0
     95c:	e50b3010 	str	r3, [fp, #-16]
     960:	ea000001 	b	96c <printint+0x5c>
     964:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     968:	e50b3010 	str	r3, [fp, #-16]
     96c:	e3a03000 	mov	r3, #0
     970:	e50b3008 	str	r3, [fp, #-8]
     974:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     978:	e51b3010 	ldr	r3, [fp, #-16]
     97c:	e1a01002 	mov	r1, r2
     980:	e1a00003 	mov	r0, r3
     984:	eb0001d5 	bl	10e0 <__aeabi_uidivmod>
     988:	e1a03001 	mov	r3, r1
     98c:	e1a01003 	mov	r1, r3
     990:	e51b3008 	ldr	r3, [fp, #-8]
     994:	e2832001 	add	r2, r3, #1
     998:	e50b2008 	str	r2, [fp, #-8]
     99c:	e59f20a0 	ldr	r2, [pc, #160]	@ a44 <printint+0x134>
     9a0:	e7d22001 	ldrb	r2, [r2, r1]
     9a4:	e2433004 	sub	r3, r3, #4
     9a8:	e083300b 	add	r3, r3, fp
     9ac:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9b0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9b4:	e1a01003 	mov	r1, r3
     9b8:	e51b0010 	ldr	r0, [fp, #-16]
     9bc:	eb00018a 	bl	fec <__udivsi3>
     9c0:	e1a03000 	mov	r3, r0
     9c4:	e50b3010 	str	r3, [fp, #-16]
     9c8:	e51b3010 	ldr	r3, [fp, #-16]
     9cc:	e3530000 	cmp	r3, #0
     9d0:	1affffe7 	bne	974 <printint+0x64>
     9d4:	e51b300c 	ldr	r3, [fp, #-12]
     9d8:	e3530000 	cmp	r3, #0
     9dc:	0a00000e 	beq	a1c <printint+0x10c>
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e2832001 	add	r2, r3, #1
     9e8:	e50b2008 	str	r2, [fp, #-8]
     9ec:	e2433004 	sub	r3, r3, #4
     9f0:	e083300b 	add	r3, r3, fp
     9f4:	e3a0202d 	mov	r2, #45	@ 0x2d
     9f8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9fc:	ea000006 	b	a1c <printint+0x10c>
     a00:	e24b2020 	sub	r2, fp, #32
     a04:	e51b3008 	ldr	r3, [fp, #-8]
     a08:	e0823003 	add	r3, r2, r3
     a0c:	e5d33000 	ldrb	r3, [r3]
     a10:	e1a01003 	mov	r1, r3
     a14:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a18:	ebffffae 	bl	8d8 <putc>
     a1c:	e51b3008 	ldr	r3, [fp, #-8]
     a20:	e2433001 	sub	r3, r3, #1
     a24:	e50b3008 	str	r3, [fp, #-8]
     a28:	e51b3008 	ldr	r3, [fp, #-8]
     a2c:	e3530000 	cmp	r3, #0
     a30:	aafffff2 	bge	a00 <printint+0xf0>
     a34:	e1a00000 	nop			@ (mov r0, r0)
     a38:	e1a00000 	nop			@ (mov r0, r0)
     a3c:	e24bd004 	sub	sp, fp, #4
     a40:	e8bd8800 	pop	{fp, pc}
     a44:	0000112c 	.word	0x0000112c

00000a48 <printf>:
     a48:	e92d000e 	push	{r1, r2, r3}
     a4c:	e92d4800 	push	{fp, lr}
     a50:	e28db004 	add	fp, sp, #4
     a54:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a58:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a5c:	e3a03000 	mov	r3, #0
     a60:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a64:	e28b3008 	add	r3, fp, #8
     a68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a6c:	e3a03000 	mov	r3, #0
     a70:	e50b3010 	str	r3, [fp, #-16]
     a74:	ea000074 	b	c4c <printf+0x204>
     a78:	e59b2004 	ldr	r2, [fp, #4]
     a7c:	e51b3010 	ldr	r3, [fp, #-16]
     a80:	e0823003 	add	r3, r2, r3
     a84:	e5d33000 	ldrb	r3, [r3]
     a88:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a90:	e3530000 	cmp	r3, #0
     a94:	1a00000b 	bne	ac8 <printf+0x80>
     a98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a9c:	e3530025 	cmp	r3, #37	@ 0x25
     aa0:	1a000002 	bne	ab0 <printf+0x68>
     aa4:	e3a03025 	mov	r3, #37	@ 0x25
     aa8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     aac:	ea000063 	b	c40 <printf+0x1f8>
     ab0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab4:	e6ef3073 	uxtb	r3, r3
     ab8:	e1a01003 	mov	r1, r3
     abc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ac0:	ebffff84 	bl	8d8 <putc>
     ac4:	ea00005d 	b	c40 <printf+0x1f8>
     ac8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     acc:	e3530025 	cmp	r3, #37	@ 0x25
     ad0:	1a00005a 	bne	c40 <printf+0x1f8>
     ad4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad8:	e3530064 	cmp	r3, #100	@ 0x64
     adc:	1a00000a 	bne	b0c <printf+0xc4>
     ae0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae4:	e5933000 	ldr	r3, [r3]
     ae8:	e1a01003 	mov	r1, r3
     aec:	e3a03001 	mov	r3, #1
     af0:	e3a0200a 	mov	r2, #10
     af4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     af8:	ebffff84 	bl	910 <printint>
     afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e2833004 	add	r3, r3, #4
     b04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b08:	ea00004a 	b	c38 <printf+0x1f0>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e3530078 	cmp	r3, #120	@ 0x78
     b14:	0a000002 	beq	b24 <printf+0xdc>
     b18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b1c:	e3530070 	cmp	r3, #112	@ 0x70
     b20:	1a00000a 	bne	b50 <printf+0x108>
     b24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b28:	e5933000 	ldr	r3, [r3]
     b2c:	e1a01003 	mov	r1, r3
     b30:	e3a03000 	mov	r3, #0
     b34:	e3a02010 	mov	r2, #16
     b38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b3c:	ebffff73 	bl	910 <printint>
     b40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b44:	e2833004 	add	r3, r3, #4
     b48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b4c:	ea000039 	b	c38 <printf+0x1f0>
     b50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b54:	e3530073 	cmp	r3, #115	@ 0x73
     b58:	1a000018 	bne	bc0 <printf+0x178>
     b5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e5933000 	ldr	r3, [r3]
     b64:	e50b300c 	str	r3, [fp, #-12]
     b68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b6c:	e2833004 	add	r3, r3, #4
     b70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b74:	e51b300c 	ldr	r3, [fp, #-12]
     b78:	e3530000 	cmp	r3, #0
     b7c:	1a00000a 	bne	bac <printf+0x164>
     b80:	e59f30f4 	ldr	r3, [pc, #244]	@ c7c <printf+0x234>
     b84:	e50b300c 	str	r3, [fp, #-12]
     b88:	ea000007 	b	bac <printf+0x164>
     b8c:	e51b300c 	ldr	r3, [fp, #-12]
     b90:	e5d33000 	ldrb	r3, [r3]
     b94:	e1a01003 	mov	r1, r3
     b98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b9c:	ebffff4d 	bl	8d8 <putc>
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e2833001 	add	r3, r3, #1
     ba8:	e50b300c 	str	r3, [fp, #-12]
     bac:	e51b300c 	ldr	r3, [fp, #-12]
     bb0:	e5d33000 	ldrb	r3, [r3]
     bb4:	e3530000 	cmp	r3, #0
     bb8:	1afffff3 	bne	b8c <printf+0x144>
     bbc:	ea00001d 	b	c38 <printf+0x1f0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e3530063 	cmp	r3, #99	@ 0x63
     bc8:	1a000009 	bne	bf4 <printf+0x1ac>
     bcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd0:	e5933000 	ldr	r3, [r3]
     bd4:	e6ef3073 	uxtb	r3, r3
     bd8:	e1a01003 	mov	r1, r3
     bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     be0:	ebffff3c 	bl	8d8 <putc>
     be4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     be8:	e2833004 	add	r3, r3, #4
     bec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bf0:	ea000010 	b	c38 <printf+0x1f0>
     bf4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf8:	e3530025 	cmp	r3, #37	@ 0x25
     bfc:	1a000005 	bne	c18 <printf+0x1d0>
     c00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c04:	e6ef3073 	uxtb	r3, r3
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c10:	ebffff30 	bl	8d8 <putc>
     c14:	ea000007 	b	c38 <printf+0x1f0>
     c18:	e3a01025 	mov	r1, #37	@ 0x25
     c1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c20:	ebffff2c 	bl	8d8 <putc>
     c24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c28:	e6ef3073 	uxtb	r3, r3
     c2c:	e1a01003 	mov	r1, r3
     c30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c34:	ebffff27 	bl	8d8 <putc>
     c38:	e3a03000 	mov	r3, #0
     c3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c40:	e51b3010 	ldr	r3, [fp, #-16]
     c44:	e2833001 	add	r3, r3, #1
     c48:	e50b3010 	str	r3, [fp, #-16]
     c4c:	e59b2004 	ldr	r2, [fp, #4]
     c50:	e51b3010 	ldr	r3, [fp, #-16]
     c54:	e0823003 	add	r3, r2, r3
     c58:	e5d33000 	ldrb	r3, [r3]
     c5c:	e3530000 	cmp	r3, #0
     c60:	1affff84 	bne	a78 <printf+0x30>
     c64:	e1a00000 	nop			@ (mov r0, r0)
     c68:	e1a00000 	nop			@ (mov r0, r0)
     c6c:	e24bd004 	sub	sp, fp, #4
     c70:	e8bd4800 	pop	{fp, lr}
     c74:	e28dd00c 	add	sp, sp, #12
     c78:	e12fff1e 	bx	lr
     c7c:	00001124 	.word	0x00001124

00000c80 <free>:
     c80:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c84:	e28db000 	add	fp, sp, #0
     c88:	e24dd014 	sub	sp, sp, #20
     c8c:	e50b0010 	str	r0, [fp, #-16]
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e2433008 	sub	r3, r3, #8
     c98:	e50b300c 	str	r3, [fp, #-12]
     c9c:	e59f3154 	ldr	r3, [pc, #340]	@ df8 <free+0x178>
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e50b3008 	str	r3, [fp, #-8]
     ca8:	ea000010 	b	cf0 <free+0x70>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e51b2008 	ldr	r2, [fp, #-8]
     cb8:	e1520003 	cmp	r2, r3
     cbc:	3a000008 	bcc	ce4 <free+0x64>
     cc0:	e51b200c 	ldr	r2, [fp, #-12]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e1520003 	cmp	r2, r3
     ccc:	8a000010 	bhi	d14 <free+0x94>
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e1520003 	cmp	r2, r3
     ce0:	3a00000b 	bcc	d14 <free+0x94>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933000 	ldr	r3, [r3]
     cec:	e50b3008 	str	r3, [fp, #-8]
     cf0:	e51b200c 	ldr	r2, [fp, #-12]
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	9affffea 	bls	cac <free+0x2c>
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e1520003 	cmp	r2, r3
     d10:	2affffe5 	bcs	cac <free+0x2c>
     d14:	e51b300c 	ldr	r3, [fp, #-12]
     d18:	e5933004 	ldr	r3, [r3, #4]
     d1c:	e1a03183 	lsl	r3, r3, #3
     d20:	e51b200c 	ldr	r2, [fp, #-12]
     d24:	e0822003 	add	r2, r2, r3
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933000 	ldr	r3, [r3]
     d30:	e1520003 	cmp	r2, r3
     d34:	1a00000d 	bne	d70 <free+0xf0>
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5932004 	ldr	r2, [r3, #4]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e5933004 	ldr	r3, [r3, #4]
     d4c:	e0822003 	add	r2, r2, r3
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5832004 	str	r2, [r3, #4]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5933000 	ldr	r3, [r3]
     d60:	e5932000 	ldr	r2, [r3]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5832000 	str	r2, [r3]
     d6c:	ea000003 	b	d80 <free+0x100>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5932000 	ldr	r2, [r3]
     d78:	e51b300c 	ldr	r3, [fp, #-12]
     d7c:	e5832000 	str	r2, [r3]
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5933004 	ldr	r3, [r3, #4]
     d88:	e1a03183 	lsl	r3, r3, #3
     d8c:	e51b2008 	ldr	r2, [fp, #-8]
     d90:	e0823003 	add	r3, r2, r3
     d94:	e51b200c 	ldr	r2, [fp, #-12]
     d98:	e1520003 	cmp	r2, r3
     d9c:	1a00000b 	bne	dd0 <free+0x150>
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5932004 	ldr	r2, [r3, #4]
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5933004 	ldr	r3, [r3, #4]
     db0:	e0822003 	add	r2, r2, r3
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e5832004 	str	r2, [r3, #4]
     dbc:	e51b300c 	ldr	r3, [fp, #-12]
     dc0:	e5932000 	ldr	r2, [r3]
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e5832000 	str	r2, [r3]
     dcc:	ea000002 	b	ddc <free+0x15c>
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e51b200c 	ldr	r2, [fp, #-12]
     dd8:	e5832000 	str	r2, [r3]
     ddc:	e59f2014 	ldr	r2, [pc, #20]	@ df8 <free+0x178>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5823000 	str	r3, [r2]
     de8:	e1a00000 	nop			@ (mov r0, r0)
     dec:	e28bd000 	add	sp, fp, #0
     df0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     df4:	e12fff1e 	bx	lr
     df8:	00001148 	.word	0x00001148

00000dfc <morecore>:
     dfc:	e92d4800 	push	{fp, lr}
     e00:	e28db004 	add	fp, sp, #4
     e04:	e24dd010 	sub	sp, sp, #16
     e08:	e50b0010 	str	r0, [fp, #-16]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e14:	2a000001 	bcs	e20 <morecore+0x24>
     e18:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e1c:	e50b3010 	str	r3, [fp, #-16]
     e20:	e51b3010 	ldr	r3, [fp, #-16]
     e24:	e1a03183 	lsl	r3, r3, #3
     e28:	e1a00003 	mov	r0, r3
     e2c:	ebfffe8e 	bl	86c <sbrk>
     e30:	e50b0008 	str	r0, [fp, #-8]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e3730001 	cmn	r3, #1
     e3c:	1a000001 	bne	e48 <morecore+0x4c>
     e40:	e3a03000 	mov	r3, #0
     e44:	ea00000a 	b	e74 <morecore+0x78>
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e50b300c 	str	r3, [fp, #-12]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e51b2010 	ldr	r2, [fp, #-16]
     e58:	e5832004 	str	r2, [r3, #4]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e2833008 	add	r3, r3, #8
     e64:	e1a00003 	mov	r0, r3
     e68:	ebffff84 	bl	c80 <free>
     e6c:	e59f300c 	ldr	r3, [pc, #12]	@ e80 <morecore+0x84>
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e1a00003 	mov	r0, r3
     e78:	e24bd004 	sub	sp, fp, #4
     e7c:	e8bd8800 	pop	{fp, pc}
     e80:	00001148 	.word	0x00001148

00000e84 <malloc>:
     e84:	e92d4800 	push	{fp, lr}
     e88:	e28db004 	add	fp, sp, #4
     e8c:	e24dd018 	sub	sp, sp, #24
     e90:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e98:	e2833007 	add	r3, r3, #7
     e9c:	e1a031a3 	lsr	r3, r3, #3
     ea0:	e2833001 	add	r3, r3, #1
     ea4:	e50b3010 	str	r3, [fp, #-16]
     ea8:	e59f3134 	ldr	r3, [pc, #308]	@ fe4 <malloc+0x160>
     eac:	e5933000 	ldr	r3, [r3]
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a00000b 	bne	ef0 <malloc+0x6c>
     ec0:	e59f3120 	ldr	r3, [pc, #288]	@ fe8 <malloc+0x164>
     ec4:	e50b300c 	str	r3, [fp, #-12]
     ec8:	e59f2114 	ldr	r2, [pc, #276]	@ fe4 <malloc+0x160>
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5823000 	str	r3, [r2]
     ed4:	e59f3108 	ldr	r3, [pc, #264]	@ fe4 <malloc+0x160>
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e59f2104 	ldr	r2, [pc, #260]	@ fe8 <malloc+0x164>
     ee0:	e5823000 	str	r3, [r2]
     ee4:	e59f30fc 	ldr	r3, [pc, #252]	@ fe8 <malloc+0x164>
     ee8:	e3a02000 	mov	r2, #0
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933004 	ldr	r3, [r3, #4]
     f04:	e51b2010 	ldr	r2, [fp, #-16]
     f08:	e1520003 	cmp	r2, r3
     f0c:	8a00001e 	bhi	f8c <malloc+0x108>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5933004 	ldr	r3, [r3, #4]
     f18:	e51b2010 	ldr	r2, [fp, #-16]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a000004 	bne	f38 <malloc+0xb4>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5932000 	ldr	r2, [r3]
     f2c:	e51b300c 	ldr	r3, [fp, #-12]
     f30:	e5832000 	str	r2, [r3]
     f34:	ea00000e 	b	f74 <malloc+0xf0>
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5932004 	ldr	r2, [r3, #4]
     f40:	e51b3010 	ldr	r3, [fp, #-16]
     f44:	e0422003 	sub	r2, r2, r3
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5832004 	str	r2, [r3, #4]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e1a03183 	lsl	r3, r3, #3
     f5c:	e51b2008 	ldr	r2, [fp, #-8]
     f60:	e0823003 	add	r3, r2, r3
     f64:	e50b3008 	str	r3, [fp, #-8]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e51b2010 	ldr	r2, [fp, #-16]
     f70:	e5832004 	str	r2, [r3, #4]
     f74:	e59f2068 	ldr	r2, [pc, #104]	@ fe4 <malloc+0x160>
     f78:	e51b300c 	ldr	r3, [fp, #-12]
     f7c:	e5823000 	str	r3, [r2]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e2833008 	add	r3, r3, #8
     f88:	ea000012 	b	fd8 <malloc+0x154>
     f8c:	e59f3050 	ldr	r3, [pc, #80]	@ fe4 <malloc+0x160>
     f90:	e5933000 	ldr	r3, [r3]
     f94:	e51b2008 	ldr	r2, [fp, #-8]
     f98:	e1520003 	cmp	r2, r3
     f9c:	1a000007 	bne	fc0 <malloc+0x13c>
     fa0:	e51b0010 	ldr	r0, [fp, #-16]
     fa4:	ebffff94 	bl	dfc <morecore>
     fa8:	e50b0008 	str	r0, [fp, #-8]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e3530000 	cmp	r3, #0
     fb4:	1a000001 	bne	fc0 <malloc+0x13c>
     fb8:	e3a03000 	mov	r3, #0
     fbc:	ea000005 	b	fd8 <malloc+0x154>
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e50b300c 	str	r3, [fp, #-12]
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e5933000 	ldr	r3, [r3]
     fd0:	e50b3008 	str	r3, [fp, #-8]
     fd4:	eaffffc8 	b	efc <malloc+0x78>
     fd8:	e1a00003 	mov	r0, r3
     fdc:	e24bd004 	sub	sp, fp, #4
     fe0:	e8bd8800 	pop	{fp, pc}
     fe4:	00001148 	.word	0x00001148
     fe8:	00001140 	.word	0x00001140

00000fec <__udivsi3>:
     fec:	e2512001 	subs	r2, r1, #1
     ff0:	012fff1e 	bxeq	lr
     ff4:	3a000036 	bcc	10d4 <__udivsi3+0xe8>
     ff8:	e1500001 	cmp	r0, r1
     ffc:	9a000022 	bls	108c <__udivsi3+0xa0>
    1000:	e1110002 	tst	r1, r2
    1004:	0a000023 	beq	1098 <__udivsi3+0xac>
    1008:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    100c:	01a01181 	lsleq	r1, r1, #3
    1010:	03a03008 	moveq	r3, #8
    1014:	13a03001 	movne	r3, #1
    1018:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    101c:	31510000 	cmpcc	r1, r0
    1020:	31a01201 	lslcc	r1, r1, #4
    1024:	31a03203 	lslcc	r3, r3, #4
    1028:	3afffffa 	bcc	1018 <__udivsi3+0x2c>
    102c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1030:	31510000 	cmpcc	r1, r0
    1034:	31a01081 	lslcc	r1, r1, #1
    1038:	31a03083 	lslcc	r3, r3, #1
    103c:	3afffffa 	bcc	102c <__udivsi3+0x40>
    1040:	e3a02000 	mov	r2, #0
    1044:	e1500001 	cmp	r0, r1
    1048:	20400001 	subcs	r0, r0, r1
    104c:	21822003 	orrcs	r2, r2, r3
    1050:	e15000a1 	cmp	r0, r1, lsr #1
    1054:	204000a1 	subcs	r0, r0, r1, lsr #1
    1058:	218220a3 	orrcs	r2, r2, r3, lsr #1
    105c:	e1500121 	cmp	r0, r1, lsr #2
    1060:	20400121 	subcs	r0, r0, r1, lsr #2
    1064:	21822123 	orrcs	r2, r2, r3, lsr #2
    1068:	e15001a1 	cmp	r0, r1, lsr #3
    106c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1070:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1074:	e3500000 	cmp	r0, #0
    1078:	11b03223 	lsrsne	r3, r3, #4
    107c:	11a01221 	lsrne	r1, r1, #4
    1080:	1affffef 	bne	1044 <__udivsi3+0x58>
    1084:	e1a00002 	mov	r0, r2
    1088:	e12fff1e 	bx	lr
    108c:	03a00001 	moveq	r0, #1
    1090:	13a00000 	movne	r0, #0
    1094:	e12fff1e 	bx	lr
    1098:	e3510801 	cmp	r1, #65536	@ 0x10000
    109c:	21a01821 	lsrcs	r1, r1, #16
    10a0:	23a02010 	movcs	r2, #16
    10a4:	33a02000 	movcc	r2, #0
    10a8:	e3510c01 	cmp	r1, #256	@ 0x100
    10ac:	21a01421 	lsrcs	r1, r1, #8
    10b0:	22822008 	addcs	r2, r2, #8
    10b4:	e3510010 	cmp	r1, #16
    10b8:	21a01221 	lsrcs	r1, r1, #4
    10bc:	22822004 	addcs	r2, r2, #4
    10c0:	e3510004 	cmp	r1, #4
    10c4:	82822003 	addhi	r2, r2, #3
    10c8:	908220a1 	addls	r2, r2, r1, lsr #1
    10cc:	e1a00230 	lsr	r0, r0, r2
    10d0:	e12fff1e 	bx	lr
    10d4:	e3500000 	cmp	r0, #0
    10d8:	13e00000 	mvnne	r0, #0
    10dc:	ea000007 	b	1100 <__aeabi_idiv0>

000010e0 <__aeabi_uidivmod>:
    10e0:	e3510000 	cmp	r1, #0
    10e4:	0afffffa 	beq	10d4 <__udivsi3+0xe8>
    10e8:	e92d4003 	push	{r0, r1, lr}
    10ec:	ebffffbe 	bl	fec <__udivsi3>
    10f0:	e8bd4006 	pop	{r1, r2, lr}
    10f4:	e0030092 	mul	r3, r2, r0
    10f8:	e0411003 	sub	r1, r1, r3
    10fc:	e12fff1e 	bx	lr

00001100 <__aeabi_idiv0>:
    1100:	e12fff1e 	bx	lr
