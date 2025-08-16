
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb000266 	bl	9c8 <printf>
      2c:	eb000155 	bl	588 <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000109 	bl	46c <atoi>
      44:	e50b0008 	str	r0, [fp, #-8]
      48:	e51b3008 	ldr	r3, [fp, #-8]
      4c:	e3530000 	cmp	r3, #0
      50:	ca000003 	bgt	64 <main+0x64>
      54:	e59f102c 	ldr	r1, [pc, #44]	@ 88 <main+0x88>
      58:	e3a00002 	mov	r0, #2
      5c:	eb000259 	bl	9c8 <printf>
      60:	eb000148 	bl	588 <exit>
      64:	e51b2008 	ldr	r2, [fp, #-8]
      68:	e1a03002 	mov	r3, r2
      6c:	e1a03103 	lsl	r3, r3, #2
      70:	e0833002 	add	r3, r3, r2
      74:	e1a03083 	lsl	r3, r3, #1
      78:	e1a00003 	mov	r0, r3
      7c:	eb0001e3 	bl	810 <sleep>
      80:	eb000140 	bl	588 <exit>
      84:	00001084 	.word	0x00001084
      88:	000010a8 	.word	0x000010a8

0000008c <strcpy>:
      8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      90:	e28db000 	add	fp, sp, #0
      94:	e24dd014 	sub	sp, sp, #20
      98:	e50b0010 	str	r0, [fp, #-16]
      9c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a0:	e51b3010 	ldr	r3, [fp, #-16]
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e1a00000 	nop			@ (mov r0, r0)
      ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b0:	e2823001 	add	r3, r2, #1
      b4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b8:	e51b3010 	ldr	r3, [fp, #-16]
      bc:	e2831001 	add	r1, r3, #1
      c0:	e50b1010 	str	r1, [fp, #-16]
      c4:	e5d22000 	ldrb	r2, [r2]
      c8:	e5c32000 	strb	r2, [r3]
      cc:	e5d33000 	ldrb	r3, [r3]
      d0:	e3530000 	cmp	r3, #0
      d4:	1afffff4 	bne	ac <strcpy+0x20>
      d8:	e51b3008 	ldr	r3, [fp, #-8]
      dc:	e1a00003 	mov	r0, r3
      e0:	e28bd000 	add	sp, fp, #0
      e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e8:	e12fff1e 	bx	lr

000000ec <strcmp>:
      ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f0:	e28db000 	add	fp, sp, #0
      f4:	e24dd00c 	sub	sp, sp, #12
      f8:	e50b0008 	str	r0, [fp, #-8]
      fc:	e50b100c 	str	r1, [fp, #-12]
     100:	ea000005 	b	11c <strcmp+0x30>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e2833001 	add	r3, r3, #1
     10c:	e50b3008 	str	r3, [fp, #-8]
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e2833001 	add	r3, r3, #1
     118:	e50b300c 	str	r3, [fp, #-12]
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e5d33000 	ldrb	r3, [r3]
     124:	e3530000 	cmp	r3, #0
     128:	0a000005 	beq	144 <strcmp+0x58>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e5d32000 	ldrb	r2, [r3]
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e1520003 	cmp	r2, r3
     140:	0affffef 	beq	104 <strcmp+0x18>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e1a02003 	mov	r2, r3
     150:	e51b300c 	ldr	r3, [fp, #-12]
     154:	e5d33000 	ldrb	r3, [r3]
     158:	e0423003 	sub	r3, r2, r3
     15c:	e1a00003 	mov	r0, r3
     160:	e28bd000 	add	sp, fp, #0
     164:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     168:	e12fff1e 	bx	lr

0000016c <strlen>:
     16c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     170:	e28db000 	add	fp, sp, #0
     174:	e24dd014 	sub	sp, sp, #20
     178:	e50b0010 	str	r0, [fp, #-16]
     17c:	e3a03000 	mov	r3, #0
     180:	e50b3008 	str	r3, [fp, #-8]
     184:	ea000002 	b	194 <strlen+0x28>
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e2833001 	add	r3, r3, #1
     190:	e50b3008 	str	r3, [fp, #-8]
     194:	e51b3008 	ldr	r3, [fp, #-8]
     198:	e51b2010 	ldr	r2, [fp, #-16]
     19c:	e0823003 	add	r3, r2, r3
     1a0:	e5d33000 	ldrb	r3, [r3]
     1a4:	e3530000 	cmp	r3, #0
     1a8:	1afffff6 	bne	188 <strlen+0x1c>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	e28bd000 	add	sp, fp, #0
     1b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1bc:	e12fff1e 	bx	lr

000001c0 <memset>:
     1c0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c4:	e28db000 	add	fp, sp, #0
     1c8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1dc:	e50b3008 	str	r3, [fp, #-8]
     1e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e4:	e54b300d 	strb	r3, [fp, #-13]
     1e8:	e55b200d 	ldrb	r2, [fp, #-13]
     1ec:	e1a03002 	mov	r3, r2
     1f0:	e1a03403 	lsl	r3, r3, #8
     1f4:	e0833002 	add	r3, r3, r2
     1f8:	e1a03803 	lsl	r3, r3, #16
     1fc:	e1a02003 	mov	r2, r3
     200:	e55b300d 	ldrb	r3, [fp, #-13]
     204:	e1a03403 	lsl	r3, r3, #8
     208:	e1822003 	orr	r2, r2, r3
     20c:	e55b300d 	ldrb	r3, [fp, #-13]
     210:	e1823003 	orr	r3, r2, r3
     214:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     218:	ea000008 	b	240 <memset+0x80>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e55b200d 	ldrb	r2, [fp, #-13]
     224:	e5c32000 	strb	r2, [r3]
     228:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     22c:	e2433001 	sub	r3, r3, #1
     230:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     244:	e3530000 	cmp	r3, #0
     248:	0a000003 	beq	25c <memset+0x9c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2033003 	and	r3, r3, #3
     254:	e3530000 	cmp	r3, #0
     258:	1affffef 	bne	21c <memset+0x5c>
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e50b300c 	str	r3, [fp, #-12]
     264:	ea000008 	b	28c <memset+0xcc>
     268:	e51b300c 	ldr	r3, [fp, #-12]
     26c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     270:	e5832000 	str	r2, [r3]
     274:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     278:	e2433004 	sub	r3, r3, #4
     27c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     280:	e51b300c 	ldr	r3, [fp, #-12]
     284:	e2833004 	add	r3, r3, #4
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     290:	e3530003 	cmp	r3, #3
     294:	8afffff3 	bhi	268 <memset+0xa8>
     298:	e51b300c 	ldr	r3, [fp, #-12]
     29c:	e50b3008 	str	r3, [fp, #-8]
     2a0:	ea000008 	b	2c8 <memset+0x108>
     2a4:	e51b3008 	ldr	r3, [fp, #-8]
     2a8:	e55b200d 	ldrb	r2, [fp, #-13]
     2ac:	e5c32000 	strb	r2, [r3]
     2b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b4:	e2433001 	sub	r3, r3, #1
     2b8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff3 	bne	2a4 <memset+0xe4>
     2d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <strchr>:
     2e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ec:	e28db000 	add	fp, sp, #0
     2f0:	e24dd00c 	sub	sp, sp, #12
     2f4:	e50b0008 	str	r0, [fp, #-8]
     2f8:	e1a03001 	mov	r3, r1
     2fc:	e54b3009 	strb	r3, [fp, #-9]
     300:	ea000009 	b	32c <strchr+0x44>
     304:	e51b3008 	ldr	r3, [fp, #-8]
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e55b2009 	ldrb	r2, [fp, #-9]
     310:	e1520003 	cmp	r2, r3
     314:	1a000001 	bne	320 <strchr+0x38>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	ea000007 	b	340 <strchr+0x58>
     320:	e51b3008 	ldr	r3, [fp, #-8]
     324:	e2833001 	add	r3, r3, #1
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e3530000 	cmp	r3, #0
     338:	1afffff1 	bne	304 <strchr+0x1c>
     33c:	e3a03000 	mov	r3, #0
     340:	e1a00003 	mov	r0, r3
     344:	e28bd000 	add	sp, fp, #0
     348:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     34c:	e12fff1e 	bx	lr

00000350 <gets>:
     350:	e92d4800 	push	{fp, lr}
     354:	e28db004 	add	fp, sp, #4
     358:	e24dd018 	sub	sp, sp, #24
     35c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     360:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     364:	e3a03000 	mov	r3, #0
     368:	e50b3008 	str	r3, [fp, #-8]
     36c:	ea000016 	b	3cc <gets+0x7c>
     370:	e24b300d 	sub	r3, fp, #13
     374:	e3a02001 	mov	r2, #1
     378:	e1a01003 	mov	r1, r3
     37c:	e3a00000 	mov	r0, #0
     380:	eb00009b 	bl	5f4 <read>
     384:	e50b000c 	str	r0, [fp, #-12]
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e3530000 	cmp	r3, #0
     390:	da000013 	ble	3e4 <gets+0x94>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2832001 	add	r2, r3, #1
     39c:	e50b2008 	str	r2, [fp, #-8]
     3a0:	e1a02003 	mov	r2, r3
     3a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a8:	e0833002 	add	r3, r3, r2
     3ac:	e55b200d 	ldrb	r2, [fp, #-13]
     3b0:	e5c32000 	strb	r2, [r3]
     3b4:	e55b300d 	ldrb	r3, [fp, #-13]
     3b8:	e353000a 	cmp	r3, #10
     3bc:	0a000009 	beq	3e8 <gets+0x98>
     3c0:	e55b300d 	ldrb	r3, [fp, #-13]
     3c4:	e353000d 	cmp	r3, #13
     3c8:	0a000006 	beq	3e8 <gets+0x98>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d8:	e1520003 	cmp	r2, r3
     3dc:	caffffe3 	bgt	370 <gets+0x20>
     3e0:	ea000000 	b	3e8 <gets+0x98>
     3e4:	e1a00000 	nop			@ (mov r0, r0)
     3e8:	e51b3008 	ldr	r3, [fp, #-8]
     3ec:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f0:	e0823003 	add	r3, r2, r3
     3f4:	e3a02000 	mov	r2, #0
     3f8:	e5c32000 	strb	r2, [r3]
     3fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     400:	e1a00003 	mov	r0, r3
     404:	e24bd004 	sub	sp, fp, #4
     408:	e8bd8800 	pop	{fp, pc}

0000040c <stat>:
     40c:	e92d4800 	push	{fp, lr}
     410:	e28db004 	add	fp, sp, #4
     414:	e24dd010 	sub	sp, sp, #16
     418:	e50b0010 	str	r0, [fp, #-16]
     41c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     420:	e3a01000 	mov	r1, #0
     424:	e51b0010 	ldr	r0, [fp, #-16]
     428:	eb00009e 	bl	6a8 <open>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	aa000001 	bge	444 <stat+0x38>
     43c:	e3e03000 	mvn	r3, #0
     440:	ea000006 	b	460 <stat+0x54>
     444:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     448:	e51b0008 	ldr	r0, [fp, #-8]
     44c:	eb0000b0 	bl	714 <fstat>
     450:	e50b000c 	str	r0, [fp, #-12]
     454:	e51b0008 	ldr	r0, [fp, #-8]
     458:	eb000077 	bl	63c <close>
     45c:	e51b300c 	ldr	r3, [fp, #-12]
     460:	e1a00003 	mov	r0, r3
     464:	e24bd004 	sub	sp, fp, #4
     468:	e8bd8800 	pop	{fp, pc}

0000046c <atoi>:
     46c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     470:	e28db000 	add	fp, sp, #0
     474:	e24dd014 	sub	sp, sp, #20
     478:	e50b0010 	str	r0, [fp, #-16]
     47c:	e3a03000 	mov	r3, #0
     480:	e50b3008 	str	r3, [fp, #-8]
     484:	ea00000c 	b	4bc <atoi+0x50>
     488:	e51b2008 	ldr	r2, [fp, #-8]
     48c:	e1a03002 	mov	r3, r2
     490:	e1a03103 	lsl	r3, r3, #2
     494:	e0833002 	add	r3, r3, r2
     498:	e1a03083 	lsl	r3, r3, #1
     49c:	e1a01003 	mov	r1, r3
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e2832001 	add	r2, r3, #1
     4a8:	e50b2010 	str	r2, [fp, #-16]
     4ac:	e5d33000 	ldrb	r3, [r3]
     4b0:	e0813003 	add	r3, r1, r3
     4b4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b8:	e50b3008 	str	r3, [fp, #-8]
     4bc:	e51b3010 	ldr	r3, [fp, #-16]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e353002f 	cmp	r3, #47	@ 0x2f
     4c8:	9a000003 	bls	4dc <atoi+0x70>
     4cc:	e51b3010 	ldr	r3, [fp, #-16]
     4d0:	e5d33000 	ldrb	r3, [r3]
     4d4:	e3530039 	cmp	r3, #57	@ 0x39
     4d8:	9affffea 	bls	488 <atoi+0x1c>
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e1a00003 	mov	r0, r3
     4e4:	e28bd000 	add	sp, fp, #0
     4e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4ec:	e12fff1e 	bx	lr

000004f0 <memmove>:
     4f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f4:	e28db000 	add	fp, sp, #0
     4f8:	e24dd01c 	sub	sp, sp, #28
     4fc:	e50b0010 	str	r0, [fp, #-16]
     500:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     504:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     508:	e51b3010 	ldr	r3, [fp, #-16]
     50c:	e50b3008 	str	r3, [fp, #-8]
     510:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     514:	e50b300c 	str	r3, [fp, #-12]
     518:	ea000007 	b	53c <memmove+0x4c>
     51c:	e51b200c 	ldr	r2, [fp, #-12]
     520:	e2823001 	add	r3, r2, #1
     524:	e50b300c 	str	r3, [fp, #-12]
     528:	e51b3008 	ldr	r3, [fp, #-8]
     52c:	e2831001 	add	r1, r3, #1
     530:	e50b1008 	str	r1, [fp, #-8]
     534:	e5d22000 	ldrb	r2, [r2]
     538:	e5c32000 	strb	r2, [r3]
     53c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     540:	e2432001 	sub	r2, r3, #1
     544:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     548:	e3530000 	cmp	r3, #0
     54c:	cafffff2 	bgt	51c <memmove+0x2c>
     550:	e51b3010 	ldr	r3, [fp, #-16]
     554:	e1a00003 	mov	r0, r3
     558:	e28bd000 	add	sp, fp, #0
     55c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     560:	e12fff1e 	bx	lr

00000564 <fork>:
     564:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     568:	e1a04003 	mov	r4, r3
     56c:	e1a03002 	mov	r3, r2
     570:	e1a02001 	mov	r2, r1
     574:	e1a01000 	mov	r1, r0
     578:	e3a00001 	mov	r0, #1
     57c:	ef000000 	svc	0x00000000
     580:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     584:	e12fff1e 	bx	lr

00000588 <exit>:
     588:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     58c:	e1a04003 	mov	r4, r3
     590:	e1a03002 	mov	r3, r2
     594:	e1a02001 	mov	r2, r1
     598:	e1a01000 	mov	r1, r0
     59c:	e3a00002 	mov	r0, #2
     5a0:	ef000000 	svc	0x00000000
     5a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a8:	e12fff1e 	bx	lr

000005ac <wait>:
     5ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b0:	e1a04003 	mov	r4, r3
     5b4:	e1a03002 	mov	r3, r2
     5b8:	e1a02001 	mov	r2, r1
     5bc:	e1a01000 	mov	r1, r0
     5c0:	e3a00003 	mov	r0, #3
     5c4:	ef000000 	svc	0x00000000
     5c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <pipe>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00004 	mov	r0, #4
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <read>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00005 	mov	r0, #5
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <write>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00010 	mov	r0, #16
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <close>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00015 	mov	r0, #21
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <kill>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00006 	mov	r0, #6
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <exec>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00007 	mov	r0, #7
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <open>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a0000f 	mov	r0, #15
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <mknod>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00011 	mov	r0, #17
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <unlink>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00012 	mov	r0, #18
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <fstat>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a00008 	mov	r0, #8
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <link>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00013 	mov	r0, #19
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <mkdir>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00014 	mov	r0, #20
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <chdir>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00009 	mov	r0, #9
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <dup>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a0000a 	mov	r0, #10
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <getpid>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a0000b 	mov	r0, #11
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <sbrk>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a0000c 	mov	r0, #12
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <sleep>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000d 	mov	r0, #13
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <uptime>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000e 	mov	r0, #14
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <putc>:
     858:	e92d4800 	push	{fp, lr}
     85c:	e28db004 	add	fp, sp, #4
     860:	e24dd008 	sub	sp, sp, #8
     864:	e50b0008 	str	r0, [fp, #-8]
     868:	e1a03001 	mov	r3, r1
     86c:	e54b3009 	strb	r3, [fp, #-9]
     870:	e24b3009 	sub	r3, fp, #9
     874:	e3a02001 	mov	r2, #1
     878:	e1a01003 	mov	r1, r3
     87c:	e51b0008 	ldr	r0, [fp, #-8]
     880:	ebffff64 	bl	618 <write>
     884:	e1a00000 	nop			@ (mov r0, r0)
     888:	e24bd004 	sub	sp, fp, #4
     88c:	e8bd8800 	pop	{fp, pc}

00000890 <printint>:
     890:	e92d4800 	push	{fp, lr}
     894:	e28db004 	add	fp, sp, #4
     898:	e24dd030 	sub	sp, sp, #48	@ 0x30
     89c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8a0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8a4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8a8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8ac:	e3a03000 	mov	r3, #0
     8b0:	e50b300c 	str	r3, [fp, #-12]
     8b4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8b8:	e3530000 	cmp	r3, #0
     8bc:	0a000008 	beq	8e4 <printint+0x54>
     8c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8c4:	e3530000 	cmp	r3, #0
     8c8:	aa000005 	bge	8e4 <printint+0x54>
     8cc:	e3a03001 	mov	r3, #1
     8d0:	e50b300c 	str	r3, [fp, #-12]
     8d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8d8:	e2633000 	rsb	r3, r3, #0
     8dc:	e50b3010 	str	r3, [fp, #-16]
     8e0:	ea000001 	b	8ec <printint+0x5c>
     8e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8e8:	e50b3010 	str	r3, [fp, #-16]
     8ec:	e3a03000 	mov	r3, #0
     8f0:	e50b3008 	str	r3, [fp, #-8]
     8f4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8f8:	e51b3010 	ldr	r3, [fp, #-16]
     8fc:	e1a01002 	mov	r1, r2
     900:	e1a00003 	mov	r0, r3
     904:	eb0001d5 	bl	1060 <__aeabi_uidivmod>
     908:	e1a03001 	mov	r3, r1
     90c:	e1a01003 	mov	r1, r3
     910:	e51b3008 	ldr	r3, [fp, #-8]
     914:	e2832001 	add	r2, r3, #1
     918:	e50b2008 	str	r2, [fp, #-8]
     91c:	e59f20a0 	ldr	r2, [pc, #160]	@ 9c4 <printint+0x134>
     920:	e7d22001 	ldrb	r2, [r2, r1]
     924:	e2433004 	sub	r3, r3, #4
     928:	e083300b 	add	r3, r3, fp
     92c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     930:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     934:	e1a01003 	mov	r1, r3
     938:	e51b0010 	ldr	r0, [fp, #-16]
     93c:	eb00018a 	bl	f6c <__udivsi3>
     940:	e1a03000 	mov	r3, r0
     944:	e50b3010 	str	r3, [fp, #-16]
     948:	e51b3010 	ldr	r3, [fp, #-16]
     94c:	e3530000 	cmp	r3, #0
     950:	1affffe7 	bne	8f4 <printint+0x64>
     954:	e51b300c 	ldr	r3, [fp, #-12]
     958:	e3530000 	cmp	r3, #0
     95c:	0a00000e 	beq	99c <printint+0x10c>
     960:	e51b3008 	ldr	r3, [fp, #-8]
     964:	e2832001 	add	r2, r3, #1
     968:	e50b2008 	str	r2, [fp, #-8]
     96c:	e2433004 	sub	r3, r3, #4
     970:	e083300b 	add	r3, r3, fp
     974:	e3a0202d 	mov	r2, #45	@ 0x2d
     978:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     97c:	ea000006 	b	99c <printint+0x10c>
     980:	e24b2020 	sub	r2, fp, #32
     984:	e51b3008 	ldr	r3, [fp, #-8]
     988:	e0823003 	add	r3, r2, r3
     98c:	e5d33000 	ldrb	r3, [r3]
     990:	e1a01003 	mov	r1, r3
     994:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     998:	ebffffae 	bl	858 <putc>
     99c:	e51b3008 	ldr	r3, [fp, #-8]
     9a0:	e2433001 	sub	r3, r3, #1
     9a4:	e50b3008 	str	r3, [fp, #-8]
     9a8:	e51b3008 	ldr	r3, [fp, #-8]
     9ac:	e3530000 	cmp	r3, #0
     9b0:	aafffff2 	bge	980 <printint+0xf0>
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e1a00000 	nop			@ (mov r0, r0)
     9bc:	e24bd004 	sub	sp, fp, #4
     9c0:	e8bd8800 	pop	{fp, pc}
     9c4:	000010d4 	.word	0x000010d4

000009c8 <printf>:
     9c8:	e92d000e 	push	{r1, r2, r3}
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9d8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9dc:	e3a03000 	mov	r3, #0
     9e0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9e4:	e28b3008 	add	r3, fp, #8
     9e8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9ec:	e3a03000 	mov	r3, #0
     9f0:	e50b3010 	str	r3, [fp, #-16]
     9f4:	ea000074 	b	bcc <printf+0x204>
     9f8:	e59b2004 	ldr	r2, [fp, #4]
     9fc:	e51b3010 	ldr	r3, [fp, #-16]
     a00:	e0823003 	add	r3, r2, r3
     a04:	e5d33000 	ldrb	r3, [r3]
     a08:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a10:	e3530000 	cmp	r3, #0
     a14:	1a00000b 	bne	a48 <printf+0x80>
     a18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a1c:	e3530025 	cmp	r3, #37	@ 0x25
     a20:	1a000002 	bne	a30 <printf+0x68>
     a24:	e3a03025 	mov	r3, #37	@ 0x25
     a28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a2c:	ea000063 	b	bc0 <printf+0x1f8>
     a30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a34:	e6ef3073 	uxtb	r3, r3
     a38:	e1a01003 	mov	r1, r3
     a3c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a40:	ebffff84 	bl	858 <putc>
     a44:	ea00005d 	b	bc0 <printf+0x1f8>
     a48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a4c:	e3530025 	cmp	r3, #37	@ 0x25
     a50:	1a00005a 	bne	bc0 <printf+0x1f8>
     a54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a58:	e3530064 	cmp	r3, #100	@ 0x64
     a5c:	1a00000a 	bne	a8c <printf+0xc4>
     a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a64:	e5933000 	ldr	r3, [r3]
     a68:	e1a01003 	mov	r1, r3
     a6c:	e3a03001 	mov	r3, #1
     a70:	e3a0200a 	mov	r2, #10
     a74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a78:	ebffff84 	bl	890 <printint>
     a7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a80:	e2833004 	add	r3, r3, #4
     a84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a88:	ea00004a 	b	bb8 <printf+0x1f0>
     a8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a90:	e3530078 	cmp	r3, #120	@ 0x78
     a94:	0a000002 	beq	aa4 <printf+0xdc>
     a98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a9c:	e3530070 	cmp	r3, #112	@ 0x70
     aa0:	1a00000a 	bne	ad0 <printf+0x108>
     aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	e5933000 	ldr	r3, [r3]
     aac:	e1a01003 	mov	r1, r3
     ab0:	e3a03000 	mov	r3, #0
     ab4:	e3a02010 	mov	r2, #16
     ab8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     abc:	ebffff73 	bl	890 <printint>
     ac0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac4:	e2833004 	add	r3, r3, #4
     ac8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     acc:	ea000039 	b	bb8 <printf+0x1f0>
     ad0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad4:	e3530073 	cmp	r3, #115	@ 0x73
     ad8:	1a000018 	bne	b40 <printf+0x178>
     adc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae0:	e5933000 	ldr	r3, [r3]
     ae4:	e50b300c 	str	r3, [fp, #-12]
     ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aec:	e2833004 	add	r3, r3, #4
     af0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e51b300c 	ldr	r3, [fp, #-12]
     af8:	e3530000 	cmp	r3, #0
     afc:	1a00000a 	bne	b2c <printf+0x164>
     b00:	e59f30f4 	ldr	r3, [pc, #244]	@ bfc <printf+0x234>
     b04:	e50b300c 	str	r3, [fp, #-12]
     b08:	ea000007 	b	b2c <printf+0x164>
     b0c:	e51b300c 	ldr	r3, [fp, #-12]
     b10:	e5d33000 	ldrb	r3, [r3]
     b14:	e1a01003 	mov	r1, r3
     b18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b1c:	ebffff4d 	bl	858 <putc>
     b20:	e51b300c 	ldr	r3, [fp, #-12]
     b24:	e2833001 	add	r3, r3, #1
     b28:	e50b300c 	str	r3, [fp, #-12]
     b2c:	e51b300c 	ldr	r3, [fp, #-12]
     b30:	e5d33000 	ldrb	r3, [r3]
     b34:	e3530000 	cmp	r3, #0
     b38:	1afffff3 	bne	b0c <printf+0x144>
     b3c:	ea00001d 	b	bb8 <printf+0x1f0>
     b40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b44:	e3530063 	cmp	r3, #99	@ 0x63
     b48:	1a000009 	bne	b74 <printf+0x1ac>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e5933000 	ldr	r3, [r3]
     b54:	e6ef3073 	uxtb	r3, r3
     b58:	e1a01003 	mov	r1, r3
     b5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b60:	ebffff3c 	bl	858 <putc>
     b64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b68:	e2833004 	add	r3, r3, #4
     b6c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b70:	ea000010 	b	bb8 <printf+0x1f0>
     b74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b78:	e3530025 	cmp	r3, #37	@ 0x25
     b7c:	1a000005 	bne	b98 <printf+0x1d0>
     b80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b84:	e6ef3073 	uxtb	r3, r3
     b88:	e1a01003 	mov	r1, r3
     b8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b90:	ebffff30 	bl	858 <putc>
     b94:	ea000007 	b	bb8 <printf+0x1f0>
     b98:	e3a01025 	mov	r1, #37	@ 0x25
     b9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba0:	ebffff2c 	bl	858 <putc>
     ba4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba8:	e6ef3073 	uxtb	r3, r3
     bac:	e1a01003 	mov	r1, r3
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff27 	bl	858 <putc>
     bb8:	e3a03000 	mov	r3, #0
     bbc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bc0:	e51b3010 	ldr	r3, [fp, #-16]
     bc4:	e2833001 	add	r3, r3, #1
     bc8:	e50b3010 	str	r3, [fp, #-16]
     bcc:	e59b2004 	ldr	r2, [fp, #4]
     bd0:	e51b3010 	ldr	r3, [fp, #-16]
     bd4:	e0823003 	add	r3, r2, r3
     bd8:	e5d33000 	ldrb	r3, [r3]
     bdc:	e3530000 	cmp	r3, #0
     be0:	1affff84 	bne	9f8 <printf+0x30>
     be4:	e1a00000 	nop			@ (mov r0, r0)
     be8:	e1a00000 	nop			@ (mov r0, r0)
     bec:	e24bd004 	sub	sp, fp, #4
     bf0:	e8bd4800 	pop	{fp, lr}
     bf4:	e28dd00c 	add	sp, sp, #12
     bf8:	e12fff1e 	bx	lr
     bfc:	000010cc 	.word	0x000010cc

00000c00 <free>:
     c00:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c04:	e28db000 	add	fp, sp, #0
     c08:	e24dd014 	sub	sp, sp, #20
     c0c:	e50b0010 	str	r0, [fp, #-16]
     c10:	e51b3010 	ldr	r3, [fp, #-16]
     c14:	e2433008 	sub	r3, r3, #8
     c18:	e50b300c 	str	r3, [fp, #-12]
     c1c:	e59f3154 	ldr	r3, [pc, #340]	@ d78 <free+0x178>
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e50b3008 	str	r3, [fp, #-8]
     c28:	ea000010 	b	c70 <free+0x70>
     c2c:	e51b3008 	ldr	r3, [fp, #-8]
     c30:	e5933000 	ldr	r3, [r3]
     c34:	e51b2008 	ldr	r2, [fp, #-8]
     c38:	e1520003 	cmp	r2, r3
     c3c:	3a000008 	bcc	c64 <free+0x64>
     c40:	e51b200c 	ldr	r2, [fp, #-12]
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e1520003 	cmp	r2, r3
     c4c:	8a000010 	bhi	c94 <free+0x94>
     c50:	e51b3008 	ldr	r3, [fp, #-8]
     c54:	e5933000 	ldr	r3, [r3]
     c58:	e51b200c 	ldr	r2, [fp, #-12]
     c5c:	e1520003 	cmp	r2, r3
     c60:	3a00000b 	bcc	c94 <free+0x94>
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e50b3008 	str	r3, [fp, #-8]
     c70:	e51b200c 	ldr	r2, [fp, #-12]
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e1520003 	cmp	r2, r3
     c7c:	9affffea 	bls	c2c <free+0x2c>
     c80:	e51b3008 	ldr	r3, [fp, #-8]
     c84:	e5933000 	ldr	r3, [r3]
     c88:	e51b200c 	ldr	r2, [fp, #-12]
     c8c:	e1520003 	cmp	r2, r3
     c90:	2affffe5 	bcs	c2c <free+0x2c>
     c94:	e51b300c 	ldr	r3, [fp, #-12]
     c98:	e5933004 	ldr	r3, [r3, #4]
     c9c:	e1a03183 	lsl	r3, r3, #3
     ca0:	e51b200c 	ldr	r2, [fp, #-12]
     ca4:	e0822003 	add	r2, r2, r3
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	1a00000d 	bne	cf0 <free+0xf0>
     cb8:	e51b300c 	ldr	r3, [fp, #-12]
     cbc:	e5932004 	ldr	r2, [r3, #4]
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e5933000 	ldr	r3, [r3]
     cc8:	e5933004 	ldr	r3, [r3, #4]
     ccc:	e0822003 	add	r2, r2, r3
     cd0:	e51b300c 	ldr	r3, [fp, #-12]
     cd4:	e5832004 	str	r2, [r3, #4]
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e5932000 	ldr	r2, [r3]
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e5832000 	str	r2, [r3]
     cec:	ea000003 	b	d00 <free+0x100>
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5932000 	ldr	r2, [r3]
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5832000 	str	r2, [r3]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933004 	ldr	r3, [r3, #4]
     d08:	e1a03183 	lsl	r3, r3, #3
     d0c:	e51b2008 	ldr	r2, [fp, #-8]
     d10:	e0823003 	add	r3, r2, r3
     d14:	e51b200c 	ldr	r2, [fp, #-12]
     d18:	e1520003 	cmp	r2, r3
     d1c:	1a00000b 	bne	d50 <free+0x150>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5932004 	ldr	r2, [r3, #4]
     d28:	e51b300c 	ldr	r3, [fp, #-12]
     d2c:	e5933004 	ldr	r3, [r3, #4]
     d30:	e0822003 	add	r2, r2, r3
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5832004 	str	r2, [r3, #4]
     d3c:	e51b300c 	ldr	r3, [fp, #-12]
     d40:	e5932000 	ldr	r2, [r3]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5832000 	str	r2, [r3]
     d4c:	ea000002 	b	d5c <free+0x15c>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e5832000 	str	r2, [r3]
     d5c:	e59f2014 	ldr	r2, [pc, #20]	@ d78 <free+0x178>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e5823000 	str	r3, [r2]
     d68:	e1a00000 	nop			@ (mov r0, r0)
     d6c:	e28bd000 	add	sp, fp, #0
     d70:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d74:	e12fff1e 	bx	lr
     d78:	000010f0 	.word	0x000010f0

00000d7c <morecore>:
     d7c:	e92d4800 	push	{fp, lr}
     d80:	e28db004 	add	fp, sp, #4
     d84:	e24dd010 	sub	sp, sp, #16
     d88:	e50b0010 	str	r0, [fp, #-16]
     d8c:	e51b3010 	ldr	r3, [fp, #-16]
     d90:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d94:	2a000001 	bcs	da0 <morecore+0x24>
     d98:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d9c:	e50b3010 	str	r3, [fp, #-16]
     da0:	e51b3010 	ldr	r3, [fp, #-16]
     da4:	e1a03183 	lsl	r3, r3, #3
     da8:	e1a00003 	mov	r0, r3
     dac:	ebfffe8e 	bl	7ec <sbrk>
     db0:	e50b0008 	str	r0, [fp, #-8]
     db4:	e51b3008 	ldr	r3, [fp, #-8]
     db8:	e3730001 	cmn	r3, #1
     dbc:	1a000001 	bne	dc8 <morecore+0x4c>
     dc0:	e3a03000 	mov	r3, #0
     dc4:	ea00000a 	b	df4 <morecore+0x78>
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e50b300c 	str	r3, [fp, #-12]
     dd0:	e51b300c 	ldr	r3, [fp, #-12]
     dd4:	e51b2010 	ldr	r2, [fp, #-16]
     dd8:	e5832004 	str	r2, [r3, #4]
     ddc:	e51b300c 	ldr	r3, [fp, #-12]
     de0:	e2833008 	add	r3, r3, #8
     de4:	e1a00003 	mov	r0, r3
     de8:	ebffff84 	bl	c00 <free>
     dec:	e59f300c 	ldr	r3, [pc, #12]	@ e00 <morecore+0x84>
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e1a00003 	mov	r0, r3
     df8:	e24bd004 	sub	sp, fp, #4
     dfc:	e8bd8800 	pop	{fp, pc}
     e00:	000010f0 	.word	0x000010f0

00000e04 <malloc>:
     e04:	e92d4800 	push	{fp, lr}
     e08:	e28db004 	add	fp, sp, #4
     e0c:	e24dd018 	sub	sp, sp, #24
     e10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e18:	e2833007 	add	r3, r3, #7
     e1c:	e1a031a3 	lsr	r3, r3, #3
     e20:	e2833001 	add	r3, r3, #1
     e24:	e50b3010 	str	r3, [fp, #-16]
     e28:	e59f3134 	ldr	r3, [pc, #308]	@ f64 <malloc+0x160>
     e2c:	e5933000 	ldr	r3, [r3]
     e30:	e50b300c 	str	r3, [fp, #-12]
     e34:	e51b300c 	ldr	r3, [fp, #-12]
     e38:	e3530000 	cmp	r3, #0
     e3c:	1a00000b 	bne	e70 <malloc+0x6c>
     e40:	e59f3120 	ldr	r3, [pc, #288]	@ f68 <malloc+0x164>
     e44:	e50b300c 	str	r3, [fp, #-12]
     e48:	e59f2114 	ldr	r2, [pc, #276]	@ f64 <malloc+0x160>
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5823000 	str	r3, [r2]
     e54:	e59f3108 	ldr	r3, [pc, #264]	@ f64 <malloc+0x160>
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e59f2104 	ldr	r2, [pc, #260]	@ f68 <malloc+0x164>
     e60:	e5823000 	str	r3, [r2]
     e64:	e59f30fc 	ldr	r3, [pc, #252]	@ f68 <malloc+0x164>
     e68:	e3a02000 	mov	r2, #0
     e6c:	e5832004 	str	r2, [r3, #4]
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5933000 	ldr	r3, [r3]
     e78:	e50b3008 	str	r3, [fp, #-8]
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5933004 	ldr	r3, [r3, #4]
     e84:	e51b2010 	ldr	r2, [fp, #-16]
     e88:	e1520003 	cmp	r2, r3
     e8c:	8a00001e 	bhi	f0c <malloc+0x108>
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933004 	ldr	r3, [r3, #4]
     e98:	e51b2010 	ldr	r2, [fp, #-16]
     e9c:	e1520003 	cmp	r2, r3
     ea0:	1a000004 	bne	eb8 <malloc+0xb4>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5932000 	ldr	r2, [r3]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e5832000 	str	r2, [r3]
     eb4:	ea00000e 	b	ef4 <malloc+0xf0>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5932004 	ldr	r2, [r3, #4]
     ec0:	e51b3010 	ldr	r3, [fp, #-16]
     ec4:	e0422003 	sub	r2, r2, r3
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5832004 	str	r2, [r3, #4]
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e5933004 	ldr	r3, [r3, #4]
     ed8:	e1a03183 	lsl	r3, r3, #3
     edc:	e51b2008 	ldr	r2, [fp, #-8]
     ee0:	e0823003 	add	r3, r2, r3
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e51b2010 	ldr	r2, [fp, #-16]
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e59f2068 	ldr	r2, [pc, #104]	@ f64 <malloc+0x160>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5823000 	str	r3, [r2]
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e2833008 	add	r3, r3, #8
     f08:	ea000012 	b	f58 <malloc+0x154>
     f0c:	e59f3050 	ldr	r3, [pc, #80]	@ f64 <malloc+0x160>
     f10:	e5933000 	ldr	r3, [r3]
     f14:	e51b2008 	ldr	r2, [fp, #-8]
     f18:	e1520003 	cmp	r2, r3
     f1c:	1a000007 	bne	f40 <malloc+0x13c>
     f20:	e51b0010 	ldr	r0, [fp, #-16]
     f24:	ebffff94 	bl	d7c <morecore>
     f28:	e50b0008 	str	r0, [fp, #-8]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e3530000 	cmp	r3, #0
     f34:	1a000001 	bne	f40 <malloc+0x13c>
     f38:	e3a03000 	mov	r3, #0
     f3c:	ea000005 	b	f58 <malloc+0x154>
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b3008 	ldr	r3, [fp, #-8]
     f4c:	e5933000 	ldr	r3, [r3]
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	eaffffc8 	b	e7c <malloc+0x78>
     f58:	e1a00003 	mov	r0, r3
     f5c:	e24bd004 	sub	sp, fp, #4
     f60:	e8bd8800 	pop	{fp, pc}
     f64:	000010f0 	.word	0x000010f0
     f68:	000010e8 	.word	0x000010e8

00000f6c <__udivsi3>:
     f6c:	e2512001 	subs	r2, r1, #1
     f70:	012fff1e 	bxeq	lr
     f74:	3a000036 	bcc	1054 <__udivsi3+0xe8>
     f78:	e1500001 	cmp	r0, r1
     f7c:	9a000022 	bls	100c <__udivsi3+0xa0>
     f80:	e1110002 	tst	r1, r2
     f84:	0a000023 	beq	1018 <__udivsi3+0xac>
     f88:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f8c:	01a01181 	lsleq	r1, r1, #3
     f90:	03a03008 	moveq	r3, #8
     f94:	13a03001 	movne	r3, #1
     f98:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f9c:	31510000 	cmpcc	r1, r0
     fa0:	31a01201 	lslcc	r1, r1, #4
     fa4:	31a03203 	lslcc	r3, r3, #4
     fa8:	3afffffa 	bcc	f98 <__udivsi3+0x2c>
     fac:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fb0:	31510000 	cmpcc	r1, r0
     fb4:	31a01081 	lslcc	r1, r1, #1
     fb8:	31a03083 	lslcc	r3, r3, #1
     fbc:	3afffffa 	bcc	fac <__udivsi3+0x40>
     fc0:	e3a02000 	mov	r2, #0
     fc4:	e1500001 	cmp	r0, r1
     fc8:	20400001 	subcs	r0, r0, r1
     fcc:	21822003 	orrcs	r2, r2, r3
     fd0:	e15000a1 	cmp	r0, r1, lsr #1
     fd4:	204000a1 	subcs	r0, r0, r1, lsr #1
     fd8:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fdc:	e1500121 	cmp	r0, r1, lsr #2
     fe0:	20400121 	subcs	r0, r0, r1, lsr #2
     fe4:	21822123 	orrcs	r2, r2, r3, lsr #2
     fe8:	e15001a1 	cmp	r0, r1, lsr #3
     fec:	204001a1 	subcs	r0, r0, r1, lsr #3
     ff0:	218221a3 	orrcs	r2, r2, r3, lsr #3
     ff4:	e3500000 	cmp	r0, #0
     ff8:	11b03223 	lsrsne	r3, r3, #4
     ffc:	11a01221 	lsrne	r1, r1, #4
    1000:	1affffef 	bne	fc4 <__udivsi3+0x58>
    1004:	e1a00002 	mov	r0, r2
    1008:	e12fff1e 	bx	lr
    100c:	03a00001 	moveq	r0, #1
    1010:	13a00000 	movne	r0, #0
    1014:	e12fff1e 	bx	lr
    1018:	e3510801 	cmp	r1, #65536	@ 0x10000
    101c:	21a01821 	lsrcs	r1, r1, #16
    1020:	23a02010 	movcs	r2, #16
    1024:	33a02000 	movcc	r2, #0
    1028:	e3510c01 	cmp	r1, #256	@ 0x100
    102c:	21a01421 	lsrcs	r1, r1, #8
    1030:	22822008 	addcs	r2, r2, #8
    1034:	e3510010 	cmp	r1, #16
    1038:	21a01221 	lsrcs	r1, r1, #4
    103c:	22822004 	addcs	r2, r2, #4
    1040:	e3510004 	cmp	r1, #4
    1044:	82822003 	addhi	r2, r2, #3
    1048:	908220a1 	addls	r2, r2, r1, lsr #1
    104c:	e1a00230 	lsr	r0, r0, r2
    1050:	e12fff1e 	bx	lr
    1054:	e3500000 	cmp	r0, #0
    1058:	13e00000 	mvnne	r0, #0
    105c:	ea000007 	b	1080 <__aeabi_idiv0>

00001060 <__aeabi_uidivmod>:
    1060:	e3510000 	cmp	r1, #0
    1064:	0afffffa 	beq	1054 <__udivsi3+0xe8>
    1068:	e92d4003 	push	{r0, r1, lr}
    106c:	ebffffbe 	bl	f6c <__udivsi3>
    1070:	e8bd4006 	pop	{r1, r2, lr}
    1074:	e0030092 	mul	r3, r2, r0
    1078:	e0411003 	sub	r1, r1, r3
    107c:	e12fff1e 	bx	lr

00001080 <__aeabi_idiv0>:
    1080:	e12fff1e 	bx	lr
