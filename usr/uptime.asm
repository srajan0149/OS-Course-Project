
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	eb0001f7 	bl	7f8 <uptime>
      18:	e50b0008 	str	r0, [fp, #-8]
      1c:	e51b3008 	ldr	r3, [fp, #-8]
      20:	e59f2020 	ldr	r2, [pc, #32]	@ 48 <main+0x48>
      24:	e0c21392 	smull	r1, r2, r2, r3
      28:	e1a022c2 	asr	r2, r2, #5
      2c:	e1a03fc3 	asr	r3, r3, #31
      30:	e0422003 	sub	r2, r2, r3
      34:	e51b3008 	ldr	r3, [fp, #-8]
      38:	e59f100c 	ldr	r1, [pc, #12]	@ 4c <main+0x4c>
      3c:	e3a00001 	mov	r0, #1
      40:	eb000251 	bl	98c <printf>
      44:	eb000140 	bl	54c <exit>
      48:	51eb851f 	.word	0x51eb851f
      4c:	00001048 	.word	0x00001048

00000050 <strcpy>:
      50:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      54:	e28db000 	add	fp, sp, #0
      58:	e24dd014 	sub	sp, sp, #20
      5c:	e50b0010 	str	r0, [fp, #-16]
      60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      64:	e51b3010 	ldr	r3, [fp, #-16]
      68:	e50b3008 	str	r3, [fp, #-8]
      6c:	e1a00000 	nop			@ (mov r0, r0)
      70:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      74:	e2823001 	add	r3, r2, #1
      78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      7c:	e51b3010 	ldr	r3, [fp, #-16]
      80:	e2831001 	add	r1, r3, #1
      84:	e50b1010 	str	r1, [fp, #-16]
      88:	e5d22000 	ldrb	r2, [r2]
      8c:	e5c32000 	strb	r2, [r3]
      90:	e5d33000 	ldrb	r3, [r3]
      94:	e3530000 	cmp	r3, #0
      98:	1afffff4 	bne	70 <strcpy+0x20>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e1a00003 	mov	r0, r3
      a4:	e28bd000 	add	sp, fp, #0
      a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ac:	e12fff1e 	bx	lr

000000b0 <strcmp>:
      b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b4:	e28db000 	add	fp, sp, #0
      b8:	e24dd00c 	sub	sp, sp, #12
      bc:	e50b0008 	str	r0, [fp, #-8]
      c0:	e50b100c 	str	r1, [fp, #-12]
      c4:	ea000005 	b	e0 <strcmp+0x30>
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b300c 	ldr	r3, [fp, #-12]
      d8:	e2833001 	add	r3, r3, #1
      dc:	e50b300c 	str	r3, [fp, #-12]
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e3530000 	cmp	r3, #0
      ec:	0a000005 	beq	108 <strcmp+0x58>
      f0:	e51b3008 	ldr	r3, [fp, #-8]
      f4:	e5d32000 	ldrb	r2, [r3]
      f8:	e51b300c 	ldr	r3, [fp, #-12]
      fc:	e5d33000 	ldrb	r3, [r3]
     100:	e1520003 	cmp	r2, r3
     104:	0affffef 	beq	c8 <strcmp+0x18>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e5d33000 	ldrb	r3, [r3]
     110:	e1a02003 	mov	r2, r3
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e5d33000 	ldrb	r3, [r3]
     11c:	e0423003 	sub	r3, r2, r3
     120:	e1a00003 	mov	r0, r3
     124:	e28bd000 	add	sp, fp, #0
     128:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     12c:	e12fff1e 	bx	lr

00000130 <strlen>:
     130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     134:	e28db000 	add	fp, sp, #0
     138:	e24dd014 	sub	sp, sp, #20
     13c:	e50b0010 	str	r0, [fp, #-16]
     140:	e3a03000 	mov	r3, #0
     144:	e50b3008 	str	r3, [fp, #-8]
     148:	ea000002 	b	158 <strlen+0x28>
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e2833001 	add	r3, r3, #1
     154:	e50b3008 	str	r3, [fp, #-8]
     158:	e51b3008 	ldr	r3, [fp, #-8]
     15c:	e51b2010 	ldr	r2, [fp, #-16]
     160:	e0823003 	add	r3, r2, r3
     164:	e5d33000 	ldrb	r3, [r3]
     168:	e3530000 	cmp	r3, #0
     16c:	1afffff6 	bne	14c <strlen+0x1c>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e1a00003 	mov	r0, r3
     178:	e28bd000 	add	sp, fp, #0
     17c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     180:	e12fff1e 	bx	lr

00000184 <memset>:
     184:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     188:	e28db000 	add	fp, sp, #0
     18c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     190:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     194:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     198:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     19c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1a0:	e50b3008 	str	r3, [fp, #-8]
     1a4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1a8:	e54b300d 	strb	r3, [fp, #-13]
     1ac:	e55b200d 	ldrb	r2, [fp, #-13]
     1b0:	e1a03002 	mov	r3, r2
     1b4:	e1a03403 	lsl	r3, r3, #8
     1b8:	e0833002 	add	r3, r3, r2
     1bc:	e1a03803 	lsl	r3, r3, #16
     1c0:	e1a02003 	mov	r2, r3
     1c4:	e55b300d 	ldrb	r3, [fp, #-13]
     1c8:	e1a03403 	lsl	r3, r3, #8
     1cc:	e1822003 	orr	r2, r2, r3
     1d0:	e55b300d 	ldrb	r3, [fp, #-13]
     1d4:	e1823003 	orr	r3, r2, r3
     1d8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1dc:	ea000008 	b	204 <memset+0x80>
     1e0:	e51b3008 	ldr	r3, [fp, #-8]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e5c32000 	strb	r2, [r3]
     1ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1f0:	e2433001 	sub	r3, r3, #1
     1f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1f8:	e51b3008 	ldr	r3, [fp, #-8]
     1fc:	e2833001 	add	r3, r3, #1
     200:	e50b3008 	str	r3, [fp, #-8]
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e3530000 	cmp	r3, #0
     20c:	0a000003 	beq	220 <memset+0x9c>
     210:	e51b3008 	ldr	r3, [fp, #-8]
     214:	e2033003 	and	r3, r3, #3
     218:	e3530000 	cmp	r3, #0
     21c:	1affffef 	bne	1e0 <memset+0x5c>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e50b300c 	str	r3, [fp, #-12]
     228:	ea000008 	b	250 <memset+0xcc>
     22c:	e51b300c 	ldr	r3, [fp, #-12]
     230:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     234:	e5832000 	str	r2, [r3]
     238:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     23c:	e2433004 	sub	r3, r3, #4
     240:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     244:	e51b300c 	ldr	r3, [fp, #-12]
     248:	e2833004 	add	r3, r3, #4
     24c:	e50b300c 	str	r3, [fp, #-12]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e3530003 	cmp	r3, #3
     258:	8afffff3 	bhi	22c <memset+0xa8>
     25c:	e51b300c 	ldr	r3, [fp, #-12]
     260:	e50b3008 	str	r3, [fp, #-8]
     264:	ea000008 	b	28c <memset+0x108>
     268:	e51b3008 	ldr	r3, [fp, #-8]
     26c:	e55b200d 	ldrb	r2, [fp, #-13]
     270:	e5c32000 	strb	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     278:	e2433001 	sub	r3, r3, #1
     27c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     280:	e51b3008 	ldr	r3, [fp, #-8]
     284:	e2833001 	add	r3, r3, #1
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     290:	e3530000 	cmp	r3, #0
     294:	1afffff3 	bne	268 <memset+0xe4>
     298:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     29c:	e1a00003 	mov	r0, r3
     2a0:	e28bd000 	add	sp, fp, #0
     2a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a8:	e12fff1e 	bx	lr

000002ac <strchr>:
     2ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b0:	e28db000 	add	fp, sp, #0
     2b4:	e24dd00c 	sub	sp, sp, #12
     2b8:	e50b0008 	str	r0, [fp, #-8]
     2bc:	e1a03001 	mov	r3, r1
     2c0:	e54b3009 	strb	r3, [fp, #-9]
     2c4:	ea000009 	b	2f0 <strchr+0x44>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e5d33000 	ldrb	r3, [r3]
     2d0:	e55b2009 	ldrb	r2, [fp, #-9]
     2d4:	e1520003 	cmp	r2, r3
     2d8:	1a000001 	bne	2e4 <strchr+0x38>
     2dc:	e51b3008 	ldr	r3, [fp, #-8]
     2e0:	ea000007 	b	304 <strchr+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3008 	ldr	r3, [fp, #-8]
     2f4:	e5d33000 	ldrb	r3, [r3]
     2f8:	e3530000 	cmp	r3, #0
     2fc:	1afffff1 	bne	2c8 <strchr+0x1c>
     300:	e3a03000 	mov	r3, #0
     304:	e1a00003 	mov	r0, r3
     308:	e28bd000 	add	sp, fp, #0
     30c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     310:	e12fff1e 	bx	lr

00000314 <gets>:
     314:	e92d4800 	push	{fp, lr}
     318:	e28db004 	add	fp, sp, #4
     31c:	e24dd018 	sub	sp, sp, #24
     320:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     324:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     328:	e3a03000 	mov	r3, #0
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	ea000016 	b	390 <gets+0x7c>
     334:	e24b300d 	sub	r3, fp, #13
     338:	e3a02001 	mov	r2, #1
     33c:	e1a01003 	mov	r1, r3
     340:	e3a00000 	mov	r0, #0
     344:	eb00009b 	bl	5b8 <read>
     348:	e50b000c 	str	r0, [fp, #-12]
     34c:	e51b300c 	ldr	r3, [fp, #-12]
     350:	e3530000 	cmp	r3, #0
     354:	da000013 	ble	3a8 <gets+0x94>
     358:	e51b3008 	ldr	r3, [fp, #-8]
     35c:	e2832001 	add	r2, r3, #1
     360:	e50b2008 	str	r2, [fp, #-8]
     364:	e1a02003 	mov	r2, r3
     368:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     36c:	e0833002 	add	r3, r3, r2
     370:	e55b200d 	ldrb	r2, [fp, #-13]
     374:	e5c32000 	strb	r2, [r3]
     378:	e55b300d 	ldrb	r3, [fp, #-13]
     37c:	e353000a 	cmp	r3, #10
     380:	0a000009 	beq	3ac <gets+0x98>
     384:	e55b300d 	ldrb	r3, [fp, #-13]
     388:	e353000d 	cmp	r3, #13
     38c:	0a000006 	beq	3ac <gets+0x98>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2833001 	add	r3, r3, #1
     398:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     39c:	e1520003 	cmp	r2, r3
     3a0:	caffffe3 	bgt	334 <gets+0x20>
     3a4:	ea000000 	b	3ac <gets+0x98>
     3a8:	e1a00000 	nop			@ (mov r0, r0)
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3b4:	e0823003 	add	r3, r2, r3
     3b8:	e3a02000 	mov	r2, #0
     3bc:	e5c32000 	strb	r2, [r3]
     3c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c4:	e1a00003 	mov	r0, r3
     3c8:	e24bd004 	sub	sp, fp, #4
     3cc:	e8bd8800 	pop	{fp, pc}

000003d0 <stat>:
     3d0:	e92d4800 	push	{fp, lr}
     3d4:	e28db004 	add	fp, sp, #4
     3d8:	e24dd010 	sub	sp, sp, #16
     3dc:	e50b0010 	str	r0, [fp, #-16]
     3e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3e4:	e3a01000 	mov	r1, #0
     3e8:	e51b0010 	ldr	r0, [fp, #-16]
     3ec:	eb00009e 	bl	66c <open>
     3f0:	e50b0008 	str	r0, [fp, #-8]
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	aa000001 	bge	408 <stat+0x38>
     400:	e3e03000 	mvn	r3, #0
     404:	ea000006 	b	424 <stat+0x54>
     408:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     40c:	e51b0008 	ldr	r0, [fp, #-8]
     410:	eb0000b0 	bl	6d8 <fstat>
     414:	e50b000c 	str	r0, [fp, #-12]
     418:	e51b0008 	ldr	r0, [fp, #-8]
     41c:	eb000077 	bl	600 <close>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e1a00003 	mov	r0, r3
     428:	e24bd004 	sub	sp, fp, #4
     42c:	e8bd8800 	pop	{fp, pc}

00000430 <atoi>:
     430:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     434:	e28db000 	add	fp, sp, #0
     438:	e24dd014 	sub	sp, sp, #20
     43c:	e50b0010 	str	r0, [fp, #-16]
     440:	e3a03000 	mov	r3, #0
     444:	e50b3008 	str	r3, [fp, #-8]
     448:	ea00000c 	b	480 <atoi+0x50>
     44c:	e51b2008 	ldr	r2, [fp, #-8]
     450:	e1a03002 	mov	r3, r2
     454:	e1a03103 	lsl	r3, r3, #2
     458:	e0833002 	add	r3, r3, r2
     45c:	e1a03083 	lsl	r3, r3, #1
     460:	e1a01003 	mov	r1, r3
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e2832001 	add	r2, r3, #1
     46c:	e50b2010 	str	r2, [fp, #-16]
     470:	e5d33000 	ldrb	r3, [r3]
     474:	e0813003 	add	r3, r1, r3
     478:	e2433030 	sub	r3, r3, #48	@ 0x30
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3010 	ldr	r3, [fp, #-16]
     484:	e5d33000 	ldrb	r3, [r3]
     488:	e353002f 	cmp	r3, #47	@ 0x2f
     48c:	9a000003 	bls	4a0 <atoi+0x70>
     490:	e51b3010 	ldr	r3, [fp, #-16]
     494:	e5d33000 	ldrb	r3, [r3]
     498:	e3530039 	cmp	r3, #57	@ 0x39
     49c:	9affffea 	bls	44c <atoi+0x1c>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e1a00003 	mov	r0, r3
     4a8:	e28bd000 	add	sp, fp, #0
     4ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4b0:	e12fff1e 	bx	lr

000004b4 <memmove>:
     4b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4b8:	e28db000 	add	fp, sp, #0
     4bc:	e24dd01c 	sub	sp, sp, #28
     4c0:	e50b0010 	str	r0, [fp, #-16]
     4c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4c8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4cc:	e51b3010 	ldr	r3, [fp, #-16]
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4d8:	e50b300c 	str	r3, [fp, #-12]
     4dc:	ea000007 	b	500 <memmove+0x4c>
     4e0:	e51b200c 	ldr	r2, [fp, #-12]
     4e4:	e2823001 	add	r3, r2, #1
     4e8:	e50b300c 	str	r3, [fp, #-12]
     4ec:	e51b3008 	ldr	r3, [fp, #-8]
     4f0:	e2831001 	add	r1, r3, #1
     4f4:	e50b1008 	str	r1, [fp, #-8]
     4f8:	e5d22000 	ldrb	r2, [r2]
     4fc:	e5c32000 	strb	r2, [r3]
     500:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     504:	e2432001 	sub	r2, r3, #1
     508:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e3530000 	cmp	r3, #0
     510:	cafffff2 	bgt	4e0 <memmove+0x2c>
     514:	e51b3010 	ldr	r3, [fp, #-16]
     518:	e1a00003 	mov	r0, r3
     51c:	e28bd000 	add	sp, fp, #0
     520:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     524:	e12fff1e 	bx	lr

00000528 <fork>:
     528:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     52c:	e1a04003 	mov	r4, r3
     530:	e1a03002 	mov	r3, r2
     534:	e1a02001 	mov	r2, r1
     538:	e1a01000 	mov	r1, r0
     53c:	e3a00001 	mov	r0, #1
     540:	ef000000 	svc	0x00000000
     544:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     548:	e12fff1e 	bx	lr

0000054c <exit>:
     54c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     550:	e1a04003 	mov	r4, r3
     554:	e1a03002 	mov	r3, r2
     558:	e1a02001 	mov	r2, r1
     55c:	e1a01000 	mov	r1, r0
     560:	e3a00002 	mov	r0, #2
     564:	ef000000 	svc	0x00000000
     568:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     56c:	e12fff1e 	bx	lr

00000570 <wait>:
     570:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     574:	e1a04003 	mov	r4, r3
     578:	e1a03002 	mov	r3, r2
     57c:	e1a02001 	mov	r2, r1
     580:	e1a01000 	mov	r1, r0
     584:	e3a00003 	mov	r0, #3
     588:	ef000000 	svc	0x00000000
     58c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     590:	e12fff1e 	bx	lr

00000594 <pipe>:
     594:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     598:	e1a04003 	mov	r4, r3
     59c:	e1a03002 	mov	r3, r2
     5a0:	e1a02001 	mov	r2, r1
     5a4:	e1a01000 	mov	r1, r0
     5a8:	e3a00004 	mov	r0, #4
     5ac:	ef000000 	svc	0x00000000
     5b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b4:	e12fff1e 	bx	lr

000005b8 <read>:
     5b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5bc:	e1a04003 	mov	r4, r3
     5c0:	e1a03002 	mov	r3, r2
     5c4:	e1a02001 	mov	r2, r1
     5c8:	e1a01000 	mov	r1, r0
     5cc:	e3a00005 	mov	r0, #5
     5d0:	ef000000 	svc	0x00000000
     5d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d8:	e12fff1e 	bx	lr

000005dc <write>:
     5dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e0:	e1a04003 	mov	r4, r3
     5e4:	e1a03002 	mov	r3, r2
     5e8:	e1a02001 	mov	r2, r1
     5ec:	e1a01000 	mov	r1, r0
     5f0:	e3a00010 	mov	r0, #16
     5f4:	ef000000 	svc	0x00000000
     5f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <close>:
     600:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     604:	e1a04003 	mov	r4, r3
     608:	e1a03002 	mov	r3, r2
     60c:	e1a02001 	mov	r2, r1
     610:	e1a01000 	mov	r1, r0
     614:	e3a00015 	mov	r0, #21
     618:	ef000000 	svc	0x00000000
     61c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     620:	e12fff1e 	bx	lr

00000624 <kill>:
     624:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     628:	e1a04003 	mov	r4, r3
     62c:	e1a03002 	mov	r3, r2
     630:	e1a02001 	mov	r2, r1
     634:	e1a01000 	mov	r1, r0
     638:	e3a00006 	mov	r0, #6
     63c:	ef000000 	svc	0x00000000
     640:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     644:	e12fff1e 	bx	lr

00000648 <exec>:
     648:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     64c:	e1a04003 	mov	r4, r3
     650:	e1a03002 	mov	r3, r2
     654:	e1a02001 	mov	r2, r1
     658:	e1a01000 	mov	r1, r0
     65c:	e3a00007 	mov	r0, #7
     660:	ef000000 	svc	0x00000000
     664:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     668:	e12fff1e 	bx	lr

0000066c <open>:
     66c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     670:	e1a04003 	mov	r4, r3
     674:	e1a03002 	mov	r3, r2
     678:	e1a02001 	mov	r2, r1
     67c:	e1a01000 	mov	r1, r0
     680:	e3a0000f 	mov	r0, #15
     684:	ef000000 	svc	0x00000000
     688:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     68c:	e12fff1e 	bx	lr

00000690 <mknod>:
     690:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     694:	e1a04003 	mov	r4, r3
     698:	e1a03002 	mov	r3, r2
     69c:	e1a02001 	mov	r2, r1
     6a0:	e1a01000 	mov	r1, r0
     6a4:	e3a00011 	mov	r0, #17
     6a8:	ef000000 	svc	0x00000000
     6ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b0:	e12fff1e 	bx	lr

000006b4 <unlink>:
     6b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b8:	e1a04003 	mov	r4, r3
     6bc:	e1a03002 	mov	r3, r2
     6c0:	e1a02001 	mov	r2, r1
     6c4:	e1a01000 	mov	r1, r0
     6c8:	e3a00012 	mov	r0, #18
     6cc:	ef000000 	svc	0x00000000
     6d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d4:	e12fff1e 	bx	lr

000006d8 <fstat>:
     6d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6dc:	e1a04003 	mov	r4, r3
     6e0:	e1a03002 	mov	r3, r2
     6e4:	e1a02001 	mov	r2, r1
     6e8:	e1a01000 	mov	r1, r0
     6ec:	e3a00008 	mov	r0, #8
     6f0:	ef000000 	svc	0x00000000
     6f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <link>:
     6fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     700:	e1a04003 	mov	r4, r3
     704:	e1a03002 	mov	r3, r2
     708:	e1a02001 	mov	r2, r1
     70c:	e1a01000 	mov	r1, r0
     710:	e3a00013 	mov	r0, #19
     714:	ef000000 	svc	0x00000000
     718:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     71c:	e12fff1e 	bx	lr

00000720 <mkdir>:
     720:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     724:	e1a04003 	mov	r4, r3
     728:	e1a03002 	mov	r3, r2
     72c:	e1a02001 	mov	r2, r1
     730:	e1a01000 	mov	r1, r0
     734:	e3a00014 	mov	r0, #20
     738:	ef000000 	svc	0x00000000
     73c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     740:	e12fff1e 	bx	lr

00000744 <chdir>:
     744:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     748:	e1a04003 	mov	r4, r3
     74c:	e1a03002 	mov	r3, r2
     750:	e1a02001 	mov	r2, r1
     754:	e1a01000 	mov	r1, r0
     758:	e3a00009 	mov	r0, #9
     75c:	ef000000 	svc	0x00000000
     760:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     764:	e12fff1e 	bx	lr

00000768 <dup>:
     768:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     76c:	e1a04003 	mov	r4, r3
     770:	e1a03002 	mov	r3, r2
     774:	e1a02001 	mov	r2, r1
     778:	e1a01000 	mov	r1, r0
     77c:	e3a0000a 	mov	r0, #10
     780:	ef000000 	svc	0x00000000
     784:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     788:	e12fff1e 	bx	lr

0000078c <getpid>:
     78c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     790:	e1a04003 	mov	r4, r3
     794:	e1a03002 	mov	r3, r2
     798:	e1a02001 	mov	r2, r1
     79c:	e1a01000 	mov	r1, r0
     7a0:	e3a0000b 	mov	r0, #11
     7a4:	ef000000 	svc	0x00000000
     7a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ac:	e12fff1e 	bx	lr

000007b0 <sbrk>:
     7b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b4:	e1a04003 	mov	r4, r3
     7b8:	e1a03002 	mov	r3, r2
     7bc:	e1a02001 	mov	r2, r1
     7c0:	e1a01000 	mov	r1, r0
     7c4:	e3a0000c 	mov	r0, #12
     7c8:	ef000000 	svc	0x00000000
     7cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d0:	e12fff1e 	bx	lr

000007d4 <sleep>:
     7d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d8:	e1a04003 	mov	r4, r3
     7dc:	e1a03002 	mov	r3, r2
     7e0:	e1a02001 	mov	r2, r1
     7e4:	e1a01000 	mov	r1, r0
     7e8:	e3a0000d 	mov	r0, #13
     7ec:	ef000000 	svc	0x00000000
     7f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f4:	e12fff1e 	bx	lr

000007f8 <uptime>:
     7f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7fc:	e1a04003 	mov	r4, r3
     800:	e1a03002 	mov	r3, r2
     804:	e1a02001 	mov	r2, r1
     808:	e1a01000 	mov	r1, r0
     80c:	e3a0000e 	mov	r0, #14
     810:	ef000000 	svc	0x00000000
     814:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     818:	e12fff1e 	bx	lr

0000081c <putc>:
     81c:	e92d4800 	push	{fp, lr}
     820:	e28db004 	add	fp, sp, #4
     824:	e24dd008 	sub	sp, sp, #8
     828:	e50b0008 	str	r0, [fp, #-8]
     82c:	e1a03001 	mov	r3, r1
     830:	e54b3009 	strb	r3, [fp, #-9]
     834:	e24b3009 	sub	r3, fp, #9
     838:	e3a02001 	mov	r2, #1
     83c:	e1a01003 	mov	r1, r3
     840:	e51b0008 	ldr	r0, [fp, #-8]
     844:	ebffff64 	bl	5dc <write>
     848:	e1a00000 	nop			@ (mov r0, r0)
     84c:	e24bd004 	sub	sp, fp, #4
     850:	e8bd8800 	pop	{fp, pc}

00000854 <printint>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     860:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     864:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     868:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     86c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     870:	e3a03000 	mov	r3, #0
     874:	e50b300c 	str	r3, [fp, #-12]
     878:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     87c:	e3530000 	cmp	r3, #0
     880:	0a000008 	beq	8a8 <printint+0x54>
     884:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     888:	e3530000 	cmp	r3, #0
     88c:	aa000005 	bge	8a8 <printint+0x54>
     890:	e3a03001 	mov	r3, #1
     894:	e50b300c 	str	r3, [fp, #-12]
     898:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     89c:	e2633000 	rsb	r3, r3, #0
     8a0:	e50b3010 	str	r3, [fp, #-16]
     8a4:	ea000001 	b	8b0 <printint+0x5c>
     8a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8ac:	e50b3010 	str	r3, [fp, #-16]
     8b0:	e3a03000 	mov	r3, #0
     8b4:	e50b3008 	str	r3, [fp, #-8]
     8b8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8bc:	e51b3010 	ldr	r3, [fp, #-16]
     8c0:	e1a01002 	mov	r1, r2
     8c4:	e1a00003 	mov	r0, r3
     8c8:	eb0001d5 	bl	1024 <__aeabi_uidivmod>
     8cc:	e1a03001 	mov	r3, r1
     8d0:	e1a01003 	mov	r1, r3
     8d4:	e51b3008 	ldr	r3, [fp, #-8]
     8d8:	e2832001 	add	r2, r3, #1
     8dc:	e50b2008 	str	r2, [fp, #-8]
     8e0:	e59f20a0 	ldr	r2, [pc, #160]	@ 988 <printint+0x134>
     8e4:	e7d22001 	ldrb	r2, [r2, r1]
     8e8:	e2433004 	sub	r3, r3, #4
     8ec:	e083300b 	add	r3, r3, fp
     8f0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     8f4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     8f8:	e1a01003 	mov	r1, r3
     8fc:	e51b0010 	ldr	r0, [fp, #-16]
     900:	eb00018a 	bl	f30 <__udivsi3>
     904:	e1a03000 	mov	r3, r0
     908:	e50b3010 	str	r3, [fp, #-16]
     90c:	e51b3010 	ldr	r3, [fp, #-16]
     910:	e3530000 	cmp	r3, #0
     914:	1affffe7 	bne	8b8 <printint+0x64>
     918:	e51b300c 	ldr	r3, [fp, #-12]
     91c:	e3530000 	cmp	r3, #0
     920:	0a00000e 	beq	960 <printint+0x10c>
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e2832001 	add	r2, r3, #1
     92c:	e50b2008 	str	r2, [fp, #-8]
     930:	e2433004 	sub	r3, r3, #4
     934:	e083300b 	add	r3, r3, fp
     938:	e3a0202d 	mov	r2, #45	@ 0x2d
     93c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     940:	ea000006 	b	960 <printint+0x10c>
     944:	e24b2020 	sub	r2, fp, #32
     948:	e51b3008 	ldr	r3, [fp, #-8]
     94c:	e0823003 	add	r3, r2, r3
     950:	e5d33000 	ldrb	r3, [r3]
     954:	e1a01003 	mov	r1, r3
     958:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     95c:	ebffffae 	bl	81c <putc>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2433001 	sub	r3, r3, #1
     968:	e50b3008 	str	r3, [fp, #-8]
     96c:	e51b3008 	ldr	r3, [fp, #-8]
     970:	e3530000 	cmp	r3, #0
     974:	aafffff2 	bge	944 <printint+0xf0>
     978:	e1a00000 	nop			@ (mov r0, r0)
     97c:	e1a00000 	nop			@ (mov r0, r0)
     980:	e24bd004 	sub	sp, fp, #4
     984:	e8bd8800 	pop	{fp, pc}
     988:	00001070 	.word	0x00001070

0000098c <printf>:
     98c:	e92d000e 	push	{r1, r2, r3}
     990:	e92d4800 	push	{fp, lr}
     994:	e28db004 	add	fp, sp, #4
     998:	e24dd024 	sub	sp, sp, #36	@ 0x24
     99c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9a0:	e3a03000 	mov	r3, #0
     9a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9a8:	e28b3008 	add	r3, fp, #8
     9ac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9b0:	e3a03000 	mov	r3, #0
     9b4:	e50b3010 	str	r3, [fp, #-16]
     9b8:	ea000074 	b	b90 <printf+0x204>
     9bc:	e59b2004 	ldr	r2, [fp, #4]
     9c0:	e51b3010 	ldr	r3, [fp, #-16]
     9c4:	e0823003 	add	r3, r2, r3
     9c8:	e5d33000 	ldrb	r3, [r3]
     9cc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9d4:	e3530000 	cmp	r3, #0
     9d8:	1a00000b 	bne	a0c <printf+0x80>
     9dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9e0:	e3530025 	cmp	r3, #37	@ 0x25
     9e4:	1a000002 	bne	9f4 <printf+0x68>
     9e8:	e3a03025 	mov	r3, #37	@ 0x25
     9ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9f0:	ea000063 	b	b84 <printf+0x1f8>
     9f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9f8:	e6ef3073 	uxtb	r3, r3
     9fc:	e1a01003 	mov	r1, r3
     a00:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a04:	ebffff84 	bl	81c <putc>
     a08:	ea00005d 	b	b84 <printf+0x1f8>
     a0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a10:	e3530025 	cmp	r3, #37	@ 0x25
     a14:	1a00005a 	bne	b84 <printf+0x1f8>
     a18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a1c:	e3530064 	cmp	r3, #100	@ 0x64
     a20:	1a00000a 	bne	a50 <printf+0xc4>
     a24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a28:	e5933000 	ldr	r3, [r3]
     a2c:	e1a01003 	mov	r1, r3
     a30:	e3a03001 	mov	r3, #1
     a34:	e3a0200a 	mov	r2, #10
     a38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a3c:	ebffff84 	bl	854 <printint>
     a40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a44:	e2833004 	add	r3, r3, #4
     a48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a4c:	ea00004a 	b	b7c <printf+0x1f0>
     a50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a54:	e3530078 	cmp	r3, #120	@ 0x78
     a58:	0a000002 	beq	a68 <printf+0xdc>
     a5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a60:	e3530070 	cmp	r3, #112	@ 0x70
     a64:	1a00000a 	bne	a94 <printf+0x108>
     a68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a6c:	e5933000 	ldr	r3, [r3]
     a70:	e1a01003 	mov	r1, r3
     a74:	e3a03000 	mov	r3, #0
     a78:	e3a02010 	mov	r2, #16
     a7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a80:	ebffff73 	bl	854 <printint>
     a84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a88:	e2833004 	add	r3, r3, #4
     a8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a90:	ea000039 	b	b7c <printf+0x1f0>
     a94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a98:	e3530073 	cmp	r3, #115	@ 0x73
     a9c:	1a000018 	bne	b04 <printf+0x178>
     aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e5933000 	ldr	r3, [r3]
     aa8:	e50b300c 	str	r3, [fp, #-12]
     aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	e2833004 	add	r3, r3, #4
     ab4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab8:	e51b300c 	ldr	r3, [fp, #-12]
     abc:	e3530000 	cmp	r3, #0
     ac0:	1a00000a 	bne	af0 <printf+0x164>
     ac4:	e59f30f4 	ldr	r3, [pc, #244]	@ bc0 <printf+0x234>
     ac8:	e50b300c 	str	r3, [fp, #-12]
     acc:	ea000007 	b	af0 <printf+0x164>
     ad0:	e51b300c 	ldr	r3, [fp, #-12]
     ad4:	e5d33000 	ldrb	r3, [r3]
     ad8:	e1a01003 	mov	r1, r3
     adc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae0:	ebffff4d 	bl	81c <putc>
     ae4:	e51b300c 	ldr	r3, [fp, #-12]
     ae8:	e2833001 	add	r3, r3, #1
     aec:	e50b300c 	str	r3, [fp, #-12]
     af0:	e51b300c 	ldr	r3, [fp, #-12]
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e3530000 	cmp	r3, #0
     afc:	1afffff3 	bne	ad0 <printf+0x144>
     b00:	ea00001d 	b	b7c <printf+0x1f0>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b08:	e3530063 	cmp	r3, #99	@ 0x63
     b0c:	1a000009 	bne	b38 <printf+0x1ac>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e5933000 	ldr	r3, [r3]
     b18:	e6ef3073 	uxtb	r3, r3
     b1c:	e1a01003 	mov	r1, r3
     b20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b24:	ebffff3c 	bl	81c <putc>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b34:	ea000010 	b	b7c <printf+0x1f0>
     b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e3530025 	cmp	r3, #37	@ 0x25
     b40:	1a000005 	bne	b5c <printf+0x1d0>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e6ef3073 	uxtb	r3, r3
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff30 	bl	81c <putc>
     b58:	ea000007 	b	b7c <printf+0x1f0>
     b5c:	e3a01025 	mov	r1, #37	@ 0x25
     b60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b64:	ebffff2c 	bl	81c <putc>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e6ef3073 	uxtb	r3, r3
     b70:	e1a01003 	mov	r1, r3
     b74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b78:	ebffff27 	bl	81c <putc>
     b7c:	e3a03000 	mov	r3, #0
     b80:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b84:	e51b3010 	ldr	r3, [fp, #-16]
     b88:	e2833001 	add	r3, r3, #1
     b8c:	e50b3010 	str	r3, [fp, #-16]
     b90:	e59b2004 	ldr	r2, [fp, #4]
     b94:	e51b3010 	ldr	r3, [fp, #-16]
     b98:	e0823003 	add	r3, r2, r3
     b9c:	e5d33000 	ldrb	r3, [r3]
     ba0:	e3530000 	cmp	r3, #0
     ba4:	1affff84 	bne	9bc <printf+0x30>
     ba8:	e1a00000 	nop			@ (mov r0, r0)
     bac:	e1a00000 	nop			@ (mov r0, r0)
     bb0:	e24bd004 	sub	sp, fp, #4
     bb4:	e8bd4800 	pop	{fp, lr}
     bb8:	e28dd00c 	add	sp, sp, #12
     bbc:	e12fff1e 	bx	lr
     bc0:	00001068 	.word	0x00001068

00000bc4 <free>:
     bc4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bc8:	e28db000 	add	fp, sp, #0
     bcc:	e24dd014 	sub	sp, sp, #20
     bd0:	e50b0010 	str	r0, [fp, #-16]
     bd4:	e51b3010 	ldr	r3, [fp, #-16]
     bd8:	e2433008 	sub	r3, r3, #8
     bdc:	e50b300c 	str	r3, [fp, #-12]
     be0:	e59f3154 	ldr	r3, [pc, #340]	@ d3c <free+0x178>
     be4:	e5933000 	ldr	r3, [r3]
     be8:	e50b3008 	str	r3, [fp, #-8]
     bec:	ea000010 	b	c34 <free+0x70>
     bf0:	e51b3008 	ldr	r3, [fp, #-8]
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e51b2008 	ldr	r2, [fp, #-8]
     bfc:	e1520003 	cmp	r2, r3
     c00:	3a000008 	bcc	c28 <free+0x64>
     c04:	e51b200c 	ldr	r2, [fp, #-12]
     c08:	e51b3008 	ldr	r3, [fp, #-8]
     c0c:	e1520003 	cmp	r2, r3
     c10:	8a000010 	bhi	c58 <free+0x94>
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e5933000 	ldr	r3, [r3]
     c1c:	e51b200c 	ldr	r2, [fp, #-12]
     c20:	e1520003 	cmp	r2, r3
     c24:	3a00000b 	bcc	c58 <free+0x94>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e50b3008 	str	r3, [fp, #-8]
     c34:	e51b200c 	ldr	r2, [fp, #-12]
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e1520003 	cmp	r2, r3
     c40:	9affffea 	bls	bf0 <free+0x2c>
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e51b200c 	ldr	r2, [fp, #-12]
     c50:	e1520003 	cmp	r2, r3
     c54:	2affffe5 	bcs	bf0 <free+0x2c>
     c58:	e51b300c 	ldr	r3, [fp, #-12]
     c5c:	e5933004 	ldr	r3, [r3, #4]
     c60:	e1a03183 	lsl	r3, r3, #3
     c64:	e51b200c 	ldr	r2, [fp, #-12]
     c68:	e0822003 	add	r2, r2, r3
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e5933000 	ldr	r3, [r3]
     c74:	e1520003 	cmp	r2, r3
     c78:	1a00000d 	bne	cb4 <free+0xf0>
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e5932004 	ldr	r2, [r3, #4]
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e5933004 	ldr	r3, [r3, #4]
     c90:	e0822003 	add	r2, r2, r3
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e5832004 	str	r2, [r3, #4]
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e5933000 	ldr	r3, [r3]
     ca4:	e5932000 	ldr	r2, [r3]
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e5832000 	str	r2, [r3]
     cb0:	ea000003 	b	cc4 <free+0x100>
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e5932000 	ldr	r2, [r3]
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5832000 	str	r2, [r3]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e5933004 	ldr	r3, [r3, #4]
     ccc:	e1a03183 	lsl	r3, r3, #3
     cd0:	e51b2008 	ldr	r2, [fp, #-8]
     cd4:	e0823003 	add	r3, r2, r3
     cd8:	e51b200c 	ldr	r2, [fp, #-12]
     cdc:	e1520003 	cmp	r2, r3
     ce0:	1a00000b 	bne	d14 <free+0x150>
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5932004 	ldr	r2, [r3, #4]
     cec:	e51b300c 	ldr	r3, [fp, #-12]
     cf0:	e5933004 	ldr	r3, [r3, #4]
     cf4:	e0822003 	add	r2, r2, r3
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5832004 	str	r2, [r3, #4]
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5932000 	ldr	r2, [r3]
     d08:	e51b3008 	ldr	r3, [fp, #-8]
     d0c:	e5832000 	str	r2, [r3]
     d10:	ea000002 	b	d20 <free+0x15c>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e51b200c 	ldr	r2, [fp, #-12]
     d1c:	e5832000 	str	r2, [r3]
     d20:	e59f2014 	ldr	r2, [pc, #20]	@ d3c <free+0x178>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5823000 	str	r3, [r2]
     d2c:	e1a00000 	nop			@ (mov r0, r0)
     d30:	e28bd000 	add	sp, fp, #0
     d34:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d38:	e12fff1e 	bx	lr
     d3c:	0000108c 	.word	0x0000108c

00000d40 <morecore>:
     d40:	e92d4800 	push	{fp, lr}
     d44:	e28db004 	add	fp, sp, #4
     d48:	e24dd010 	sub	sp, sp, #16
     d4c:	e50b0010 	str	r0, [fp, #-16]
     d50:	e51b3010 	ldr	r3, [fp, #-16]
     d54:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d58:	2a000001 	bcs	d64 <morecore+0x24>
     d5c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d60:	e50b3010 	str	r3, [fp, #-16]
     d64:	e51b3010 	ldr	r3, [fp, #-16]
     d68:	e1a03183 	lsl	r3, r3, #3
     d6c:	e1a00003 	mov	r0, r3
     d70:	ebfffe8e 	bl	7b0 <sbrk>
     d74:	e50b0008 	str	r0, [fp, #-8]
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e3730001 	cmn	r3, #1
     d80:	1a000001 	bne	d8c <morecore+0x4c>
     d84:	e3a03000 	mov	r3, #0
     d88:	ea00000a 	b	db8 <morecore+0x78>
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e50b300c 	str	r3, [fp, #-12]
     d94:	e51b300c 	ldr	r3, [fp, #-12]
     d98:	e51b2010 	ldr	r2, [fp, #-16]
     d9c:	e5832004 	str	r2, [r3, #4]
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e2833008 	add	r3, r3, #8
     da8:	e1a00003 	mov	r0, r3
     dac:	ebffff84 	bl	bc4 <free>
     db0:	e59f300c 	ldr	r3, [pc, #12]	@ dc4 <morecore+0x84>
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e1a00003 	mov	r0, r3
     dbc:	e24bd004 	sub	sp, fp, #4
     dc0:	e8bd8800 	pop	{fp, pc}
     dc4:	0000108c 	.word	0x0000108c

00000dc8 <malloc>:
     dc8:	e92d4800 	push	{fp, lr}
     dcc:	e28db004 	add	fp, sp, #4
     dd0:	e24dd018 	sub	sp, sp, #24
     dd4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	e2833007 	add	r3, r3, #7
     de0:	e1a031a3 	lsr	r3, r3, #3
     de4:	e2833001 	add	r3, r3, #1
     de8:	e50b3010 	str	r3, [fp, #-16]
     dec:	e59f3134 	ldr	r3, [pc, #308]	@ f28 <malloc+0x160>
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e3530000 	cmp	r3, #0
     e00:	1a00000b 	bne	e34 <malloc+0x6c>
     e04:	e59f3120 	ldr	r3, [pc, #288]	@ f2c <malloc+0x164>
     e08:	e50b300c 	str	r3, [fp, #-12]
     e0c:	e59f2114 	ldr	r2, [pc, #276]	@ f28 <malloc+0x160>
     e10:	e51b300c 	ldr	r3, [fp, #-12]
     e14:	e5823000 	str	r3, [r2]
     e18:	e59f3108 	ldr	r3, [pc, #264]	@ f28 <malloc+0x160>
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e59f2104 	ldr	r2, [pc, #260]	@ f2c <malloc+0x164>
     e24:	e5823000 	str	r3, [r2]
     e28:	e59f30fc 	ldr	r3, [pc, #252]	@ f2c <malloc+0x164>
     e2c:	e3a02000 	mov	r2, #0
     e30:	e5832004 	str	r2, [r3, #4]
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e5933000 	ldr	r3, [r3]
     e3c:	e50b3008 	str	r3, [fp, #-8]
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e5933004 	ldr	r3, [r3, #4]
     e48:	e51b2010 	ldr	r2, [fp, #-16]
     e4c:	e1520003 	cmp	r2, r3
     e50:	8a00001e 	bhi	ed0 <malloc+0x108>
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e5933004 	ldr	r3, [r3, #4]
     e5c:	e51b2010 	ldr	r2, [fp, #-16]
     e60:	e1520003 	cmp	r2, r3
     e64:	1a000004 	bne	e7c <malloc+0xb4>
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5932000 	ldr	r2, [r3]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5832000 	str	r2, [r3]
     e78:	ea00000e 	b	eb8 <malloc+0xf0>
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5932004 	ldr	r2, [r3, #4]
     e84:	e51b3010 	ldr	r3, [fp, #-16]
     e88:	e0422003 	sub	r2, r2, r3
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5832004 	str	r2, [r3, #4]
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5933004 	ldr	r3, [r3, #4]
     e9c:	e1a03183 	lsl	r3, r3, #3
     ea0:	e51b2008 	ldr	r2, [fp, #-8]
     ea4:	e0823003 	add	r3, r2, r3
     ea8:	e50b3008 	str	r3, [fp, #-8]
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e51b2010 	ldr	r2, [fp, #-16]
     eb4:	e5832004 	str	r2, [r3, #4]
     eb8:	e59f2068 	ldr	r2, [pc, #104]	@ f28 <malloc+0x160>
     ebc:	e51b300c 	ldr	r3, [fp, #-12]
     ec0:	e5823000 	str	r3, [r2]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e2833008 	add	r3, r3, #8
     ecc:	ea000012 	b	f1c <malloc+0x154>
     ed0:	e59f3050 	ldr	r3, [pc, #80]	@ f28 <malloc+0x160>
     ed4:	e5933000 	ldr	r3, [r3]
     ed8:	e51b2008 	ldr	r2, [fp, #-8]
     edc:	e1520003 	cmp	r2, r3
     ee0:	1a000007 	bne	f04 <malloc+0x13c>
     ee4:	e51b0010 	ldr	r0, [fp, #-16]
     ee8:	ebffff94 	bl	d40 <morecore>
     eec:	e50b0008 	str	r0, [fp, #-8]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1a000001 	bne	f04 <malloc+0x13c>
     efc:	e3a03000 	mov	r3, #0
     f00:	ea000005 	b	f1c <malloc+0x154>
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e50b300c 	str	r3, [fp, #-12]
     f0c:	e51b3008 	ldr	r3, [fp, #-8]
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e50b3008 	str	r3, [fp, #-8]
     f18:	eaffffc8 	b	e40 <malloc+0x78>
     f1c:	e1a00003 	mov	r0, r3
     f20:	e24bd004 	sub	sp, fp, #4
     f24:	e8bd8800 	pop	{fp, pc}
     f28:	0000108c 	.word	0x0000108c
     f2c:	00001084 	.word	0x00001084

00000f30 <__udivsi3>:
     f30:	e2512001 	subs	r2, r1, #1
     f34:	012fff1e 	bxeq	lr
     f38:	3a000036 	bcc	1018 <__udivsi3+0xe8>
     f3c:	e1500001 	cmp	r0, r1
     f40:	9a000022 	bls	fd0 <__udivsi3+0xa0>
     f44:	e1110002 	tst	r1, r2
     f48:	0a000023 	beq	fdc <__udivsi3+0xac>
     f4c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f50:	01a01181 	lsleq	r1, r1, #3
     f54:	03a03008 	moveq	r3, #8
     f58:	13a03001 	movne	r3, #1
     f5c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f60:	31510000 	cmpcc	r1, r0
     f64:	31a01201 	lslcc	r1, r1, #4
     f68:	31a03203 	lslcc	r3, r3, #4
     f6c:	3afffffa 	bcc	f5c <__udivsi3+0x2c>
     f70:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f74:	31510000 	cmpcc	r1, r0
     f78:	31a01081 	lslcc	r1, r1, #1
     f7c:	31a03083 	lslcc	r3, r3, #1
     f80:	3afffffa 	bcc	f70 <__udivsi3+0x40>
     f84:	e3a02000 	mov	r2, #0
     f88:	e1500001 	cmp	r0, r1
     f8c:	20400001 	subcs	r0, r0, r1
     f90:	21822003 	orrcs	r2, r2, r3
     f94:	e15000a1 	cmp	r0, r1, lsr #1
     f98:	204000a1 	subcs	r0, r0, r1, lsr #1
     f9c:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fa0:	e1500121 	cmp	r0, r1, lsr #2
     fa4:	20400121 	subcs	r0, r0, r1, lsr #2
     fa8:	21822123 	orrcs	r2, r2, r3, lsr #2
     fac:	e15001a1 	cmp	r0, r1, lsr #3
     fb0:	204001a1 	subcs	r0, r0, r1, lsr #3
     fb4:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fb8:	e3500000 	cmp	r0, #0
     fbc:	11b03223 	lsrsne	r3, r3, #4
     fc0:	11a01221 	lsrne	r1, r1, #4
     fc4:	1affffef 	bne	f88 <__udivsi3+0x58>
     fc8:	e1a00002 	mov	r0, r2
     fcc:	e12fff1e 	bx	lr
     fd0:	03a00001 	moveq	r0, #1
     fd4:	13a00000 	movne	r0, #0
     fd8:	e12fff1e 	bx	lr
     fdc:	e3510801 	cmp	r1, #65536	@ 0x10000
     fe0:	21a01821 	lsrcs	r1, r1, #16
     fe4:	23a02010 	movcs	r2, #16
     fe8:	33a02000 	movcc	r2, #0
     fec:	e3510c01 	cmp	r1, #256	@ 0x100
     ff0:	21a01421 	lsrcs	r1, r1, #8
     ff4:	22822008 	addcs	r2, r2, #8
     ff8:	e3510010 	cmp	r1, #16
     ffc:	21a01221 	lsrcs	r1, r1, #4
    1000:	22822004 	addcs	r2, r2, #4
    1004:	e3510004 	cmp	r1, #4
    1008:	82822003 	addhi	r2, r2, #3
    100c:	908220a1 	addls	r2, r2, r1, lsr #1
    1010:	e1a00230 	lsr	r0, r0, r2
    1014:	e12fff1e 	bx	lr
    1018:	e3500000 	cmp	r0, #0
    101c:	13e00000 	mvnne	r0, #0
    1020:	ea000007 	b	1044 <__aeabi_idiv0>

00001024 <__aeabi_uidivmod>:
    1024:	e3510000 	cmp	r1, #0
    1028:	0afffffa 	beq	1018 <__udivsi3+0xe8>
    102c:	e92d4003 	push	{r0, r1, lr}
    1030:	ebffffbe 	bl	f30 <__udivsi3>
    1034:	e8bd4006 	pop	{r1, r2, lr}
    1038:	e0030092 	mul	r3, r2, r0
    103c:	e0411003 	sub	r1, r1, r3
    1040:	e12fff1e 	bx	lr

00001044 <__aeabi_idiv0>:
    1044:	e12fff1e 	bx	lr
