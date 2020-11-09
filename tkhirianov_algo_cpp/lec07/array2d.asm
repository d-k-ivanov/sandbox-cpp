
.\a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 d5 34 00 00 	mov    0x34d5(%rip),%rax        # 4044f0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 d6 34 00 00 	mov    0x34d6(%rip),%rax        # 404500 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 d9 34 00 00 	mov    0x34d9(%rip),%rax        # 404510 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 9c 34 00 00 	mov    0x349c(%rip),%rax        # 4044e0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 5f 33 00 00 	mov    0x335f(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 69                	je     4010d0 <pre_c_init+0xc0>
  401067:	48 8b 05 62 34 00 00 	mov    0x3462(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  40106e:	89 0d ac 5f 00 00    	mov    %ecx,0x5fac(%rip)        # 407020 <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	74 46                	je     4010c0 <pre_c_init+0xb0>
  40107a:	b9 02 00 00 00       	mov    $0x2,%ecx
  40107f:	e8 a4 19 00 00       	callq  402a28 <__set_app_type>
  401084:	e8 27 1a 00 00       	callq  402ab0 <__p__fmode>
  401089:	48 8b 15 00 34 00 00 	mov    0x3400(%rip),%rdx        # 404490 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 07 1a 00 00       	callq  402aa0 <__p__commode>
  401099:	48 8b 15 d0 33 00 00 	mov    0x33d0(%rip),%rdx        # 404470 <.refptr._commode>
  4010a0:	8b 12                	mov    (%rdx),%edx
  4010a2:	89 10                	mov    %edx,(%rax)
  4010a4:	e8 e7 09 00 00       	callq  401a90 <_setargv>
  4010a9:	48 8b 05 90 32 00 00 	mov    0x3290(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010b0:	83 38 01             	cmpl   $0x1,(%rax)
  4010b3:	74 53                	je     401108 <pre_c_init+0xf8>
  4010b5:	31 c0                	xor    %eax,%eax
  4010b7:	48 83 c4 28          	add    $0x28,%rsp
  4010bb:	c3                   	retq   
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010c5:	e8 5e 19 00 00       	callq  402a28 <__set_app_type>
  4010ca:	eb b8                	jmp    401084 <pre_c_init+0x74>
  4010cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010d9:	74 45                	je     401120 <pre_c_init+0x110>
  4010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010e0:	75 85                	jne    401067 <pre_c_init+0x57>
  4010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010e9:	0f 86 78 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  4010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010f5:	31 c9                	xor    %ecx,%ecx
  4010f7:	85 d2                	test   %edx,%edx
  4010f9:	0f 95 c1             	setne  %cl
  4010fc:	e9 66 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401108:	48 8d 0d 61 0a 00 00 	lea    0xa61(%rip),%rcx        # 401b70 <_matherr>
  40110f:	e8 2c 10 00 00       	callq  402140 <__mingw_setusermatherr>
  401114:	31 c0                	xor    %eax,%eax
  401116:	48 83 c4 28          	add    $0x28,%rsp
  40111a:	c3                   	retq   
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401124:	0f 86 3d ff ff ff    	jbe    401067 <pre_c_init+0x57>
  40112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401131:	31 c9                	xor    %ecx,%ecx
  401133:	45 85 c0             	test   %r8d,%r8d
  401136:	0f 95 c1             	setne  %cl
  401139:	e9 29 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  40113e:	66 90                	xchg   %ax,%ax

0000000000401140 <pre_cpp_init>:
  401140:	48 83 ec 38          	sub    $0x38,%rsp
  401144:	48 8b 05 75 33 00 00 	mov    0x3375(%rip),%rax        # 4044c0 <.refptr._newmode>
  40114b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407028 <envp>
  401152:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407030 <argv>
  401159:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407038 <argc>
  401160:	8b 00                	mov    (%rax),%eax
  401162:	89 05 b0 5e 00 00    	mov    %eax,0x5eb0(%rip)        # 407018 <startinfo>
  401168:	48 8d 05 a9 5e 00 00 	lea    0x5ea9(%rip),%rax        # 407018 <startinfo>
  40116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401174:	48 8b 05 05 33 00 00 	mov    0x3305(%rip),%rax        # 404480 <.refptr._dowildcard>
  40117b:	44 8b 08             	mov    (%rax),%r9d
  40117e:	e8 b5 18 00 00       	callq  402a38 <__getmainargs>
  401183:	90                   	nop
  401184:	48 83 c4 38          	add    $0x38,%rsp
  401188:	c3                   	retq   
  401189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401190 <__tmainCRTStartup>:
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	57                   	push   %rdi
  401196:	56                   	push   %rsi
  401197:	53                   	push   %rbx
  401198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  4011a4:	31 c0                	xor    %eax,%eax
  4011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4011ab:	4c 89 c7             	mov    %r8,%rdi
  4011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011b1:	48 8b 3d 18 33 00 00 	mov    0x3318(%rip),%rdi        # 4044d0 <.refptr.mingw_app_type>
  4011b8:	44 8b 0f             	mov    (%rdi),%r9d
  4011bb:	45 85 c9             	test   %r9d,%r9d
  4011be:	0f 85 9c 02 00 00    	jne    401460 <__tmainCRTStartup+0x2d0>
  4011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011cb:	00 00 
  4011cd:	48 8b 1d 3c 32 00 00 	mov    0x323c(%rip),%rbx        # 404410 <.refptr.__native_startup_lock>
  4011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011d8:	31 ed                	xor    %ebp,%ebp
  4011da:	4c 8b 25 27 70 00 00 	mov    0x7027(%rip),%r12        # 408208 <__imp_Sleep>
  4011e1:	eb 16                	jmp    4011f9 <__tmainCRTStartup+0x69>
  4011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e8:	48 39 c6             	cmp    %rax,%rsi
  4011eb:	0f 84 17 02 00 00    	je     401408 <__tmainCRTStartup+0x278>
  4011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011f6:	41 ff d4             	callq  *%r12
  4011f9:	48 89 e8             	mov    %rbp,%rax
  4011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  401201:	48 85 c0             	test   %rax,%rax
  401204:	75 e2                	jne    4011e8 <__tmainCRTStartup+0x58>
  401206:	48 8b 35 13 32 00 00 	mov    0x3213(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40120d:	31 ed                	xor    %ebp,%ebp
  40120f:	8b 06                	mov    (%rsi),%eax
  401211:	83 f8 01             	cmp    $0x1,%eax
  401214:	0f 84 05 02 00 00    	je     40141f <__tmainCRTStartup+0x28f>
  40121a:	8b 06                	mov    (%rsi),%eax
  40121c:	85 c0                	test   %eax,%eax
  40121e:	0f 84 6c 02 00 00    	je     401490 <__tmainCRTStartup+0x300>
  401224:	c7 05 ee 5d 00 00 01 	movl   $0x1,0x5dee(%rip)        # 40701c <has_cctor>
  40122b:	00 00 00 
  40122e:	8b 06                	mov    (%rsi),%eax
  401230:	83 f8 01             	cmp    $0x1,%eax
  401233:	0f 84 fb 01 00 00    	je     401434 <__tmainCRTStartup+0x2a4>
  401239:	85 ed                	test   %ebp,%ebp
  40123b:	0f 84 14 02 00 00    	je     401455 <__tmainCRTStartup+0x2c5>
  401241:	48 8b 05 58 31 00 00 	mov    0x3158(%rip),%rax        # 4043a0 <.refptr.__dyn_tls_init_callback>
  401248:	48 8b 00             	mov    (%rax),%rax
  40124b:	48 85 c0             	test   %rax,%rax
  40124e:	74 0c                	je     40125c <__tmainCRTStartup+0xcc>
  401250:	45 31 c0             	xor    %r8d,%r8d
  401253:	ba 02 00 00 00       	mov    $0x2,%edx
  401258:	31 c9                	xor    %ecx,%ecx
  40125a:	ff d0                	callq  *%rax
  40125c:	e8 ff 0b 00 00       	callq  401e60 <_pei386_runtime_relocator>
  401261:	48 8d 0d e8 0e 00 00 	lea    0xee8(%rip),%rcx        # 402150 <_gnu_exception_handler>
  401268:	ff 15 92 6f 00 00    	callq  *0x6f92(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  40126e:	48 8b 15 8b 31 00 00 	mov    0x318b(%rip),%rdx        # 404400 <.refptr.__mingw_oldexcpt_handler>
  401275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40127c:	48 89 02             	mov    %rax,(%rdx)
  40127f:	e8 fc 17 00 00       	callq  402a80 <_set_invalid_parameter_handler>
  401284:	e8 e7 09 00 00       	callq  401c70 <_fpreset>
  401289:	48 8b 05 20 31 00 00 	mov    0x3120(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401290:	48 89 05 79 5d 00 00 	mov    %rax,0x5d79(%rip)        # 407010 <__mingw_winmain_hInstance>
  401297:	e8 f4 17 00 00       	callq  402a90 <__p__acmdln>
  40129c:	31 c9                	xor    %ecx,%ecx
  40129e:	48 8b 00             	mov    (%rax),%rax
  4012a1:	48 85 c0             	test   %rax,%rax
  4012a4:	75 1c                	jne    4012c2 <__tmainCRTStartup+0x132>
  4012a6:	eb 58                	jmp    401300 <__tmainCRTStartup+0x170>
  4012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4012af:	00 
  4012b0:	84 d2                	test   %dl,%dl
  4012b2:	74 45                	je     4012f9 <__tmainCRTStartup+0x169>
  4012b4:	83 e1 01             	and    $0x1,%ecx
  4012b7:	74 27                	je     4012e0 <__tmainCRTStartup+0x150>
  4012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012be:	48 83 c0 01          	add    $0x1,%rax
  4012c2:	0f b6 10             	movzbl (%rax),%edx
  4012c5:	80 fa 20             	cmp    $0x20,%dl
  4012c8:	7e e6                	jle    4012b0 <__tmainCRTStartup+0x120>
  4012ca:	41 89 c8             	mov    %ecx,%r8d
  4012cd:	41 83 f0 01          	xor    $0x1,%r8d
  4012d1:	80 fa 22             	cmp    $0x22,%dl
  4012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012d8:	eb e4                	jmp    4012be <__tmainCRTStartup+0x12e>
  4012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012e0:	84 d2                	test   %dl,%dl
  4012e2:	74 15                	je     4012f9 <__tmainCRTStartup+0x169>
  4012e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012ec:	48 83 c0 01          	add    $0x1,%rax
  4012f0:	84 d2                	test   %dl,%dl
  4012f2:	74 05                	je     4012f9 <__tmainCRTStartup+0x169>
  4012f4:	80 fa 20             	cmp    $0x20,%dl
  4012f7:	7e ef                	jle    4012e8 <__tmainCRTStartup+0x158>
  4012f9:	48 89 05 08 5d 00 00 	mov    %rax,0x5d08(%rip)        # 407008 <__mingw_winmain_lpCmdLine>
  401300:	44 8b 07             	mov    (%rdi),%r8d
  401303:	45 85 c0             	test   %r8d,%r8d
  401306:	74 16                	je     40131e <__tmainCRTStartup+0x18e>
  401308:	b8 0a 00 00 00       	mov    $0xa,%eax
  40130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401312:	0f 85 e0 00 00 00    	jne    4013f8 <__tmainCRTStartup+0x268>
  401318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 403000 <__data_start__>
  40131e:	48 63 2d 13 5d 00 00 	movslq 0x5d13(%rip),%rbp        # 407038 <argc>
  401325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401329:	4d 63 e4             	movslq %r12d,%r12
  40132c:	49 c1 e4 03          	shl    $0x3,%r12
  401330:	4c 89 e1             	mov    %r12,%rcx
  401333:	e8 90 16 00 00       	callq  4029c8 <malloc>
  401338:	4c 8b 2d f1 5c 00 00 	mov    0x5cf1(%rip),%r13        # 407030 <argv>
  40133f:	48 89 c7             	mov    %rax,%rdi
  401342:	85 ed                	test   %ebp,%ebp
  401344:	7e 42                	jle    401388 <__tmainCRTStartup+0x1f8>
  401346:	31 db                	xor    %ebx,%ebx
  401348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40134f:	00 
  401350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401355:	e8 56 16 00 00       	callq  4029b0 <strlen>
  40135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135e:	48 89 f1             	mov    %rsi,%rcx
  401361:	e8 62 16 00 00       	callq  4029c8 <malloc>
  401366:	49 89 f0             	mov    %rsi,%r8
  401369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401372:	48 89 c1             	mov    %rax,%rcx
  401375:	48 83 c3 01          	add    $0x1,%rbx
  401379:	e8 42 16 00 00       	callq  4029c0 <memcpy>
  40137e:	48 39 dd             	cmp    %rbx,%rbp
  401381:	75 cd                	jne    401350 <__tmainCRTStartup+0x1c0>
  401383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  401388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138f:	48 89 3d 9a 5c 00 00 	mov    %rdi,0x5c9a(%rip)        # 407030 <argv>
  401396:	e8 c5 06 00 00       	callq  401a60 <__main>
  40139b:	48 8b 05 1e 30 00 00 	mov    0x301e(%rip),%rax        # 4043c0 <.refptr.__imp___initenv>
  4013a2:	4c 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%r8        # 407028 <envp>
  4013a9:	8b 0d 89 5c 00 00    	mov    0x5c89(%rip),%ecx        # 407038 <argc>
  4013af:	48 8b 00             	mov    (%rax),%rax
  4013b2:	4c 89 00             	mov    %r8,(%rax)
  4013b5:	48 8b 15 74 5c 00 00 	mov    0x5c74(%rip),%rdx        # 407030 <argv>
  4013bc:	e8 c4 03 00 00       	callq  401785 <main>
  4013c1:	8b 0d 59 5c 00 00    	mov    0x5c59(%rip),%ecx        # 407020 <managedapp>
  4013c7:	89 05 57 5c 00 00    	mov    %eax,0x5c57(%rip)        # 407024 <mainret>
  4013cd:	85 c9                	test   %ecx,%ecx
  4013cf:	0f 84 d9 00 00 00    	je     4014ae <__tmainCRTStartup+0x31e>
  4013d5:	8b 15 41 5c 00 00    	mov    0x5c41(%rip),%edx        # 40701c <has_cctor>
  4013db:	85 d2                	test   %edx,%edx
  4013dd:	0f 84 8d 00 00 00    	je     401470 <__tmainCRTStartup+0x2e0>
  4013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013ea:	5b                   	pop    %rbx
  4013eb:	5e                   	pop    %rsi
  4013ec:	5f                   	pop    %rdi
  4013ed:	5d                   	pop    %rbp
  4013ee:	41 5c                	pop    %r12
  4013f0:	41 5d                	pop    %r13
  4013f2:	c3                   	retq   
  4013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013fd:	e9 16 ff ff ff       	jmpq   401318 <__tmainCRTStartup+0x188>
  401402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401408:	48 8b 35 11 30 00 00 	mov    0x3011(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40140f:	bd 01 00 00 00       	mov    $0x1,%ebp
  401414:	8b 06                	mov    (%rsi),%eax
  401416:	83 f8 01             	cmp    $0x1,%eax
  401419:	0f 85 fb fd ff ff    	jne    40121a <__tmainCRTStartup+0x8a>
  40141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401424:	e8 ef 15 00 00       	callq  402a18 <_amsg_exit>
  401429:	8b 06                	mov    (%rsi),%eax
  40142b:	83 f8 01             	cmp    $0x1,%eax
  40142e:	0f 85 05 fe ff ff    	jne    401239 <__tmainCRTStartup+0xa9>
  401434:	48 8b 15 05 30 00 00 	mov    0x3005(%rip),%rdx        # 404440 <.refptr.__xc_z>
  40143b:	48 8b 0d ee 2f 00 00 	mov    0x2fee(%rip),%rcx        # 404430 <.refptr.__xc_a>
  401442:	e8 c1 15 00 00       	callq  402a08 <_initterm>
  401447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  40144d:	85 ed                	test   %ebp,%ebp
  40144f:	0f 85 ec fd ff ff    	jne    401241 <__tmainCRTStartup+0xb1>
  401455:	31 c0                	xor    %eax,%eax
  401457:	48 87 03             	xchg   %rax,(%rbx)
  40145a:	e9 e2 fd ff ff       	jmpq   401241 <__tmainCRTStartup+0xb1>
  40145f:	90                   	nop
  401460:	4c 89 c1             	mov    %r8,%rcx
  401463:	ff 15 7f 6d 00 00    	callq  *0x6d7f(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  401469:	e9 56 fd ff ff       	jmpq   4011c4 <__tmainCRTStartup+0x34>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	e8 9b 15 00 00       	callq  402a10 <_cexit>
  401475:	8b 05 a9 5b 00 00    	mov    0x5ba9(%rip),%eax        # 407024 <mainret>
  40147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5e                   	pop    %rsi
  401484:	5f                   	pop    %rdi
  401485:	5d                   	pop    %rbp
  401486:	41 5c                	pop    %r12
  401488:	41 5d                	pop    %r13
  40148a:	c3                   	retq   
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401490:	48 8b 15 c9 2f 00 00 	mov    0x2fc9(%rip),%rdx        # 404460 <.refptr.__xi_z>
  401497:	48 8b 0d b2 2f 00 00 	mov    0x2fb2(%rip),%rcx        # 404450 <.refptr.__xi_a>
  40149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014a4:	e8 5f 15 00 00       	callq  402a08 <_initterm>
  4014a9:	e9 80 fd ff ff       	jmpq   40122e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 33 15 00 00       	callq  4029e8 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 05 30 00 00 	mov    0x3005(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 ba fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014d6:	90                   	nop

00000000004014d7 <.l_endw>:
  4014d7:	90                   	nop
  4014d8:	48 83 c4 28          	add    $0x28,%rsp
  4014dc:	c3                   	retq   
  4014dd:	0f 1f 00             	nopl   (%rax)

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 e5 2f 00 00 	mov    0x2fe5(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 9a fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014f6:	90                   	nop

00000000004014f7 <.l_end>:
  4014f7:	90                   	nop
  4014f8:	48 83 c4 28          	add    $0x28,%rsp
  4014fc:	c3                   	retq   
  4014fd:	0f 1f 00             	nopl   (%rax)

0000000000401500 <atexit>:
  401500:	48 83 ec 28          	sub    $0x28,%rsp
  401504:	e8 f7 14 00 00       	callq  402a00 <_onexit>
  401509:	48 85 c0             	test   %rax,%rax
  40150c:	0f 94 c0             	sete   %al
  40150f:	0f b6 c0             	movzbl %al,%eax
  401512:	f7 d8                	neg    %eax
  401514:	48 83 c4 28          	add    $0x28,%rsp
  401518:	c3                   	retq   
  401519:	90                   	nop
  40151a:	90                   	nop
  40151b:	90                   	nop
  40151c:	90                   	nop
  40151d:	90                   	nop
  40151e:	90                   	nop
  40151f:	90                   	nop

0000000000401520 <__gcc_register_frame>:
  401520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401530 <__gcc_deregister_frame>
  401527:	e9 d4 ff ff ff       	jmpq   401500 <atexit>
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401530 <__gcc_deregister_frame>:
  401530:	c3                   	retq   
  401531:	90                   	nop
  401532:	90                   	nop
  401533:	90                   	nop
  401534:	90                   	nop
  401535:	90                   	nop
  401536:	90                   	nop
  401537:	90                   	nop
  401538:	90                   	nop
  401539:	90                   	nop
  40153a:	90                   	nop
  40153b:	90                   	nop
  40153c:	90                   	nop
  40153d:	90                   	nop
  40153e:	90                   	nop
  40153f:	90                   	nop

0000000000401540 <_Z11print_arrayPii>:
  401540:	55                   	push   %rbp
  401541:	48 89 e5             	mov    %rsp,%rbp
  401544:	48 83 ec 30          	sub    $0x30,%rsp
  401548:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40154c:	89 55 18             	mov    %edx,0x18(%rbp)
  40154f:	48 8d 15 b6 2a 00 00 	lea    0x2ab6(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401556:	48 8b 0d f3 2d 00 00 	mov    0x2df3(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40155d:	e8 16 04 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401562:	48 8b 15 f7 2d 00 00 	mov    0x2df7(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401569:	48 8b 0d e0 2d 00 00 	mov    0x2de0(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401570:	e8 2b 04 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401575:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40157c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40157f:	3b 45 18             	cmp    0x18(%rbp),%eax
  401582:	7d 37                	jge    4015bb <_Z11print_arrayPii+0x7b>
  401584:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401587:	48 98                	cltq   
  401589:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401590:	00 
  401591:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401595:	48 01 d0             	add    %rdx,%rax
  401598:	8b 00                	mov    (%rax),%eax
  40159a:	89 c2                	mov    %eax,%edx
  40159c:	48 8b 0d ad 2d 00 00 	mov    0x2dad(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015a3:	e8 f0 03 00 00       	callq  401998 <_ZNSolsEi>
  4015a8:	ba 20 00 00 00       	mov    $0x20,%edx
  4015ad:	48 89 c1             	mov    %rax,%rcx
  4015b0:	e8 bb 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  4015b5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4015b9:	eb c1                	jmp    40157c <_Z11print_arrayPii+0x3c>
  4015bb:	48 8b 15 9e 2d 00 00 	mov    0x2d9e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4015c2:	48 8b 0d 87 2d 00 00 	mov    0x2d87(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015c9:	e8 d2 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4015ce:	90                   	nop
  4015cf:	48 83 c4 30          	add    $0x30,%rsp
  4015d3:	5d                   	pop    %rbp
  4015d4:	c3                   	retq   

00000000004015d5 <_Z12print_array2Piii>:
  4015d5:	55                   	push   %rbp
  4015d6:	48 89 e5             	mov    %rsp,%rbp
  4015d9:	48 83 ec 30          	sub    $0x30,%rsp
  4015dd:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4015e1:	89 55 18             	mov    %edx,0x18(%rbp)
  4015e4:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4015e8:	48 8d 15 1d 2a 00 00 	lea    0x2a1d(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4015ef:	48 8b 0d 5a 2d 00 00 	mov    0x2d5a(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015f6:	e8 7d 03 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4015fb:	48 8b 15 5e 2d 00 00 	mov    0x2d5e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401602:	48 8b 0d 47 2d 00 00 	mov    0x2d47(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401609:	e8 92 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40160e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401615:	8b 45 18             	mov    0x18(%rbp),%eax
  401618:	0f af 45 20          	imul   0x20(%rbp),%eax
  40161c:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  40161f:	7d 5b                	jge    40167c <_Z12print_array2Piii+0xa7>
  401621:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401624:	48 98                	cltq   
  401626:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40162d:	00 
  40162e:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401632:	48 01 d0             	add    %rdx,%rax
  401635:	8b 00                	mov    (%rax),%eax
  401637:	89 c2                	mov    %eax,%edx
  401639:	48 8b 0d 10 2d 00 00 	mov    0x2d10(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401640:	e8 53 03 00 00       	callq  401998 <_ZNSolsEi>
  401645:	ba 09 00 00 00       	mov    $0x9,%edx
  40164a:	48 89 c1             	mov    %rax,%rcx
  40164d:	e8 1e 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401652:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401655:	99                   	cltd   
  401656:	f7 7d 20             	idivl  0x20(%rbp)
  401659:	8b 45 20             	mov    0x20(%rbp),%eax
  40165c:	83 e8 01             	sub    $0x1,%eax
  40165f:	39 c2                	cmp    %eax,%edx
  401661:	75 13                	jne    401676 <_Z12print_array2Piii+0xa1>
  401663:	48 8b 15 f6 2c 00 00 	mov    0x2cf6(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40166a:	48 8b 0d df 2c 00 00 	mov    0x2cdf(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401671:	e8 2a 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401676:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40167a:	eb 99                	jmp    401615 <_Z12print_array2Piii+0x40>
  40167c:	48 8b 15 dd 2c 00 00 	mov    0x2cdd(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401683:	48 8b 0d c6 2c 00 00 	mov    0x2cc6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40168a:	e8 11 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40168f:	90                   	nop
  401690:	48 83 c4 30          	add    $0x30,%rsp
  401694:	5d                   	pop    %rbp
  401695:	c3                   	retq   

0000000000401696 <_Z14print_array_2dPA5_iii>:
  401696:	55                   	push   %rbp
  401697:	48 89 e5             	mov    %rsp,%rbp
  40169a:	48 83 ec 30          	sub    $0x30,%rsp
  40169e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4016a2:	89 55 18             	mov    %edx,0x18(%rbp)
  4016a5:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4016a9:	48 8d 15 5c 29 00 00 	lea    0x295c(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4016b0:	48 8b 0d 99 2c 00 00 	mov    0x2c99(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016b7:	e8 bc 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4016bc:	48 8b 15 9d 2c 00 00 	mov    0x2c9d(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4016c3:	48 8b 0d 86 2c 00 00 	mov    0x2c86(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016ca:	e8 d1 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4016cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4016d6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016d9:	3b 45 18             	cmp    0x18(%rbp),%eax
  4016dc:	7d 6f                	jge    40174d <_Z14print_array_2dPA5_iii+0xb7>
  4016de:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4016e5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4016e8:	3b 45 20             	cmp    0x20(%rbp),%eax
  4016eb:	7d 47                	jge    401734 <_Z14print_array_2dPA5_iii+0x9e>
  4016ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016f0:	48 63 d0             	movslq %eax,%rdx
  4016f3:	48 89 d0             	mov    %rdx,%rax
  4016f6:	48 c1 e0 02          	shl    $0x2,%rax
  4016fa:	48 01 d0             	add    %rdx,%rax
  4016fd:	48 c1 e0 02          	shl    $0x2,%rax
  401701:	48 89 c2             	mov    %rax,%rdx
  401704:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401708:	48 01 c2             	add    %rax,%rdx
  40170b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40170e:	48 98                	cltq   
  401710:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  401713:	89 c2                	mov    %eax,%edx
  401715:	48 8b 0d 34 2c 00 00 	mov    0x2c34(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40171c:	e8 77 02 00 00       	callq  401998 <_ZNSolsEi>
  401721:	ba 09 00 00 00       	mov    $0x9,%edx
  401726:	48 89 c1             	mov    %rax,%rcx
  401729:	e8 42 02 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  40172e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401732:	eb b1                	jmp    4016e5 <_Z14print_array_2dPA5_iii+0x4f>
  401734:	48 8b 15 25 2c 00 00 	mov    0x2c25(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40173b:	48 8b 0d 0e 2c 00 00 	mov    0x2c0e(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401742:	e8 59 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401747:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40174b:	eb 89                	jmp    4016d6 <_Z14print_array_2dPA5_iii+0x40>
  40174d:	90                   	nop
  40174e:	48 83 c4 30          	add    $0x30,%rsp
  401752:	5d                   	pop    %rbp
  401753:	c3                   	retq   

0000000000401754 <_Z15print_separatorv>:
  401754:	55                   	push   %rbp
  401755:	48 89 e5             	mov    %rsp,%rbp
  401758:	48 83 ec 20          	sub    $0x20,%rsp
  40175c:	48 8d 15 b5 28 00 00 	lea    0x28b5(%rip),%rdx        # 404018 <_ZL1M+0x10>
  401763:	48 8b 0d e6 2b 00 00 	mov    0x2be6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40176a:	e8 09 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40176f:	48 8b 15 ea 2b 00 00 	mov    0x2bea(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401776:	48 89 c1             	mov    %rax,%rcx
  401779:	e8 22 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40177e:	90                   	nop
  40177f:	48 83 c4 20          	add    $0x20,%rsp
  401783:	5d                   	pop    %rbp
  401784:	c3                   	retq   

0000000000401785 <main>:
  401785:	55                   	push   %rbp
  401786:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40178d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401794:	00 
  401795:	e8 c6 02 00 00       	callq  401a60 <__main>
  40179a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40179e:	48 89 45 68          	mov    %rax,0x68(%rbp)
  4017a2:	c7 45 7c 00 00 00 00 	movl   $0x0,0x7c(%rbp)
  4017a9:	83 7d 7c 09          	cmpl   $0x9,0x7c(%rbp)
  4017ad:	7f 4e                	jg     4017fd <main+0x78>
  4017af:	c7 45 78 00 00 00 00 	movl   $0x0,0x78(%rbp)
  4017b6:	83 7d 78 04          	cmpl   $0x4,0x78(%rbp)
  4017ba:	7f 3b                	jg     4017f7 <main+0x72>
  4017bc:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017bf:	89 d0                	mov    %edx,%eax
  4017c1:	c1 e0 02             	shl    $0x2,%eax
  4017c4:	01 d0                	add    %edx,%eax
  4017c6:	01 c0                	add    %eax,%eax
  4017c8:	89 c1                	mov    %eax,%ecx
  4017ca:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017cd:	89 d0                	mov    %edx,%eax
  4017cf:	c1 e0 02             	shl    $0x2,%eax
  4017d2:	01 c2                	add    %eax,%edx
  4017d4:	8b 45 78             	mov    0x78(%rbp),%eax
  4017d7:	01 d0                	add    %edx,%eax
  4017d9:	48 98                	cltq   
  4017db:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4017e2:	00 
  4017e3:	48 8b 45 68          	mov    0x68(%rbp),%rax
  4017e7:	48 01 d0             	add    %rdx,%rax
  4017ea:	8b 55 78             	mov    0x78(%rbp),%edx
  4017ed:	01 ca                	add    %ecx,%edx
  4017ef:	89 10                	mov    %edx,(%rax)
  4017f1:	83 45 78 01          	addl   $0x1,0x78(%rbp)
  4017f5:	eb bf                	jmp    4017b6 <main+0x31>
  4017f7:	83 45 7c 01          	addl   $0x1,0x7c(%rbp)
  4017fb:	eb ac                	jmp    4017a9 <main+0x24>
  4017fd:	48 8d 15 08 28 00 00 	lea    0x2808(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401804:	48 8b 0d 45 2b 00 00 	mov    0x2b45(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40180b:	e8 68 01 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401810:	48 8b 15 49 2b 00 00 	mov    0x2b49(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401817:	48 8b 0d 32 2b 00 00 	mov    0x2b32(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40181e:	e8 7d 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401823:	c7 45 74 00 00 00 00 	movl   $0x0,0x74(%rbp)
  40182a:	83 7d 74 09          	cmpl   $0x9,0x74(%rbp)
  40182e:	7f 64                	jg     401894 <main+0x10f>
  401830:	c7 45 70 00 00 00 00 	movl   $0x0,0x70(%rbp)
  401837:	83 7d 70 04          	cmpl   $0x4,0x70(%rbp)
  40183b:	7f 3e                	jg     40187b <main+0xf6>
  40183d:	8b 45 70             	mov    0x70(%rbp),%eax
  401840:	48 63 c8             	movslq %eax,%rcx
  401843:	8b 45 74             	mov    0x74(%rbp),%eax
  401846:	48 63 d0             	movslq %eax,%rdx
  401849:	48 89 d0             	mov    %rdx,%rax
  40184c:	48 c1 e0 02          	shl    $0x2,%rax
  401850:	48 01 d0             	add    %rdx,%rax
  401853:	48 01 c8             	add    %rcx,%rax
  401856:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
  40185a:	89 c2                	mov    %eax,%edx
  40185c:	48 8b 0d ed 2a 00 00 	mov    0x2aed(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401863:	e8 30 01 00 00       	callq  401998 <_ZNSolsEi>
  401868:	ba 09 00 00 00       	mov    $0x9,%edx
  40186d:	48 89 c1             	mov    %rax,%rcx
  401870:	e8 fb 00 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401875:	83 45 70 01          	addl   $0x1,0x70(%rbp)
  401879:	eb bc                	jmp    401837 <main+0xb2>
  40187b:	48 8b 15 de 2a 00 00 	mov    0x2ade(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401882:	48 8b 0d c7 2a 00 00 	mov    0x2ac7(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401889:	e8 12 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40188e:	83 45 74 01          	addl   $0x1,0x74(%rbp)
  401892:	eb 96                	jmp    40182a <main+0xa5>
  401894:	e8 bb fe ff ff       	callq  401754 <_Z15print_separatorv>
  401899:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40189d:	ba 32 00 00 00       	mov    $0x32,%edx
  4018a2:	48 89 c1             	mov    %rax,%rcx
  4018a5:	e8 96 fc ff ff       	callq  401540 <_Z11print_arrayPii>
  4018aa:	e8 a5 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018af:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018b3:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018b9:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018be:	48 89 c1             	mov    %rax,%rcx
  4018c1:	e8 0f fd ff ff       	callq  4015d5 <_Z12print_array2Piii>
  4018c6:	e8 89 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018cf:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018d5:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018da:	48 89 c1             	mov    %rax,%rcx
  4018dd:	e8 b4 fd ff ff       	callq  401696 <_Z14print_array_2dPA5_iii>
  4018e2:	e8 6d fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ec:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  4018f3:	5d                   	pop    %rbp
  4018f4:	c3                   	retq   

00000000004018f5 <__tcf_0>:
  4018f5:	55                   	push   %rbp
  4018f6:	48 89 e5             	mov    %rsp,%rbp
  4018f9:	48 83 ec 20          	sub    $0x20,%rsp
  4018fd:	48 8d 0d 3c 57 00 00 	lea    0x573c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401904:	e8 7f 00 00 00       	callq  401988 <_ZNSt8ios_base4InitD1Ev>
  401909:	90                   	nop
  40190a:	48 83 c4 20          	add    $0x20,%rsp
  40190e:	5d                   	pop    %rbp
  40190f:	c3                   	retq   

0000000000401910 <_Z41__static_initialization_and_destruction_0ii>:
  401910:	55                   	push   %rbp
  401911:	48 89 e5             	mov    %rsp,%rbp
  401914:	48 83 ec 20          	sub    $0x20,%rsp
  401918:	89 4d 10             	mov    %ecx,0x10(%rbp)
  40191b:	89 55 18             	mov    %edx,0x18(%rbp)
  40191e:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401922:	75 21                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  401924:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  40192b:	75 18                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  40192d:	48 8d 0d 0c 57 00 00 	lea    0x570c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401934:	e8 57 00 00 00       	callq  401990 <_ZNSt8ios_base4InitC1Ev>
  401939:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 4018f5 <__tcf_0>
  401940:	e8 bb fb ff ff       	callq  401500 <atexit>
  401945:	90                   	nop
  401946:	48 83 c4 20          	add    $0x20,%rsp
  40194a:	5d                   	pop    %rbp
  40194b:	c3                   	retq   

000000000040194c <_GLOBAL__sub_I__Z11print_arrayPii>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 20          	sub    $0x20,%rsp
  401954:	ba ff ff 00 00       	mov    $0xffff,%edx
  401959:	b9 01 00 00 00       	mov    $0x1,%ecx
  40195e:	e8 ad ff ff ff       	callq  401910 <_Z41__static_initialization_and_destruction_0ii>
  401963:	90                   	nop
  401964:	48 83 c4 20          	add    $0x20,%rsp
  401968:	5d                   	pop    %rbp
  401969:	c3                   	retq   
  40196a:	90                   	nop
  40196b:	90                   	nop
  40196c:	90                   	nop
  40196d:	90                   	nop
  40196e:	90                   	nop
  40196f:	90                   	nop

0000000000401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>:
  401970:	ff 25 ca 69 00 00    	jmpq   *0x69ca(%rip)        # 408340 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401976:	90                   	nop
  401977:	90                   	nop

0000000000401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401978:	ff 25 ba 69 00 00    	jmpq   *0x69ba(%rip)        # 408338 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40197e:	90                   	nop
  40197f:	90                   	nop

0000000000401980 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401980:	ff 25 aa 69 00 00    	jmpq   *0x69aa(%rip)        # 408330 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401986:	90                   	nop
  401987:	90                   	nop

0000000000401988 <_ZNSt8ios_base4InitD1Ev>:
  401988:	ff 25 92 69 00 00    	jmpq   *0x6992(%rip)        # 408320 <__imp__ZNSt8ios_base4InitD1Ev>
  40198e:	90                   	nop
  40198f:	90                   	nop

0000000000401990 <_ZNSt8ios_base4InitC1Ev>:
  401990:	ff 25 82 69 00 00    	jmpq   *0x6982(%rip)        # 408318 <__imp__ZNSt8ios_base4InitC1Ev>
  401996:	90                   	nop
  401997:	90                   	nop

0000000000401998 <_ZNSolsEi>:
  401998:	ff 25 72 69 00 00    	jmpq   *0x6972(%rip)        # 408310 <__imp__ZNSolsEi>
  40199e:	90                   	nop
  40199f:	90                   	nop

00000000004019a0 <_ZNSolsEPFRSoS_E>:
  4019a0:	ff 25 62 69 00 00    	jmpq   *0x6962(%rip)        # 408308 <__imp__ZNSolsEPFRSoS_E>
  4019a6:	90                   	nop
  4019a7:	90                   	nop
  4019a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019af:	00 

00000000004019b0 <__do_global_dtors>:
  4019b0:	48 83 ec 28          	sub    $0x28,%rsp
  4019b4:	48 8b 05 55 16 00 00 	mov    0x1655(%rip),%rax        # 403010 <p.0>
  4019bb:	48 8b 00             	mov    (%rax),%rax
  4019be:	48 85 c0             	test   %rax,%rax
  4019c1:	74 22                	je     4019e5 <__do_global_dtors+0x35>
  4019c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019c8:	ff d0                	callq  *%rax
  4019ca:	48 8b 05 3f 16 00 00 	mov    0x163f(%rip),%rax        # 403010 <p.0>
  4019d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4019d5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4019d9:	48 89 15 30 16 00 00 	mov    %rdx,0x1630(%rip)        # 403010 <p.0>
  4019e0:	48 85 c0             	test   %rax,%rax
  4019e3:	75 e3                	jne    4019c8 <__do_global_dtors+0x18>
  4019e5:	48 83 c4 28          	add    $0x28,%rsp
  4019e9:	c3                   	retq   
  4019ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004019f0 <__do_global_ctors>:
  4019f0:	56                   	push   %rsi
  4019f1:	53                   	push   %rbx
  4019f2:	48 83 ec 28          	sub    $0x28,%rsp
  4019f6:	48 8b 15 73 29 00 00 	mov    0x2973(%rip),%rdx        # 404370 <.refptr.__CTOR_LIST__>
  4019fd:	48 8b 02             	mov    (%rdx),%rax
  401a00:	89 c1                	mov    %eax,%ecx
  401a02:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a05:	74 39                	je     401a40 <__do_global_ctors+0x50>
  401a07:	85 c9                	test   %ecx,%ecx
  401a09:	74 20                	je     401a2b <__do_global_ctors+0x3b>
  401a0b:	89 c8                	mov    %ecx,%eax
  401a0d:	83 e9 01             	sub    $0x1,%ecx
  401a10:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  401a14:	48 29 c8             	sub    %rcx,%rax
  401a17:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a20:	ff 13                	callq  *(%rbx)
  401a22:	48 83 eb 08          	sub    $0x8,%rbx
  401a26:	48 39 f3             	cmp    %rsi,%rbx
  401a29:	75 f5                	jne    401a20 <__do_global_ctors+0x30>
  401a2b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4019b0 <__do_global_dtors>
  401a32:	48 83 c4 28          	add    $0x28,%rsp
  401a36:	5b                   	pop    %rbx
  401a37:	5e                   	pop    %rsi
  401a38:	e9 c3 fa ff ff       	jmpq   401500 <atexit>
  401a3d:	0f 1f 00             	nopl   (%rax)
  401a40:	31 c0                	xor    %eax,%eax
  401a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a48:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401a4c:	89 c1                	mov    %eax,%ecx
  401a4e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401a53:	4c 89 c0             	mov    %r8,%rax
  401a56:	75 f0                	jne    401a48 <__do_global_ctors+0x58>
  401a58:	eb ad                	jmp    401a07 <__do_global_ctors+0x17>
  401a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401a60 <__main>:
  401a60:	8b 05 ea 55 00 00    	mov    0x55ea(%rip),%eax        # 407050 <initialized>
  401a66:	85 c0                	test   %eax,%eax
  401a68:	74 06                	je     401a70 <__main+0x10>
  401a6a:	c3                   	retq   
  401a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a70:	c7 05 d6 55 00 00 01 	movl   $0x1,0x55d6(%rip)        # 407050 <initialized>
  401a77:	00 00 00 
  401a7a:	e9 71 ff ff ff       	jmpq   4019f0 <__do_global_ctors>
  401a7f:	90                   	nop

0000000000401a80 <my_lconv_init>:
  401a80:	48 ff 25 c9 67 00 00 	rex.W jmpq *0x67c9(%rip)        # 408250 <__imp___lconv_init>
  401a87:	90                   	nop
  401a88:	90                   	nop
  401a89:	90                   	nop
  401a8a:	90                   	nop
  401a8b:	90                   	nop
  401a8c:	90                   	nop
  401a8d:	90                   	nop
  401a8e:	90                   	nop
  401a8f:	90                   	nop

0000000000401a90 <_setargv>:
  401a90:	31 c0                	xor    %eax,%eax
  401a92:	c3                   	retq   
  401a93:	90                   	nop
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__dyn_tls_dtor>:
  401aa0:	48 83 ec 28          	sub    $0x28,%rsp
  401aa4:	83 fa 03             	cmp    $0x3,%edx
  401aa7:	74 17                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aa9:	85 d2                	test   %edx,%edx
  401aab:	74 13                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aad:	b8 01 00 00 00       	mov    $0x1,%eax
  401ab2:	48 83 c4 28          	add    $0x28,%rsp
  401ab6:	c3                   	retq   
  401ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401abe:	00 00 
  401ac0:	e8 cb 09 00 00       	callq  402490 <__mingw_TLScallback>
  401ac5:	b8 01 00 00 00       	mov    $0x1,%eax
  401aca:	48 83 c4 28          	add    $0x28,%rsp
  401ace:	c3                   	retq   
  401acf:	90                   	nop

0000000000401ad0 <__dyn_tls_init>:
  401ad0:	56                   	push   %rsi
  401ad1:	53                   	push   %rbx
  401ad2:	48 83 ec 28          	sub    $0x28,%rsp
  401ad6:	48 8b 05 53 28 00 00 	mov    0x2853(%rip),%rax        # 404330 <.refptr._CRT_MT>
  401add:	83 38 02             	cmpl   $0x2,(%rax)
  401ae0:	74 06                	je     401ae8 <__dyn_tls_init+0x18>
  401ae2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401ae8:	83 fa 02             	cmp    $0x2,%edx
  401aeb:	74 13                	je     401b00 <__dyn_tls_init+0x30>
  401aed:	83 fa 01             	cmp    $0x1,%edx
  401af0:	74 4e                	je     401b40 <__dyn_tls_init+0x70>
  401af2:	b8 01 00 00 00       	mov    $0x1,%eax
  401af7:	48 83 c4 28          	add    $0x28,%rsp
  401afb:	5b                   	pop    %rbx
  401afc:	5e                   	pop    %rsi
  401afd:	c3                   	retq   
  401afe:	66 90                	xchg   %ax,%ax
  401b00:	48 8d 1d 59 75 00 00 	lea    0x7559(%rip),%rbx        # 409060 <__xd_z>
  401b07:	48 8d 35 52 75 00 00 	lea    0x7552(%rip),%rsi        # 409060 <__xd_z>
  401b0e:	48 39 de             	cmp    %rbx,%rsi
  401b11:	74 df                	je     401af2 <__dyn_tls_init+0x22>
  401b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401b18:	48 8b 03             	mov    (%rbx),%rax
  401b1b:	48 85 c0             	test   %rax,%rax
  401b1e:	74 02                	je     401b22 <__dyn_tls_init+0x52>
  401b20:	ff d0                	callq  *%rax
  401b22:	48 83 c3 08          	add    $0x8,%rbx
  401b26:	48 39 de             	cmp    %rbx,%rsi
  401b29:	75 ed                	jne    401b18 <__dyn_tls_init+0x48>
  401b2b:	b8 01 00 00 00       	mov    $0x1,%eax
  401b30:	48 83 c4 28          	add    $0x28,%rsp
  401b34:	5b                   	pop    %rbx
  401b35:	5e                   	pop    %rsi
  401b36:	c3                   	retq   
  401b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401b3e:	00 00 
  401b40:	e8 4b 09 00 00       	callq  402490 <__mingw_TLScallback>
  401b45:	b8 01 00 00 00       	mov    $0x1,%eax
  401b4a:	48 83 c4 28          	add    $0x28,%rsp
  401b4e:	5b                   	pop    %rbx
  401b4f:	5e                   	pop    %rsi
  401b50:	c3                   	retq   
  401b51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401b58:	00 00 00 00 
  401b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b60 <__tlregdtor>:
  401b60:	31 c0                	xor    %eax,%eax
  401b62:	c3                   	retq   
  401b63:	90                   	nop
  401b64:	90                   	nop
  401b65:	90                   	nop
  401b66:	90                   	nop
  401b67:	90                   	nop
  401b68:	90                   	nop
  401b69:	90                   	nop
  401b6a:	90                   	nop
  401b6b:	90                   	nop
  401b6c:	90                   	nop
  401b6d:	90                   	nop
  401b6e:	90                   	nop
  401b6f:	90                   	nop

0000000000401b70 <_matherr>:
  401b70:	56                   	push   %rsi
  401b71:	53                   	push   %rbx
  401b72:	48 83 ec 78          	sub    $0x78,%rsp
  401b76:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401b7b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401b80:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401b86:	83 39 06             	cmpl   $0x6,(%rcx)
  401b89:	0f 87 cd 00 00 00    	ja     401c5c <_matherr+0xec>
  401b8f:	8b 01                	mov    (%rcx),%eax
  401b91:	48 8d 15 2c 26 00 00 	lea    0x262c(%rip),%rdx        # 4041c4 <.rdata+0x124>
  401b98:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401b9c:	48 01 d0             	add    %rdx,%rax
  401b9f:	ff e0                	jmpq   *%rax
  401ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ba8:	48 8d 1d c7 25 00 00 	lea    0x25c7(%rip),%rbx        # 404176 <.rdata+0xd6>
  401baf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401bb5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401bba:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401bbf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401bc3:	b9 02 00 00 00       	mov    $0x2,%ecx
  401bc8:	e8 83 0e 00 00       	callq  402a50 <__acrt_iob_func>
  401bcd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401bd4:	49 89 d8             	mov    %rbx,%r8
  401bd7:	48 8d 15 ba 25 00 00 	lea    0x25ba(%rip),%rdx        # 404198 <.rdata+0xf8>
  401bde:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401be4:	48 89 c1             	mov    %rax,%rcx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401bf0:	e8 eb 0d 00 00       	callq  4029e0 <fprintf>
  401bf5:	90                   	nop
  401bf6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401bfb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401c00:	31 c0                	xor    %eax,%eax
  401c02:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401c08:	48 83 c4 78          	add    $0x78,%rsp
  401c0c:	5b                   	pop    %rbx
  401c0d:	5e                   	pop    %rsi
  401c0e:	c3                   	retq   
  401c0f:	90                   	nop
  401c10:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040b0 <.rdata+0x10>
  401c17:	eb 96                	jmp    401baf <_matherr+0x3f>
  401c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c20:	48 8d 1d c9 24 00 00 	lea    0x24c9(%rip),%rbx        # 4040f0 <.rdata+0x50>
  401c27:	eb 86                	jmp    401baf <_matherr+0x3f>
  401c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c30:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040d0 <.rdata+0x30>
  401c37:	e9 73 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c40:	48 8d 1d f9 24 00 00 	lea    0x24f9(%rip),%rbx        # 404140 <.rdata+0xa0>
  401c47:	e9 63 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c50:	48 8d 1d c1 24 00 00 	lea    0x24c1(%rip),%rbx        # 404118 <.rdata+0x78>
  401c57:	e9 53 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c5c:	48 8d 1d 3d 24 00 00 	lea    0x243d(%rip),%rbx        # 4040a0 <.rdata>
  401c63:	e9 47 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c68:	90                   	nop
  401c69:	90                   	nop
  401c6a:	90                   	nop
  401c6b:	90                   	nop
  401c6c:	90                   	nop
  401c6d:	90                   	nop
  401c6e:	90                   	nop
  401c6f:	90                   	nop

0000000000401c70 <_fpreset>:
  401c70:	db e3                	fninit 
  401c72:	c3                   	retq   
  401c73:	90                   	nop
  401c74:	90                   	nop
  401c75:	90                   	nop
  401c76:	90                   	nop
  401c77:	90                   	nop
  401c78:	90                   	nop
  401c79:	90                   	nop
  401c7a:	90                   	nop
  401c7b:	90                   	nop
  401c7c:	90                   	nop
  401c7d:	90                   	nop
  401c7e:	90                   	nop
  401c7f:	90                   	nop

0000000000401c80 <__report_error>:
  401c80:	41 54                	push   %r12
  401c82:	53                   	push   %rbx
  401c83:	48 83 ec 38          	sub    $0x38,%rsp
  401c87:	49 89 cc             	mov    %rcx,%r12
  401c8a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401c8f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401c94:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401c99:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401c9e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401ca3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401ca8:	e8 a3 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cad:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401cb3:	ba 01 00 00 00       	mov    $0x1,%edx
  401cb8:	48 8d 0d 21 25 00 00 	lea    0x2521(%rip),%rcx        # 4041e0 <.rdata>
  401cbf:	49 89 c1             	mov    %rax,%r9
  401cc2:	e8 09 0d 00 00       	callq  4029d0 <fwrite>
  401cc7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401ccc:	b9 02 00 00 00       	mov    $0x2,%ecx
  401cd1:	e8 7a 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cd6:	4c 89 e2             	mov    %r12,%rdx
  401cd9:	48 89 c1             	mov    %rax,%rcx
  401cdc:	49 89 d8             	mov    %rbx,%r8
  401cdf:	e8 bc 0c 00 00       	callq  4029a0 <vfprintf>
  401ce4:	e8 0f 0d 00 00       	callq  4029f8 <abort>
  401ce9:	90                   	nop
  401cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401cf0 <mark_section_writable>:
  401cf0:	41 54                	push   %r12
  401cf2:	56                   	push   %rsi
  401cf3:	53                   	push   %rbx
  401cf4:	48 83 ec 50          	sub    $0x50,%rsp
  401cf8:	48 63 1d c5 53 00 00 	movslq 0x53c5(%rip),%rbx        # 4070c4 <maxSections>
  401cff:	49 89 cc             	mov    %rcx,%r12
  401d02:	85 db                	test   %ebx,%ebx
  401d04:	0f 8e 16 01 00 00    	jle    401e20 <mark_section_writable+0x130>
  401d0a:	48 8b 05 b7 53 00 00 	mov    0x53b7(%rip),%rax        # 4070c8 <the_secs>
  401d11:	31 c9                	xor    %ecx,%ecx
  401d13:	48 83 c0 18          	add    $0x18,%rax
  401d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401d1e:	00 00 
  401d20:	48 8b 10             	mov    (%rax),%rdx
  401d23:	4c 39 e2             	cmp    %r12,%rdx
  401d26:	77 14                	ja     401d3c <mark_section_writable+0x4c>
  401d28:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401d2c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401d30:	4c 01 c2             	add    %r8,%rdx
  401d33:	49 39 d4             	cmp    %rdx,%r12
  401d36:	0f 82 87 00 00 00    	jb     401dc3 <mark_section_writable+0xd3>
  401d3c:	83 c1 01             	add    $0x1,%ecx
  401d3f:	48 83 c0 28          	add    $0x28,%rax
  401d43:	39 d9                	cmp    %ebx,%ecx
  401d45:	75 d9                	jne    401d20 <mark_section_writable+0x30>
  401d47:	4c 89 e1             	mov    %r12,%rcx
  401d4a:	e8 51 09 00 00       	callq  4026a0 <__mingw_GetSectionForAddress>
  401d4f:	48 89 c6             	mov    %rax,%rsi
  401d52:	48 85 c0             	test   %rax,%rax
  401d55:	0f 84 e7 00 00 00    	je     401e42 <mark_section_writable+0x152>
  401d5b:	48 8b 05 66 53 00 00 	mov    0x5366(%rip),%rax        # 4070c8 <the_secs>
  401d62:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
  401d66:	48 c1 e3 03          	shl    $0x3,%rbx
  401d6a:	48 01 d8             	add    %rbx,%rax
  401d6d:	48 89 70 20          	mov    %rsi,0x20(%rax)
  401d71:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401d77:	e8 54 0a 00 00       	callq  4027d0 <_GetPEImageBase>
  401d7c:	8b 4e 0c             	mov    0xc(%rsi),%ecx
  401d7f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401d84:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401d8a:	48 01 c1             	add    %rax,%rcx
  401d8d:	48 8b 05 34 53 00 00 	mov    0x5334(%rip),%rax        # 4070c8 <the_secs>
  401d94:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
  401d99:	ff 15 81 64 00 00    	callq  *0x6481(%rip)        # 408220 <__imp_VirtualQuery>
  401d9f:	48 85 c0             	test   %rax,%rax
  401da2:	0f 84 7f 00 00 00    	je     401e27 <mark_section_writable+0x137>
  401da8:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401dac:	8d 50 c0             	lea    -0x40(%rax),%edx
  401daf:	83 e2 bf             	and    $0xffffffbf,%edx
  401db2:	74 08                	je     401dbc <mark_section_writable+0xcc>
  401db4:	8d 50 fc             	lea    -0x4(%rax),%edx
  401db7:	83 e2 fb             	and    $0xfffffffb,%edx
  401dba:	75 14                	jne    401dd0 <mark_section_writable+0xe0>
  401dbc:	83 05 01 53 00 00 01 	addl   $0x1,0x5301(%rip)        # 4070c4 <maxSections>
  401dc3:	48 83 c4 50          	add    $0x50,%rsp
  401dc7:	5b                   	pop    %rbx
  401dc8:	5e                   	pop    %rsi
  401dc9:	41 5c                	pop    %r12
  401dcb:	c3                   	retq   
  401dcc:	0f 1f 40 00          	nopl   0x0(%rax)
  401dd0:	83 f8 02             	cmp    $0x2,%eax
  401dd3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401dd8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401ddd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401de3:	b8 40 00 00 00       	mov    $0x40,%eax
  401de8:	44 0f 45 c0          	cmovne %eax,%r8d
  401dec:	48 03 1d d5 52 00 00 	add    0x52d5(%rip),%rbx        # 4070c8 <the_secs>
  401df3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  401df7:	49 89 d9             	mov    %rbx,%r9
  401dfa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  401dfe:	ff 15 14 64 00 00    	callq  *0x6414(%rip)        # 408218 <__imp_VirtualProtect>
  401e04:	85 c0                	test   %eax,%eax
  401e06:	75 b4                	jne    401dbc <mark_section_writable+0xcc>
  401e08:	ff 15 d2 63 00 00    	callq  *0x63d2(%rip)        # 4081e0 <__imp_GetLastError>
  401e0e:	48 8d 0d 43 24 00 00 	lea    0x2443(%rip),%rcx        # 404258 <.rdata+0x78>
  401e15:	89 c2                	mov    %eax,%edx
  401e17:	e8 64 fe ff ff       	callq  401c80 <__report_error>
  401e1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e20:	31 db                	xor    %ebx,%ebx
  401e22:	e9 20 ff ff ff       	jmpq   401d47 <mark_section_writable+0x57>
  401e27:	48 8b 05 9a 52 00 00 	mov    0x529a(%rip),%rax        # 4070c8 <the_secs>
  401e2e:	8b 56 08             	mov    0x8(%rsi),%edx
  401e31:	48 8d 0d e8 23 00 00 	lea    0x23e8(%rip),%rcx        # 404220 <.rdata+0x40>
  401e38:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
  401e3d:	e8 3e fe ff ff       	callq  401c80 <__report_error>
  401e42:	4c 89 e2             	mov    %r12,%rdx
  401e45:	48 8d 0d b4 23 00 00 	lea    0x23b4(%rip),%rcx        # 404200 <.rdata+0x20>
  401e4c:	e8 2f fe ff ff       	callq  401c80 <__report_error>
  401e51:	90                   	nop
  401e52:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401e59:	00 00 00 00 
  401e5d:	0f 1f 00             	nopl   (%rax)

0000000000401e60 <_pei386_runtime_relocator>:
  401e60:	55                   	push   %rbp
  401e61:	41 57                	push   %r15
  401e63:	41 56                	push   %r14
  401e65:	41 55                	push   %r13
  401e67:	41 54                	push   %r12
  401e69:	57                   	push   %rdi
  401e6a:	56                   	push   %rsi
  401e6b:	53                   	push   %rbx
  401e6c:	48 83 ec 38          	sub    $0x38,%rsp
  401e70:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401e77:	00 
  401e78:	8b 3d 42 52 00 00    	mov    0x5242(%rip),%edi        # 4070c0 <was_init.0>
  401e7e:	85 ff                	test   %edi,%edi
  401e80:	74 16                	je     401e98 <_pei386_runtime_relocator+0x38>
  401e82:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401e86:	5b                   	pop    %rbx
  401e87:	5e                   	pop    %rsi
  401e88:	5f                   	pop    %rdi
  401e89:	41 5c                	pop    %r12
  401e8b:	41 5d                	pop    %r13
  401e8d:	41 5e                	pop    %r14
  401e8f:	41 5f                	pop    %r15
  401e91:	5d                   	pop    %rbp
  401e92:	c3                   	retq   
  401e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401e98:	c7 05 1e 52 00 00 01 	movl   $0x1,0x521e(%rip)        # 4070c0 <was_init.0>
  401e9f:	00 00 00 
  401ea2:	e8 79 08 00 00       	callq  402720 <__mingw_GetSectionCount>
  401ea7:	48 98                	cltq   
  401ea9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ead:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401eb4:	00 
  401eb5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401eb9:	e8 a2 0a 00 00       	callq  402960 <___chkstk_ms>
  401ebe:	4c 8b 25 bb 24 00 00 	mov    0x24bb(%rip),%r12        # 404380 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401ec5:	48 8b 1d c4 24 00 00 	mov    0x24c4(%rip),%rbx        # 404390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ecc:	c7 05 ee 51 00 00 00 	movl   $0x0,0x51ee(%rip)        # 4070c4 <maxSections>
  401ed3:	00 00 00 
  401ed6:	48 29 c4             	sub    %rax,%rsp
  401ed9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ede:	48 89 05 e3 51 00 00 	mov    %rax,0x51e3(%rip)        # 4070c8 <the_secs>
  401ee5:	4c 89 e0             	mov    %r12,%rax
  401ee8:	48 29 d8             	sub    %rbx,%rax
  401eeb:	48 83 f8 07          	cmp    $0x7,%rax
  401eef:	7e 91                	jle    401e82 <_pei386_runtime_relocator+0x22>
  401ef1:	8b 13                	mov    (%rbx),%edx
  401ef3:	48 83 f8 0b          	cmp    $0xb,%rax
  401ef7:	0f 8f 2b 01 00 00    	jg     402028 <_pei386_runtime_relocator+0x1c8>
  401efd:	85 d2                	test   %edx,%edx
  401eff:	0f 85 9b 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f05:	8b 43 04             	mov    0x4(%rbx),%eax
  401f08:	85 c0                	test   %eax,%eax
  401f0a:	0f 85 90 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f10:	8b 53 08             	mov    0x8(%rbx),%edx
  401f13:	83 fa 01             	cmp    $0x1,%edx
  401f16:	0f 85 c5 01 00 00    	jne    4020e1 <_pei386_runtime_relocator+0x281>
  401f1c:	48 83 c3 0c          	add    $0xc,%rbx
  401f20:	4c 39 e3             	cmp    %r12,%rbx
  401f23:	0f 83 59 ff ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  401f29:	4c 8b 2d 80 24 00 00 	mov    0x2480(%rip),%r13        # 4043b0 <.refptr.__image_base__>
  401f30:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401f37:	ff ff ff 
  401f3a:	eb 31                	jmp    401f6d <_pei386_runtime_relocator+0x10d>
  401f3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401f40:	0f b6 16             	movzbl (%rsi),%edx
  401f43:	48 89 f1             	mov    %rsi,%rcx
  401f46:	49 89 d0             	mov    %rdx,%r8
  401f49:	49 81 c8 00 ff ff ff 	or     $0xffffffffffffff00,%r8
  401f50:	84 d2                	test   %dl,%dl
  401f52:	49 0f 48 d0          	cmovs  %r8,%rdx
  401f56:	48 29 c2             	sub    %rax,%rdx
  401f59:	49 01 d7             	add    %rdx,%r15
  401f5c:	e8 8f fd ff ff       	callq  401cf0 <mark_section_writable>
  401f61:	44 88 3e             	mov    %r15b,(%rsi)
  401f64:	48 83 c3 0c          	add    $0xc,%rbx
  401f68:	4c 39 e3             	cmp    %r12,%rbx
  401f6b:	73 63                	jae    401fd0 <_pei386_runtime_relocator+0x170>
  401f6d:	8b 03                	mov    (%rbx),%eax
  401f6f:	8b 73 04             	mov    0x4(%rbx),%esi
  401f72:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
  401f76:	4c 01 e8             	add    %r13,%rax
  401f79:	4c 01 ee             	add    %r13,%rsi
  401f7c:	4c 8b 38             	mov    (%rax),%r15
  401f7f:	83 fa 20             	cmp    $0x20,%edx
  401f82:	0f 84 f0 00 00 00    	je     402078 <_pei386_runtime_relocator+0x218>
  401f88:	0f 87 c2 00 00 00    	ja     402050 <_pei386_runtime_relocator+0x1f0>
  401f8e:	83 fa 08             	cmp    $0x8,%edx
  401f91:	74 ad                	je     401f40 <_pei386_runtime_relocator+0xe0>
  401f93:	83 fa 10             	cmp    $0x10,%edx
  401f96:	0f 85 39 01 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  401f9c:	0f b7 16             	movzwl (%rsi),%edx
  401f9f:	48 89 f1             	mov    %rsi,%rcx
  401fa2:	49 89 d0             	mov    %rdx,%r8
  401fa5:	49 81 c8 00 00 ff ff 	or     $0xffffffffffff0000,%r8
  401fac:	66 85 d2             	test   %dx,%dx
  401faf:	49 0f 48 d0          	cmovs  %r8,%rdx
  401fb3:	48 83 c3 0c          	add    $0xc,%rbx
  401fb7:	48 29 c2             	sub    %rax,%rdx
  401fba:	49 01 d7             	add    %rdx,%r15
  401fbd:	e8 2e fd ff ff       	callq  401cf0 <mark_section_writable>
  401fc2:	66 44 89 3e          	mov    %r15w,(%rsi)
  401fc6:	4c 39 e3             	cmp    %r12,%rbx
  401fc9:	72 a2                	jb     401f6d <_pei386_runtime_relocator+0x10d>
  401fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401fd0:	8b 05 ee 50 00 00    	mov    0x50ee(%rip),%eax        # 4070c4 <maxSections>
  401fd6:	85 c0                	test   %eax,%eax
  401fd8:	0f 8e a4 fe ff ff    	jle    401e82 <_pei386_runtime_relocator+0x22>
  401fde:	48 8b 35 33 62 00 00 	mov    0x6233(%rip),%rsi        # 408218 <__imp_VirtualProtect>
  401fe5:	31 db                	xor    %ebx,%ebx
  401fe7:	4c 8d 65 ac          	lea    -0x54(%rbp),%r12
  401feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ff0:	48 8b 05 d1 50 00 00 	mov    0x50d1(%rip),%rax        # 4070c8 <the_secs>
  401ff7:	48 01 d8             	add    %rbx,%rax
  401ffa:	44 8b 00             	mov    (%rax),%r8d
  401ffd:	45 85 c0             	test   %r8d,%r8d
  402000:	74 0d                	je     40200f <_pei386_runtime_relocator+0x1af>
  402002:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402006:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40200a:	4d 89 e1             	mov    %r12,%r9
  40200d:	ff d6                	callq  *%rsi
  40200f:	83 c7 01             	add    $0x1,%edi
  402012:	48 83 c3 28          	add    $0x28,%rbx
  402016:	3b 3d a8 50 00 00    	cmp    0x50a8(%rip),%edi        # 4070c4 <maxSections>
  40201c:	7c d2                	jl     401ff0 <_pei386_runtime_relocator+0x190>
  40201e:	e9 5f fe ff ff       	jmpq   401e82 <_pei386_runtime_relocator+0x22>
  402023:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402028:	85 d2                	test   %edx,%edx
  40202a:	75 74                	jne    4020a0 <_pei386_runtime_relocator+0x240>
  40202c:	8b 43 04             	mov    0x4(%rbx),%eax
  40202f:	89 c1                	mov    %eax,%ecx
  402031:	0b 4b 08             	or     0x8(%rbx),%ecx
  402034:	0f 85 ce fe ff ff    	jne    401f08 <_pei386_runtime_relocator+0xa8>
  40203a:	8b 53 0c             	mov    0xc(%rbx),%edx
  40203d:	48 83 c3 0c          	add    $0xc,%rbx
  402041:	e9 b7 fe ff ff       	jmpq   401efd <_pei386_runtime_relocator+0x9d>
  402046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40204d:	00 00 00 
  402050:	83 fa 40             	cmp    $0x40,%edx
  402053:	0f 85 7c 00 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  402059:	48 8b 16             	mov    (%rsi),%rdx
  40205c:	48 89 f1             	mov    %rsi,%rcx
  40205f:	48 29 c2             	sub    %rax,%rdx
  402062:	49 01 d7             	add    %rdx,%r15
  402065:	e8 86 fc ff ff       	callq  401cf0 <mark_section_writable>
  40206a:	4c 89 3e             	mov    %r15,(%rsi)
  40206d:	e9 f2 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  402072:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402078:	8b 16                	mov    (%rsi),%edx
  40207a:	48 89 d1             	mov    %rdx,%rcx
  40207d:	4c 09 f2             	or     %r14,%rdx
  402080:	85 c9                	test   %ecx,%ecx
  402082:	48 0f 49 d1          	cmovns %rcx,%rdx
  402086:	48 89 f1             	mov    %rsi,%rcx
  402089:	48 29 c2             	sub    %rax,%rdx
  40208c:	49 01 d7             	add    %rdx,%r15
  40208f:	e8 5c fc ff ff       	callq  401cf0 <mark_section_writable>
  402094:	44 89 3e             	mov    %r15d,(%rsi)
  402097:	e9 c8 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  40209c:	0f 1f 40 00          	nopl   0x0(%rax)
  4020a0:	4c 39 e3             	cmp    %r12,%rbx
  4020a3:	0f 83 d9 fd ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  4020a9:	4c 8b 35 00 23 00 00 	mov    0x2300(%rip),%r14        # 4043b0 <.refptr.__image_base__>
  4020b0:	8b 73 04             	mov    0x4(%rbx),%esi
  4020b3:	44 8b 2b             	mov    (%rbx),%r13d
  4020b6:	48 83 c3 08          	add    $0x8,%rbx
  4020ba:	4c 01 f6             	add    %r14,%rsi
  4020bd:	44 03 2e             	add    (%rsi),%r13d
  4020c0:	48 89 f1             	mov    %rsi,%rcx
  4020c3:	e8 28 fc ff ff       	callq  401cf0 <mark_section_writable>
  4020c8:	44 89 2e             	mov    %r13d,(%rsi)
  4020cb:	4c 39 e3             	cmp    %r12,%rbx
  4020ce:	72 e0                	jb     4020b0 <_pei386_runtime_relocator+0x250>
  4020d0:	e9 fb fe ff ff       	jmpq   401fd0 <_pei386_runtime_relocator+0x170>
  4020d5:	48 8d 0d dc 21 00 00 	lea    0x21dc(%rip),%rcx        # 4042b8 <.rdata+0xd8>
  4020dc:	e8 9f fb ff ff       	callq  401c80 <__report_error>
  4020e1:	48 8d 0d 98 21 00 00 	lea    0x2198(%rip),%rcx        # 404280 <.rdata+0xa0>
  4020e8:	e8 93 fb ff ff       	callq  401c80 <__report_error>
  4020ed:	90                   	nop
  4020ee:	90                   	nop
  4020ef:	90                   	nop

00000000004020f0 <__mingw_raise_matherr>:
  4020f0:	48 83 ec 58          	sub    $0x58,%rsp
  4020f4:	48 8b 05 d5 4f 00 00 	mov    0x4fd5(%rip),%rax        # 4070d0 <stUserMathErr>
  4020fb:	48 85 c0             	test   %rax,%rax
  4020fe:	74 2c                	je     40212c <__mingw_raise_matherr+0x3c>
  402100:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  402107:	00 00 
  402109:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40210d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402112:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402117:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40211d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  402123:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  402129:	ff d0                	callq  *%rax
  40212b:	90                   	nop
  40212c:	48 83 c4 58          	add    $0x58,%rsp
  402130:	c3                   	retq   
  402131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402138:	00 00 00 00 
  40213c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402140 <__mingw_setusermatherr>:
  402140:	48 89 0d 89 4f 00 00 	mov    %rcx,0x4f89(%rip)        # 4070d0 <stUserMathErr>
  402147:	e9 d4 08 00 00       	jmpq   402a20 <__setusermatherr>
  40214c:	90                   	nop
  40214d:	90                   	nop
  40214e:	90                   	nop
  40214f:	90                   	nop

0000000000402150 <_gnu_exception_handler>:
  402150:	41 54                	push   %r12
  402152:	48 83 ec 20          	sub    $0x20,%rsp
  402156:	48 8b 11             	mov    (%rcx),%rdx
  402159:	8b 02                	mov    (%rdx),%eax
  40215b:	49 89 cc             	mov    %rcx,%r12
  40215e:	89 c1                	mov    %eax,%ecx
  402160:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402166:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40216c:	0f 84 be 00 00 00    	je     402230 <_gnu_exception_handler+0xe0>
  402172:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402177:	0f 87 9a 00 00 00    	ja     402217 <_gnu_exception_handler+0xc7>
  40217d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402182:	76 44                	jbe    4021c8 <_gnu_exception_handler+0x78>
  402184:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  402189:	83 f8 09             	cmp    $0x9,%eax
  40218c:	77 2a                	ja     4021b8 <_gnu_exception_handler+0x68>
  40218e:	48 8d 15 5b 21 00 00 	lea    0x215b(%rip),%rdx        # 4042f0 <.rdata>
  402195:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402199:	48 01 d0             	add    %rdx,%rax
  40219c:	ff e0                	jmpq   *%rax
  40219e:	66 90                	xchg   %ax,%ax
  4021a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021a5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4021aa:	e8 09 08 00 00       	callq  4029b8 <signal>
  4021af:	e8 bc fa ff ff       	callq  401c70 <_fpreset>
  4021b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021bd:	48 83 c4 20          	add    $0x20,%rsp
  4021c1:	41 5c                	pop    %r12
  4021c3:	c3                   	retq   
  4021c4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021c8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4021cd:	0f 84 dd 00 00 00    	je     4022b0 <_gnu_exception_handler+0x160>
  4021d3:	76 3b                	jbe    402210 <_gnu_exception_handler+0xc0>
  4021d5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021da:	74 dc                	je     4021b8 <_gnu_exception_handler+0x68>
  4021dc:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4021e1:	75 34                	jne    402217 <_gnu_exception_handler+0xc7>
  4021e3:	31 d2                	xor    %edx,%edx
  4021e5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021ea:	e8 c9 07 00 00       	callq  4029b8 <signal>
  4021ef:	48 83 f8 01          	cmp    $0x1,%rax
  4021f3:	0f 84 e3 00 00 00    	je     4022dc <_gnu_exception_handler+0x18c>
  4021f9:	48 85 c0             	test   %rax,%rax
  4021fc:	74 19                	je     402217 <_gnu_exception_handler+0xc7>
  4021fe:	b9 04 00 00 00       	mov    $0x4,%ecx
  402203:	ff d0                	callq  *%rax
  402205:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40220a:	eb b1                	jmp    4021bd <_gnu_exception_handler+0x6d>
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)
  402210:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402215:	74 a1                	je     4021b8 <_gnu_exception_handler+0x68>
  402217:	48 8b 05 d2 4e 00 00 	mov    0x4ed2(%rip),%rax        # 4070f0 <__mingw_oldexcpt_handler>
  40221e:	48 85 c0             	test   %rax,%rax
  402221:	74 1d                	je     402240 <_gnu_exception_handler+0xf0>
  402223:	4c 89 e1             	mov    %r12,%rcx
  402226:	48 83 c4 20          	add    $0x20,%rsp
  40222a:	41 5c                	pop    %r12
  40222c:	48 ff e0             	rex.W jmpq *%rax
  40222f:	90                   	nop
  402230:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402234:	0f 85 38 ff ff ff    	jne    402172 <_gnu_exception_handler+0x22>
  40223a:	e9 79 ff ff ff       	jmpq   4021b8 <_gnu_exception_handler+0x68>
  40223f:	90                   	nop
  402240:	31 c0                	xor    %eax,%eax
  402242:	48 83 c4 20          	add    $0x20,%rsp
  402246:	41 5c                	pop    %r12
  402248:	c3                   	retq   
  402249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402250:	31 d2                	xor    %edx,%edx
  402252:	b9 08 00 00 00       	mov    $0x8,%ecx
  402257:	e8 5c 07 00 00       	callq  4029b8 <signal>
  40225c:	48 83 f8 01          	cmp    $0x1,%rax
  402260:	0f 84 3a ff ff ff    	je     4021a0 <_gnu_exception_handler+0x50>
  402266:	48 85 c0             	test   %rax,%rax
  402269:	74 ac                	je     402217 <_gnu_exception_handler+0xc7>
  40226b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402270:	ff d0                	callq  *%rax
  402272:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402277:	e9 41 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40227c:	0f 1f 40 00          	nopl   0x0(%rax)
  402280:	31 d2                	xor    %edx,%edx
  402282:	b9 08 00 00 00       	mov    $0x8,%ecx
  402287:	e8 2c 07 00 00       	callq  4029b8 <signal>
  40228c:	48 83 f8 01          	cmp    $0x1,%rax
  402290:	75 d4                	jne    402266 <_gnu_exception_handler+0x116>
  402292:	ba 01 00 00 00       	mov    $0x1,%edx
  402297:	b9 08 00 00 00       	mov    $0x8,%ecx
  40229c:	e8 17 07 00 00       	callq  4029b8 <signal>
  4022a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022a6:	e9 12 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022b0:	31 d2                	xor    %edx,%edx
  4022b2:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022b7:	e8 fc 06 00 00       	callq  4029b8 <signal>
  4022bc:	48 83 f8 01          	cmp    $0x1,%rax
  4022c0:	74 31                	je     4022f3 <_gnu_exception_handler+0x1a3>
  4022c2:	48 85 c0             	test   %rax,%rax
  4022c5:	0f 84 4c ff ff ff    	je     402217 <_gnu_exception_handler+0xc7>
  4022cb:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022d0:	ff d0                	callq  *%rax
  4022d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d7:	e9 e1 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022dc:	ba 01 00 00 00       	mov    $0x1,%edx
  4022e1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022e6:	e8 cd 06 00 00       	callq  4029b8 <signal>
  4022eb:	83 c8 ff             	or     $0xffffffff,%eax
  4022ee:	e9 ca fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022f3:	ba 01 00 00 00       	mov    $0x1,%edx
  4022f8:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022fd:	e8 b6 06 00 00       	callq  4029b8 <signal>
  402302:	83 c8 ff             	or     $0xffffffff,%eax
  402305:	e9 b3 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40230a:	90                   	nop
  40230b:	90                   	nop
  40230c:	90                   	nop
  40230d:	90                   	nop
  40230e:	90                   	nop
  40230f:	90                   	nop

0000000000402310 <__mingwthr_run_key_dtors.part.0>:
  402310:	41 54                	push   %r12
  402312:	57                   	push   %rdi
  402313:	56                   	push   %rsi
  402314:	53                   	push   %rbx
  402315:	48 83 ec 28          	sub    $0x28,%rsp
  402319:	48 8d 0d 00 4e 00 00 	lea    0x4e00(%rip),%rcx        # 407120 <__mingwthr_cs>
  402320:	ff 15 b2 5e 00 00    	callq  *0x5eb2(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402326:	48 8b 1d d3 4d 00 00 	mov    0x4dd3(%rip),%rbx        # 407100 <key_dtor_list>
  40232d:	48 85 db             	test   %rbx,%rbx
  402330:	74 32                	je     402364 <__mingwthr_run_key_dtors.part.0+0x54>
  402332:	48 8b 3d d7 5e 00 00 	mov    0x5ed7(%rip),%rdi        # 408210 <__imp_TlsGetValue>
  402339:	48 8b 35 a0 5e 00 00 	mov    0x5ea0(%rip),%rsi        # 4081e0 <__imp_GetLastError>
  402340:	8b 0b                	mov    (%rbx),%ecx
  402342:	ff d7                	callq  *%rdi
  402344:	49 89 c4             	mov    %rax,%r12
  402347:	ff d6                	callq  *%rsi
  402349:	85 c0                	test   %eax,%eax
  40234b:	75 0e                	jne    40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  40234d:	4d 85 e4             	test   %r12,%r12
  402350:	74 09                	je     40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  402352:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402356:	4c 89 e1             	mov    %r12,%rcx
  402359:	ff d0                	callq  *%rax
  40235b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40235f:	48 85 db             	test   %rbx,%rbx
  402362:	75 dc                	jne    402340 <__mingwthr_run_key_dtors.part.0+0x30>
  402364:	48 8d 0d b5 4d 00 00 	lea    0x4db5(%rip),%rcx        # 407120 <__mingwthr_cs>
  40236b:	48 83 c4 28          	add    $0x28,%rsp
  40236f:	5b                   	pop    %rbx
  402370:	5e                   	pop    %rsi
  402371:	5f                   	pop    %rdi
  402372:	41 5c                	pop    %r12
  402374:	48 ff 25 7d 5e 00 00 	rex.W jmpq *0x5e7d(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  40237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402380 <___w64_mingwthr_add_key_dtor>:
  402380:	57                   	push   %rdi
  402381:	56                   	push   %rsi
  402382:	53                   	push   %rbx
  402383:	48 83 ec 20          	sub    $0x20,%rsp
  402387:	8b 05 7b 4d 00 00    	mov    0x4d7b(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40238d:	89 cf                	mov    %ecx,%edi
  40238f:	48 89 d6             	mov    %rdx,%rsi
  402392:	85 c0                	test   %eax,%eax
  402394:	75 0a                	jne    4023a0 <___w64_mingwthr_add_key_dtor+0x20>
  402396:	48 83 c4 20          	add    $0x20,%rsp
  40239a:	5b                   	pop    %rbx
  40239b:	5e                   	pop    %rsi
  40239c:	5f                   	pop    %rdi
  40239d:	c3                   	retq   
  40239e:	66 90                	xchg   %ax,%ax
  4023a0:	ba 18 00 00 00       	mov    $0x18,%edx
  4023a5:	b9 01 00 00 00       	mov    $0x1,%ecx
  4023aa:	e8 41 06 00 00       	callq  4029f0 <calloc>
  4023af:	48 89 c3             	mov    %rax,%rbx
  4023b2:	48 85 c0             	test   %rax,%rax
  4023b5:	74 3c                	je     4023f3 <___w64_mingwthr_add_key_dtor+0x73>
  4023b7:	89 38                	mov    %edi,(%rax)
  4023b9:	48 8d 0d 60 4d 00 00 	lea    0x4d60(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023c0:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4023c4:	ff 15 0e 5e 00 00    	callq  *0x5e0e(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  4023ca:	48 8b 05 2f 4d 00 00 	mov    0x4d2f(%rip),%rax        # 407100 <key_dtor_list>
  4023d1:	48 8d 0d 48 4d 00 00 	lea    0x4d48(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023d8:	48 89 1d 21 4d 00 00 	mov    %rbx,0x4d21(%rip)        # 407100 <key_dtor_list>
  4023df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023e3:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  4023e9:	31 c0                	xor    %eax,%eax
  4023eb:	48 83 c4 20          	add    $0x20,%rsp
  4023ef:	5b                   	pop    %rbx
  4023f0:	5e                   	pop    %rsi
  4023f1:	5f                   	pop    %rdi
  4023f2:	c3                   	retq   
  4023f3:	83 c8 ff             	or     $0xffffffff,%eax
  4023f6:	eb 9e                	jmp    402396 <___w64_mingwthr_add_key_dtor+0x16>
  4023f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023ff:	00 

0000000000402400 <___w64_mingwthr_remove_key_dtor>:
  402400:	53                   	push   %rbx
  402401:	48 83 ec 20          	sub    $0x20,%rsp
  402405:	8b 05 fd 4c 00 00    	mov    0x4cfd(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40240b:	89 cb                	mov    %ecx,%ebx
  40240d:	85 c0                	test   %eax,%eax
  40240f:	75 0f                	jne    402420 <___w64_mingwthr_remove_key_dtor+0x20>
  402411:	31 c0                	xor    %eax,%eax
  402413:	48 83 c4 20          	add    $0x20,%rsp
  402417:	5b                   	pop    %rbx
  402418:	c3                   	retq   
  402419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402420:	48 8d 0d f9 4c 00 00 	lea    0x4cf9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402427:	ff 15 ab 5d 00 00    	callq  *0x5dab(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  40242d:	48 8b 0d cc 4c 00 00 	mov    0x4ccc(%rip),%rcx        # 407100 <key_dtor_list>
  402434:	48 85 c9             	test   %rcx,%rcx
  402437:	74 2a                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402439:	31 d2                	xor    %edx,%edx
  40243b:	eb 0e                	jmp    40244b <___w64_mingwthr_remove_key_dtor+0x4b>
  40243d:	0f 1f 00             	nopl   (%rax)
  402440:	48 89 ca             	mov    %rcx,%rdx
  402443:	48 85 c0             	test   %rax,%rax
  402446:	74 1b                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402448:	48 89 c1             	mov    %rax,%rcx
  40244b:	8b 01                	mov    (%rcx),%eax
  40244d:	39 d8                	cmp    %ebx,%eax
  40244f:	48 8b 41 10          	mov    0x10(%rcx),%rax
  402453:	75 eb                	jne    402440 <___w64_mingwthr_remove_key_dtor+0x40>
  402455:	48 85 d2             	test   %rdx,%rdx
  402458:	74 26                	je     402480 <___w64_mingwthr_remove_key_dtor+0x80>
  40245a:	48 89 42 10          	mov    %rax,0x10(%rdx)
  40245e:	e8 75 05 00 00       	callq  4029d8 <free>
  402463:	48 8d 0d b6 4c 00 00 	lea    0x4cb6(%rip),%rcx        # 407120 <__mingwthr_cs>
  40246a:	ff 15 88 5d 00 00    	callq  *0x5d88(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402470:	31 c0                	xor    %eax,%eax
  402472:	48 83 c4 20          	add    $0x20,%rsp
  402476:	5b                   	pop    %rbx
  402477:	c3                   	retq   
  402478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40247f:	00 
  402480:	48 89 05 79 4c 00 00 	mov    %rax,0x4c79(%rip)        # 407100 <key_dtor_list>
  402487:	eb d5                	jmp    40245e <___w64_mingwthr_remove_key_dtor+0x5e>
  402489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402490 <__mingw_TLScallback>:
  402490:	53                   	push   %rbx
  402491:	48 83 ec 20          	sub    $0x20,%rsp
  402495:	83 fa 02             	cmp    $0x2,%edx
  402498:	74 46                	je     4024e0 <__mingw_TLScallback+0x50>
  40249a:	77 2c                	ja     4024c8 <__mingw_TLScallback+0x38>
  40249c:	85 d2                	test   %edx,%edx
  40249e:	74 50                	je     4024f0 <__mingw_TLScallback+0x60>
  4024a0:	8b 05 62 4c 00 00    	mov    0x4c62(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024a6:	85 c0                	test   %eax,%eax
  4024a8:	0f 84 b2 00 00 00    	je     402560 <__mingw_TLScallback+0xd0>
  4024ae:	c7 05 50 4c 00 00 01 	movl   $0x1,0x4c50(%rip)        # 407108 <__mingwthr_cs_init>
  4024b5:	00 00 00 
  4024b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4024bd:	48 83 c4 20          	add    $0x20,%rsp
  4024c1:	5b                   	pop    %rbx
  4024c2:	c3                   	retq   
  4024c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024c8:	83 fa 03             	cmp    $0x3,%edx
  4024cb:	75 eb                	jne    4024b8 <__mingw_TLScallback+0x28>
  4024cd:	8b 05 35 4c 00 00    	mov    0x4c35(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024d3:	85 c0                	test   %eax,%eax
  4024d5:	74 e1                	je     4024b8 <__mingw_TLScallback+0x28>
  4024d7:	e8 34 fe ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  4024dc:	eb da                	jmp    4024b8 <__mingw_TLScallback+0x28>
  4024de:	66 90                	xchg   %ax,%ax
  4024e0:	e8 8b f7 ff ff       	callq  401c70 <_fpreset>
  4024e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4024ea:	48 83 c4 20          	add    $0x20,%rsp
  4024ee:	5b                   	pop    %rbx
  4024ef:	c3                   	retq   
  4024f0:	8b 05 12 4c 00 00    	mov    0x4c12(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024f6:	85 c0                	test   %eax,%eax
  4024f8:	75 56                	jne    402550 <__mingw_TLScallback+0xc0>
  4024fa:	8b 05 08 4c 00 00    	mov    0x4c08(%rip),%eax        # 407108 <__mingwthr_cs_init>
  402500:	83 f8 01             	cmp    $0x1,%eax
  402503:	75 b3                	jne    4024b8 <__mingw_TLScallback+0x28>
  402505:	48 8b 1d f4 4b 00 00 	mov    0x4bf4(%rip),%rbx        # 407100 <key_dtor_list>
  40250c:	48 85 db             	test   %rbx,%rbx
  40250f:	74 18                	je     402529 <__mingw_TLScallback+0x99>
  402511:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402518:	48 89 d9             	mov    %rbx,%rcx
  40251b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40251f:	e8 b4 04 00 00       	callq  4029d8 <free>
  402524:	48 85 db             	test   %rbx,%rbx
  402527:	75 ef                	jne    402518 <__mingw_TLScallback+0x88>
  402529:	48 8d 0d f0 4b 00 00 	lea    0x4bf0(%rip),%rcx        # 407120 <__mingwthr_cs>
  402530:	48 c7 05 c5 4b 00 00 	movq   $0x0,0x4bc5(%rip)        # 407100 <key_dtor_list>
  402537:	00 00 00 00 
  40253b:	c7 05 c3 4b 00 00 00 	movl   $0x0,0x4bc3(%rip)        # 407108 <__mingwthr_cs_init>
  402542:	00 00 00 
  402545:	ff 15 85 5c 00 00    	callq  *0x5c85(%rip)        # 4081d0 <__IAT_start__>
  40254b:	e9 68 ff ff ff       	jmpq   4024b8 <__mingw_TLScallback+0x28>
  402550:	e8 bb fd ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  402555:	eb a3                	jmp    4024fa <__mingw_TLScallback+0x6a>
  402557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40255e:	00 00 
  402560:	48 8d 0d b9 4b 00 00 	lea    0x4bb9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402567:	ff 15 83 5c 00 00    	callq  *0x5c83(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  40256d:	e9 3c ff ff ff       	jmpq   4024ae <__mingw_TLScallback+0x1e>
  402572:	90                   	nop
  402573:	90                   	nop
  402574:	90                   	nop
  402575:	90                   	nop
  402576:	90                   	nop
  402577:	90                   	nop
  402578:	90                   	nop
  402579:	90                   	nop
  40257a:	90                   	nop
  40257b:	90                   	nop
  40257c:	90                   	nop
  40257d:	90                   	nop
  40257e:	90                   	nop
  40257f:	90                   	nop

0000000000402580 <_ValidateImageBase>:
  402580:	31 c0                	xor    %eax,%eax
  402582:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402587:	75 0f                	jne    402598 <_ValidateImageBase+0x18>
  402589:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
  40258d:	48 01 d1             	add    %rdx,%rcx
  402590:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402596:	74 08                	je     4025a0 <_ValidateImageBase+0x20>
  402598:	c3                   	retq   
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025a0:	31 c0                	xor    %eax,%eax
  4025a2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  4025a8:	0f 94 c0             	sete   %al
  4025ab:	c3                   	retq   
  4025ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004025b0 <_FindPESection>:
  4025b0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4025b4:	49 89 d0             	mov    %rdx,%r8
  4025b7:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4025bb:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  4025bf:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  4025c4:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  4025c8:	85 d2                	test   %edx,%edx
  4025ca:	74 30                	je     4025fc <_FindPESection+0x4c>
  4025cc:	83 ea 01             	sub    $0x1,%edx
  4025cf:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4025d3:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	8b 48 0c             	mov    0xc(%rax),%ecx
  4025e3:	48 89 ca             	mov    %rcx,%rdx
  4025e6:	4c 39 c1             	cmp    %r8,%rcx
  4025e9:	77 08                	ja     4025f3 <_FindPESection+0x43>
  4025eb:	03 50 08             	add    0x8(%rax),%edx
  4025ee:	4c 39 c2             	cmp    %r8,%rdx
  4025f1:	77 0b                	ja     4025fe <_FindPESection+0x4e>
  4025f3:	48 83 c0 28          	add    $0x28,%rax
  4025f7:	4c 39 c8             	cmp    %r9,%rax
  4025fa:	75 e4                	jne    4025e0 <_FindPESection+0x30>
  4025fc:	31 c0                	xor    %eax,%eax
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop

0000000000402600 <_FindPESectionByName>:
  402600:	41 54                	push   %r12
  402602:	56                   	push   %rsi
  402603:	53                   	push   %rbx
  402604:	48 83 ec 20          	sub    $0x20,%rsp
  402608:	48 89 cb             	mov    %rcx,%rbx
  40260b:	e8 a0 03 00 00       	callq  4029b0 <strlen>
  402610:	48 83 f8 08          	cmp    $0x8,%rax
  402614:	77 7a                	ja     402690 <_FindPESectionByName+0x90>
  402616:	48 8b 15 93 1d 00 00 	mov    0x1d93(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  40261d:	45 31 e4             	xor    %r12d,%r12d
  402620:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402625:	75 57                	jne    40267e <_FindPESectionByName+0x7e>
  402627:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  40262b:	48 01 d0             	add    %rdx,%rax
  40262e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  402634:	75 48                	jne    40267e <_FindPESectionByName+0x7e>
  402636:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40263c:	75 40                	jne    40267e <_FindPESectionByName+0x7e>
  40263e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  402642:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
  402647:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  40264b:	85 c0                	test   %eax,%eax
  40264d:	74 41                	je     402690 <_FindPESectionByName+0x90>
  40264f:	83 e8 01             	sub    $0x1,%eax
  402652:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402656:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  40265b:	eb 0c                	jmp    402669 <_FindPESectionByName+0x69>
  40265d:	0f 1f 00             	nopl   (%rax)
  402660:	49 83 c4 28          	add    $0x28,%r12
  402664:	49 39 f4             	cmp    %rsi,%r12
  402667:	74 27                	je     402690 <_FindPESectionByName+0x90>
  402669:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  40266f:	48 89 da             	mov    %rbx,%rdx
  402672:	4c 89 e1             	mov    %r12,%rcx
  402675:	e8 2e 03 00 00       	callq  4029a8 <strncmp>
  40267a:	85 c0                	test   %eax,%eax
  40267c:	75 e2                	jne    402660 <_FindPESectionByName+0x60>
  40267e:	4c 89 e0             	mov    %r12,%rax
  402681:	48 83 c4 20          	add    $0x20,%rsp
  402685:	5b                   	pop    %rbx
  402686:	5e                   	pop    %rsi
  402687:	41 5c                	pop    %r12
  402689:	c3                   	retq   
  40268a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402690:	45 31 e4             	xor    %r12d,%r12d
  402693:	4c 89 e0             	mov    %r12,%rax
  402696:	48 83 c4 20          	add    $0x20,%rsp
  40269a:	5b                   	pop    %rbx
  40269b:	5e                   	pop    %rsi
  40269c:	41 5c                	pop    %r12
  40269e:	c3                   	retq   
  40269f:	90                   	nop

00000000004026a0 <__mingw_GetSectionForAddress>:
  4026a0:	48 8b 15 09 1d 00 00 	mov    0x1d09(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  4026a7:	31 c0                	xor    %eax,%eax
  4026a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026ae:	75 10                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
  4026b4:	49 01 d0             	add    %rdx,%r8
  4026b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4026be:	74 08                	je     4026c8 <__mingw_GetSectionForAddress+0x28>
  4026c0:	c3                   	retq   
  4026c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4026c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4026cf:	75 ef                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026d1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4026d6:	48 29 d1             	sub    %rdx,%rcx
  4026d9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4026de:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4026e3:	85 d2                	test   %edx,%edx
  4026e5:	74 2e                	je     402715 <__mingw_GetSectionForAddress+0x75>
  4026e7:	83 ea 01             	sub    $0x1,%edx
  4026ea:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4026ee:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4026f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4026f8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026fc:	4c 89 c2             	mov    %r8,%rdx
  4026ff:	4c 39 c1             	cmp    %r8,%rcx
  402702:	72 08                	jb     40270c <__mingw_GetSectionForAddress+0x6c>
  402704:	03 50 08             	add    0x8(%rax),%edx
  402707:	48 39 d1             	cmp    %rdx,%rcx
  40270a:	72 b4                	jb     4026c0 <__mingw_GetSectionForAddress+0x20>
  40270c:	48 83 c0 28          	add    $0x28,%rax
  402710:	4c 39 c8             	cmp    %r9,%rax
  402713:	75 e3                	jne    4026f8 <__mingw_GetSectionForAddress+0x58>
  402715:	31 c0                	xor    %eax,%eax
  402717:	c3                   	retq   
  402718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40271f:	00 

0000000000402720 <__mingw_GetSectionCount>:
  402720:	48 8b 05 89 1c 00 00 	mov    0x1c89(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402727:	45 31 c0             	xor    %r8d,%r8d
  40272a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40272f:	75 0f                	jne    402740 <__mingw_GetSectionCount+0x20>
  402731:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402735:	48 01 d0             	add    %rdx,%rax
  402738:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  40273e:	74 08                	je     402748 <__mingw_GetSectionCount+0x28>
  402740:	44 89 c0             	mov    %r8d,%eax
  402743:	c3                   	retq   
  402744:	0f 1f 40 00          	nopl   0x0(%rax)
  402748:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40274e:	75 f0                	jne    402740 <__mingw_GetSectionCount+0x20>
  402750:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
  402755:	44 89 c0             	mov    %r8d,%eax
  402758:	c3                   	retq   
  402759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402760 <_FindPESectionExec>:
  402760:	4c 8b 05 49 1c 00 00 	mov    0x1c49(%rip),%r8        # 4043b0 <.refptr.__image_base__>
  402767:	31 c0                	xor    %eax,%eax
  402769:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  40276f:	75 0f                	jne    402780 <_FindPESectionExec+0x20>
  402771:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
  402775:	4c 01 c2             	add    %r8,%rdx
  402778:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40277e:	74 08                	je     402788 <_FindPESectionExec+0x28>
  402780:	c3                   	retq   
  402781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402788:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40278e:	75 f0                	jne    402780 <_FindPESectionExec+0x20>
  402790:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402794:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  402799:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  40279d:	85 d2                	test   %edx,%edx
  40279f:	74 27                	je     4027c8 <_FindPESectionExec+0x68>
  4027a1:	83 ea 01             	sub    $0x1,%edx
  4027a4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4027a8:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
  4027ad:	0f 1f 00             	nopl   (%rax)
  4027b0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  4027b4:	74 09                	je     4027bf <_FindPESectionExec+0x5f>
  4027b6:	48 85 c9             	test   %rcx,%rcx
  4027b9:	74 c5                	je     402780 <_FindPESectionExec+0x20>
  4027bb:	48 83 e9 01          	sub    $0x1,%rcx
  4027bf:	48 83 c0 28          	add    $0x28,%rax
  4027c3:	48 39 d0             	cmp    %rdx,%rax
  4027c6:	75 e8                	jne    4027b0 <_FindPESectionExec+0x50>
  4027c8:	31 c0                	xor    %eax,%eax
  4027ca:	c3                   	retq   
  4027cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004027d0 <_GetPEImageBase>:
  4027d0:	48 8b 05 d9 1b 00 00 	mov    0x1bd9(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  4027d7:	45 31 c0             	xor    %r8d,%r8d
  4027da:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  4027df:	75 0f                	jne    4027f0 <_GetPEImageBase+0x20>
  4027e1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  4027e5:	48 01 c2             	add    %rax,%rdx
  4027e8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4027ee:	74 08                	je     4027f8 <_GetPEImageBase+0x28>
  4027f0:	4c 89 c0             	mov    %r8,%rax
  4027f3:	c3                   	retq   
  4027f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4027f8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4027fe:	4c 0f 44 c0          	cmove  %rax,%r8
  402802:	4c 89 c0             	mov    %r8,%rax
  402805:	c3                   	retq   
  402806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40280d:	00 00 00 

0000000000402810 <_IsNonwritableInCurrentImage>:
  402810:	48 8b 05 99 1b 00 00 	mov    0x1b99(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402817:	45 31 c0             	xor    %r8d,%r8d
  40281a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40281f:	75 0f                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402821:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402825:	48 01 c2             	add    %rax,%rdx
  402828:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40282e:	74 08                	je     402838 <_IsNonwritableInCurrentImage+0x28>
  402830:	44 89 c0             	mov    %r8d,%eax
  402833:	c3                   	retq   
  402834:	0f 1f 40 00          	nopl   0x0(%rax)
  402838:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40283e:	75 f0                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402840:	48 29 c1             	sub    %rax,%rcx
  402843:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402847:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  40284c:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  402850:	85 d2                	test   %edx,%edx
  402852:	74 dc                	je     402830 <_IsNonwritableInCurrentImage+0x20>
  402854:	83 ea 01             	sub    $0x1,%edx
  402857:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  40285b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402860:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402864:	4c 89 c2             	mov    %r8,%rdx
  402867:	4c 39 c1             	cmp    %r8,%rcx
  40286a:	72 08                	jb     402874 <_IsNonwritableInCurrentImage+0x64>
  40286c:	03 50 08             	add    0x8(%rax),%edx
  40286f:	48 39 d1             	cmp    %rdx,%rcx
  402872:	72 14                	jb     402888 <_IsNonwritableInCurrentImage+0x78>
  402874:	48 83 c0 28          	add    $0x28,%rax
  402878:	49 39 c1             	cmp    %rax,%r9
  40287b:	75 e3                	jne    402860 <_IsNonwritableInCurrentImage+0x50>
  40287d:	45 31 c0             	xor    %r8d,%r8d
  402880:	44 89 c0             	mov    %r8d,%eax
  402883:	c3                   	retq   
  402884:	0f 1f 40 00          	nopl   0x0(%rax)
  402888:	44 8b 40 24          	mov    0x24(%rax),%r8d
  40288c:	41 f7 d0             	not    %r8d
  40288f:	41 c1 e8 1f          	shr    $0x1f,%r8d
  402893:	44 89 c0             	mov    %r8d,%eax
  402896:	c3                   	retq   
  402897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40289e:	00 00 

00000000004028a0 <__mingw_enum_import_library_names>:
  4028a0:	4c 8b 1d 09 1b 00 00 	mov    0x1b09(%rip),%r11        # 4043b0 <.refptr.__image_base__>
  4028a7:	45 31 c9             	xor    %r9d,%r9d
  4028aa:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4028b0:	75 10                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028b2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
  4028b6:	4d 01 d8             	add    %r11,%r8
  4028b9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4028c0:	74 0e                	je     4028d0 <__mingw_enum_import_library_names+0x30>
  4028c2:	4c 89 c8             	mov    %r9,%rax
  4028c5:	c3                   	retq   
  4028c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028cd:	00 00 00 
  4028d0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4028d7:	75 e9                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028d9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
  4028e0:	85 c0                	test   %eax,%eax
  4028e2:	74 de                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028e4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
  4028e9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
  4028ee:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
  4028f3:	45 85 c0             	test   %r8d,%r8d
  4028f6:	74 ca                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028f8:	41 83 e8 01          	sub    $0x1,%r8d
  4028fc:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
  402900:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
  402905:	0f 1f 00             	nopl   (%rax)
  402908:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  40290c:	4d 89 c8             	mov    %r9,%r8
  40290f:	4c 39 c8             	cmp    %r9,%rax
  402912:	72 09                	jb     40291d <__mingw_enum_import_library_names+0x7d>
  402914:	44 03 42 08          	add    0x8(%rdx),%r8d
  402918:	4c 39 c0             	cmp    %r8,%rax
  40291b:	72 13                	jb     402930 <__mingw_enum_import_library_names+0x90>
  40291d:	48 83 c2 28          	add    $0x28,%rdx
  402921:	49 39 d2             	cmp    %rdx,%r10
  402924:	75 e2                	jne    402908 <__mingw_enum_import_library_names+0x68>
  402926:	45 31 c9             	xor    %r9d,%r9d
  402929:	4c 89 c8             	mov    %r9,%rax
  40292c:	c3                   	retq   
  40292d:	0f 1f 00             	nopl   (%rax)
  402930:	4c 01 d8             	add    %r11,%rax
  402933:	eb 0a                	jmp    40293f <__mingw_enum_import_library_names+0x9f>
  402935:	0f 1f 00             	nopl   (%rax)
  402938:	83 e9 01             	sub    $0x1,%ecx
  40293b:	48 83 c0 14          	add    $0x14,%rax
  40293f:	44 8b 40 04          	mov    0x4(%rax),%r8d
  402943:	45 85 c0             	test   %r8d,%r8d
  402946:	75 07                	jne    40294f <__mingw_enum_import_library_names+0xaf>
  402948:	8b 50 0c             	mov    0xc(%rax),%edx
  40294b:	85 d2                	test   %edx,%edx
  40294d:	74 d7                	je     402926 <__mingw_enum_import_library_names+0x86>
  40294f:	85 c9                	test   %ecx,%ecx
  402951:	7f e5                	jg     402938 <__mingw_enum_import_library_names+0x98>
  402953:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402957:	4d 01 d9             	add    %r11,%r9
  40295a:	4c 89 c8             	mov    %r9,%rax
  40295d:	c3                   	retq   
  40295e:	90                   	nop
  40295f:	90                   	nop

0000000000402960 <___chkstk_ms>:
  402960:	51                   	push   %rcx
  402961:	50                   	push   %rax
  402962:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402968:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40296d:	72 19                	jb     402988 <___chkstk_ms+0x28>
  40296f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402976:	48 83 09 00          	orq    $0x0,(%rcx)
  40297a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402980:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402986:	77 e7                	ja     40296f <___chkstk_ms+0xf>
  402988:	48 29 c1             	sub    %rax,%rcx
  40298b:	48 83 09 00          	orq    $0x0,(%rcx)
  40298f:	58                   	pop    %rax
  402990:	59                   	pop    %rcx
  402991:	c3                   	retq   
  402992:	90                   	nop
  402993:	90                   	nop
  402994:	90                   	nop
  402995:	90                   	nop
  402996:	90                   	nop
  402997:	90                   	nop
  402998:	90                   	nop
  402999:	90                   	nop
  40299a:	90                   	nop
  40299b:	90                   	nop
  40299c:	90                   	nop
  40299d:	90                   	nop
  40299e:	90                   	nop
  40299f:	90                   	nop

00000000004029a0 <vfprintf>:
  4029a0:	ff 25 52 59 00 00    	jmpq   *0x5952(%rip)        # 4082f8 <__imp_vfprintf>
  4029a6:	90                   	nop
  4029a7:	90                   	nop

00000000004029a8 <strncmp>:
  4029a8:	ff 25 42 59 00 00    	jmpq   *0x5942(%rip)        # 4082f0 <__imp_strncmp>
  4029ae:	90                   	nop
  4029af:	90                   	nop

00000000004029b0 <strlen>:
  4029b0:	ff 25 32 59 00 00    	jmpq   *0x5932(%rip)        # 4082e8 <__imp_strlen>
  4029b6:	90                   	nop
  4029b7:	90                   	nop

00000000004029b8 <signal>:
  4029b8:	ff 25 22 59 00 00    	jmpq   *0x5922(%rip)        # 4082e0 <__imp_signal>
  4029be:	90                   	nop
  4029bf:	90                   	nop

00000000004029c0 <memcpy>:
  4029c0:	ff 25 12 59 00 00    	jmpq   *0x5912(%rip)        # 4082d8 <__imp_memcpy>
  4029c6:	90                   	nop
  4029c7:	90                   	nop

00000000004029c8 <malloc>:
  4029c8:	ff 25 02 59 00 00    	jmpq   *0x5902(%rip)        # 4082d0 <__imp_malloc>
  4029ce:	90                   	nop
  4029cf:	90                   	nop

00000000004029d0 <fwrite>:
  4029d0:	ff 25 f2 58 00 00    	jmpq   *0x58f2(%rip)        # 4082c8 <__imp_fwrite>
  4029d6:	90                   	nop
  4029d7:	90                   	nop

00000000004029d8 <free>:
  4029d8:	ff 25 e2 58 00 00    	jmpq   *0x58e2(%rip)        # 4082c0 <__imp_free>
  4029de:	90                   	nop
  4029df:	90                   	nop

00000000004029e0 <fprintf>:
  4029e0:	ff 25 d2 58 00 00    	jmpq   *0x58d2(%rip)        # 4082b8 <__imp_fprintf>
  4029e6:	90                   	nop
  4029e7:	90                   	nop

00000000004029e8 <exit>:
  4029e8:	ff 25 c2 58 00 00    	jmpq   *0x58c2(%rip)        # 4082b0 <__imp_exit>
  4029ee:	90                   	nop
  4029ef:	90                   	nop

00000000004029f0 <calloc>:
  4029f0:	ff 25 b2 58 00 00    	jmpq   *0x58b2(%rip)        # 4082a8 <__imp_calloc>
  4029f6:	90                   	nop
  4029f7:	90                   	nop

00000000004029f8 <abort>:
  4029f8:	ff 25 a2 58 00 00    	jmpq   *0x58a2(%rip)        # 4082a0 <__imp_abort>
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <_onexit>:
  402a00:	ff 25 92 58 00 00    	jmpq   *0x5892(%rip)        # 408298 <__imp__onexit>
  402a06:	90                   	nop
  402a07:	90                   	nop

0000000000402a08 <_initterm>:
  402a08:	ff 25 82 58 00 00    	jmpq   *0x5882(%rip)        # 408290 <__imp__initterm>
  402a0e:	90                   	nop
  402a0f:	90                   	nop

0000000000402a10 <_cexit>:
  402a10:	ff 25 62 58 00 00    	jmpq   *0x5862(%rip)        # 408278 <__imp__cexit>
  402a16:	90                   	nop
  402a17:	90                   	nop

0000000000402a18 <_amsg_exit>:
  402a18:	ff 25 52 58 00 00    	jmpq   *0x5852(%rip)        # 408270 <__imp__amsg_exit>
  402a1e:	90                   	nop
  402a1f:	90                   	nop

0000000000402a20 <__setusermatherr>:
  402a20:	ff 25 3a 58 00 00    	jmpq   *0x583a(%rip)        # 408260 <__imp___setusermatherr>
  402a26:	90                   	nop
  402a27:	90                   	nop

0000000000402a28 <__set_app_type>:
  402a28:	ff 25 2a 58 00 00    	jmpq   *0x582a(%rip)        # 408258 <__imp___set_app_type>
  402a2e:	90                   	nop
  402a2f:	90                   	nop

0000000000402a30 <__lconv_init>:
  402a30:	ff 25 1a 58 00 00    	jmpq   *0x581a(%rip)        # 408250 <__imp___lconv_init>
  402a36:	90                   	nop
  402a37:	90                   	nop

0000000000402a38 <__getmainargs>:
  402a38:	ff 25 fa 57 00 00    	jmpq   *0x57fa(%rip)        # 408238 <__imp___getmainargs>
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <__C_specific_handler>:
  402a40:	ff 25 ea 57 00 00    	jmpq   *0x57ea(%rip)        # 408230 <__imp___C_specific_handler>
  402a46:	90                   	nop
  402a47:	90                   	nop
  402a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a4f:	00 

0000000000402a50 <__acrt_iob_func>:
  402a50:	53                   	push   %rbx
  402a51:	48 83 ec 20          	sub    $0x20,%rsp
  402a55:	89 cb                	mov    %ecx,%ebx
  402a57:	e8 64 00 00 00       	callq  402ac0 <__iob_func>
  402a5c:	89 d9                	mov    %ebx,%ecx
  402a5e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402a62:	48 c1 e2 04          	shl    $0x4,%rdx
  402a66:	48 01 d0             	add    %rdx,%rax
  402a69:	48 83 c4 20          	add    $0x20,%rsp
  402a6d:	5b                   	pop    %rbx
  402a6e:	c3                   	retq   
  402a6f:	90                   	nop

0000000000402a70 <_get_invalid_parameter_handler>:
  402a70:	48 8b 05 19 47 00 00 	mov    0x4719(%rip),%rax        # 407190 <handler>
  402a77:	c3                   	retq   
  402a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a7f:	00 

0000000000402a80 <_set_invalid_parameter_handler>:
  402a80:	48 89 c8             	mov    %rcx,%rax
  402a83:	48 87 05 06 47 00 00 	xchg   %rax,0x4706(%rip)        # 407190 <handler>
  402a8a:	c3                   	retq   
  402a8b:	90                   	nop
  402a8c:	90                   	nop
  402a8d:	90                   	nop
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <__p__acmdln>:
  402a90:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043d0 <.refptr.__imp__acmdln>
  402a97:	48 8b 00             	mov    (%rax),%rax
  402a9a:	c3                   	retq   
  402a9b:	90                   	nop
  402a9c:	90                   	nop
  402a9d:	90                   	nop
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <__p__commode>:
  402aa0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043e0 <.refptr.__imp__commode>
  402aa7:	48 8b 00             	mov    (%rax),%rax
  402aaa:	c3                   	retq   
  402aab:	90                   	nop
  402aac:	90                   	nop
  402aad:	90                   	nop
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <__p__fmode>:
  402ab0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043f0 <.refptr.__imp__fmode>
  402ab7:	48 8b 00             	mov    (%rax),%rax
  402aba:	c3                   	retq   
  402abb:	90                   	nop
  402abc:	90                   	nop
  402abd:	90                   	nop
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__iob_func>:
  402ac0:	ff 25 82 57 00 00    	jmpq   *0x5782(%rip)        # 408248 <__imp___iob_func>
  402ac6:	90                   	nop
  402ac7:	90                   	nop
  402ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402acf:	00 

0000000000402ad0 <VirtualQuery>:
  402ad0:	ff 25 4a 57 00 00    	jmpq   *0x574a(%rip)        # 408220 <__imp_VirtualQuery>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <VirtualProtect>:
  402ad8:	ff 25 3a 57 00 00    	jmpq   *0x573a(%rip)        # 408218 <__imp_VirtualProtect>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <TlsGetValue>:
  402ae0:	ff 25 2a 57 00 00    	jmpq   *0x572a(%rip)        # 408210 <__imp_TlsGetValue>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <Sleep>:
  402ae8:	ff 25 1a 57 00 00    	jmpq   *0x571a(%rip)        # 408208 <__imp_Sleep>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <SetUnhandledExceptionFilter>:
  402af0:	ff 25 0a 57 00 00    	jmpq   *0x570a(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <LeaveCriticalSection>:
  402af8:	ff 25 fa 56 00 00    	jmpq   *0x56fa(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <InitializeCriticalSection>:
  402b00:	ff 25 ea 56 00 00    	jmpq   *0x56ea(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <GetStartupInfoA>:
  402b08:	ff 25 da 56 00 00    	jmpq   *0x56da(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <GetLastError>:
  402b10:	ff 25 ca 56 00 00    	jmpq   *0x56ca(%rip)        # 4081e0 <__imp_GetLastError>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <EnterCriticalSection>:
  402b18:	ff 25 ba 56 00 00    	jmpq   *0x56ba(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <DeleteCriticalSection>:
  402b20:	ff 25 aa 56 00 00    	jmpq   *0x56aa(%rip)        # 4081d0 <__IAT_start__>
  402b26:	90                   	nop
  402b27:	90                   	nop
  402b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b2f:	00 

0000000000402b30 <register_frame_ctor>:
  402b30:	e9 eb e9 ff ff       	jmpq   401520 <__gcc_register_frame>
  402b35:	90                   	nop
  402b36:	90                   	nop
  402b37:	90                   	nop
  402b38:	90                   	nop
  402b39:	90                   	nop
  402b3a:	90                   	nop
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__CTOR_LIST__>:
  402b40:	ff                   	(bad)  
  402b41:	ff                   	(bad)  
  402b42:	ff                   	(bad)  
  402b43:	ff                   	(bad)  
  402b44:	ff                   	(bad)  
  402b45:	ff                   	(bad)  
  402b46:	ff                   	(bad)  
  402b47:	ff                   	.byte 0xff

0000000000402b48 <.ctors>:
  402b48:	4c 19 40 00          	sbb    %r8,0x0(%rax)
  402b4c:	00 00                	add    %al,(%rax)
	...

0000000000402b50 <.ctors.65535>:
  402b50:	30 2b                	xor    %ch,(%rbx)
  402b52:	40 00 00             	add    %al,(%rax)
	...

0000000000402b60 <__DTOR_LIST__>:
  402b60:	ff                   	(bad)  
  402b61:	ff                   	(bad)  
  402b62:	ff                   	(bad)  
  402b63:	ff                   	(bad)  
  402b64:	ff                   	(bad)  
  402b65:	ff                   	(bad)  
  402b66:	ff                   	(bad)  
  402b67:	ff 00                	incl   (%rax)
  402b69:	00 00                	add    %al,(%rax)
  402b6b:	00 00                	add    %al,(%rax)
  402b6d:	00 00                	add    %al,(%rax)
	...

.\a.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 d5 34 00 00 	mov    0x34d5(%rip),%rax        # 4044f0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 d6 34 00 00 	mov    0x34d6(%rip),%rax        # 404500 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 d9 34 00 00 	mov    0x34d9(%rip),%rax        # 404510 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 9c 34 00 00 	mov    0x349c(%rip),%rax        # 4044e0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 5f 33 00 00 	mov    0x335f(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 69                	je     4010d0 <pre_c_init+0xc0>
  401067:	48 8b 05 62 34 00 00 	mov    0x3462(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  40106e:	89 0d ac 5f 00 00    	mov    %ecx,0x5fac(%rip)        # 407020 <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	74 46                	je     4010c0 <pre_c_init+0xb0>
  40107a:	b9 02 00 00 00       	mov    $0x2,%ecx
  40107f:	e8 a4 19 00 00       	callq  402a28 <__set_app_type>
  401084:	e8 27 1a 00 00       	callq  402ab0 <__p__fmode>
  401089:	48 8b 15 00 34 00 00 	mov    0x3400(%rip),%rdx        # 404490 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 07 1a 00 00       	callq  402aa0 <__p__commode>
  401099:	48 8b 15 d0 33 00 00 	mov    0x33d0(%rip),%rdx        # 404470 <.refptr._commode>
  4010a0:	8b 12                	mov    (%rdx),%edx
  4010a2:	89 10                	mov    %edx,(%rax)
  4010a4:	e8 e7 09 00 00       	callq  401a90 <_setargv>
  4010a9:	48 8b 05 90 32 00 00 	mov    0x3290(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010b0:	83 38 01             	cmpl   $0x1,(%rax)
  4010b3:	74 53                	je     401108 <pre_c_init+0xf8>
  4010b5:	31 c0                	xor    %eax,%eax
  4010b7:	48 83 c4 28          	add    $0x28,%rsp
  4010bb:	c3                   	retq   
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010c5:	e8 5e 19 00 00       	callq  402a28 <__set_app_type>
  4010ca:	eb b8                	jmp    401084 <pre_c_init+0x74>
  4010cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010d9:	74 45                	je     401120 <pre_c_init+0x110>
  4010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010e0:	75 85                	jne    401067 <pre_c_init+0x57>
  4010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010e9:	0f 86 78 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  4010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010f5:	31 c9                	xor    %ecx,%ecx
  4010f7:	85 d2                	test   %edx,%edx
  4010f9:	0f 95 c1             	setne  %cl
  4010fc:	e9 66 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401108:	48 8d 0d 61 0a 00 00 	lea    0xa61(%rip),%rcx        # 401b70 <_matherr>
  40110f:	e8 2c 10 00 00       	callq  402140 <__mingw_setusermatherr>
  401114:	31 c0                	xor    %eax,%eax
  401116:	48 83 c4 28          	add    $0x28,%rsp
  40111a:	c3                   	retq   
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401124:	0f 86 3d ff ff ff    	jbe    401067 <pre_c_init+0x57>
  40112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401131:	31 c9                	xor    %ecx,%ecx
  401133:	45 85 c0             	test   %r8d,%r8d
  401136:	0f 95 c1             	setne  %cl
  401139:	e9 29 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  40113e:	66 90                	xchg   %ax,%ax

0000000000401140 <pre_cpp_init>:
  401140:	48 83 ec 38          	sub    $0x38,%rsp
  401144:	48 8b 05 75 33 00 00 	mov    0x3375(%rip),%rax        # 4044c0 <.refptr._newmode>
  40114b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407028 <envp>
  401152:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407030 <argv>
  401159:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407038 <argc>
  401160:	8b 00                	mov    (%rax),%eax
  401162:	89 05 b0 5e 00 00    	mov    %eax,0x5eb0(%rip)        # 407018 <startinfo>
  401168:	48 8d 05 a9 5e 00 00 	lea    0x5ea9(%rip),%rax        # 407018 <startinfo>
  40116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401174:	48 8b 05 05 33 00 00 	mov    0x3305(%rip),%rax        # 404480 <.refptr._dowildcard>
  40117b:	44 8b 08             	mov    (%rax),%r9d
  40117e:	e8 b5 18 00 00       	callq  402a38 <__getmainargs>
  401183:	90                   	nop
  401184:	48 83 c4 38          	add    $0x38,%rsp
  401188:	c3                   	retq   
  401189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401190 <__tmainCRTStartup>:
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	57                   	push   %rdi
  401196:	56                   	push   %rsi
  401197:	53                   	push   %rbx
  401198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  4011a4:	31 c0                	xor    %eax,%eax
  4011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4011ab:	4c 89 c7             	mov    %r8,%rdi
  4011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011b1:	48 8b 3d 18 33 00 00 	mov    0x3318(%rip),%rdi        # 4044d0 <.refptr.mingw_app_type>
  4011b8:	44 8b 0f             	mov    (%rdi),%r9d
  4011bb:	45 85 c9             	test   %r9d,%r9d
  4011be:	0f 85 9c 02 00 00    	jne    401460 <__tmainCRTStartup+0x2d0>
  4011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011cb:	00 00 
  4011cd:	48 8b 1d 3c 32 00 00 	mov    0x323c(%rip),%rbx        # 404410 <.refptr.__native_startup_lock>
  4011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011d8:	31 ed                	xor    %ebp,%ebp
  4011da:	4c 8b 25 27 70 00 00 	mov    0x7027(%rip),%r12        # 408208 <__imp_Sleep>
  4011e1:	eb 16                	jmp    4011f9 <__tmainCRTStartup+0x69>
  4011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e8:	48 39 c6             	cmp    %rax,%rsi
  4011eb:	0f 84 17 02 00 00    	je     401408 <__tmainCRTStartup+0x278>
  4011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011f6:	41 ff d4             	callq  *%r12
  4011f9:	48 89 e8             	mov    %rbp,%rax
  4011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  401201:	48 85 c0             	test   %rax,%rax
  401204:	75 e2                	jne    4011e8 <__tmainCRTStartup+0x58>
  401206:	48 8b 35 13 32 00 00 	mov    0x3213(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40120d:	31 ed                	xor    %ebp,%ebp
  40120f:	8b 06                	mov    (%rsi),%eax
  401211:	83 f8 01             	cmp    $0x1,%eax
  401214:	0f 84 05 02 00 00    	je     40141f <__tmainCRTStartup+0x28f>
  40121a:	8b 06                	mov    (%rsi),%eax
  40121c:	85 c0                	test   %eax,%eax
  40121e:	0f 84 6c 02 00 00    	je     401490 <__tmainCRTStartup+0x300>
  401224:	c7 05 ee 5d 00 00 01 	movl   $0x1,0x5dee(%rip)        # 40701c <has_cctor>
  40122b:	00 00 00 
  40122e:	8b 06                	mov    (%rsi),%eax
  401230:	83 f8 01             	cmp    $0x1,%eax
  401233:	0f 84 fb 01 00 00    	je     401434 <__tmainCRTStartup+0x2a4>
  401239:	85 ed                	test   %ebp,%ebp
  40123b:	0f 84 14 02 00 00    	je     401455 <__tmainCRTStartup+0x2c5>
  401241:	48 8b 05 58 31 00 00 	mov    0x3158(%rip),%rax        # 4043a0 <.refptr.__dyn_tls_init_callback>
  401248:	48 8b 00             	mov    (%rax),%rax
  40124b:	48 85 c0             	test   %rax,%rax
  40124e:	74 0c                	je     40125c <__tmainCRTStartup+0xcc>
  401250:	45 31 c0             	xor    %r8d,%r8d
  401253:	ba 02 00 00 00       	mov    $0x2,%edx
  401258:	31 c9                	xor    %ecx,%ecx
  40125a:	ff d0                	callq  *%rax
  40125c:	e8 ff 0b 00 00       	callq  401e60 <_pei386_runtime_relocator>
  401261:	48 8d 0d e8 0e 00 00 	lea    0xee8(%rip),%rcx        # 402150 <_gnu_exception_handler>
  401268:	ff 15 92 6f 00 00    	callq  *0x6f92(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  40126e:	48 8b 15 8b 31 00 00 	mov    0x318b(%rip),%rdx        # 404400 <.refptr.__mingw_oldexcpt_handler>
  401275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40127c:	48 89 02             	mov    %rax,(%rdx)
  40127f:	e8 fc 17 00 00       	callq  402a80 <_set_invalid_parameter_handler>
  401284:	e8 e7 09 00 00       	callq  401c70 <_fpreset>
  401289:	48 8b 05 20 31 00 00 	mov    0x3120(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401290:	48 89 05 79 5d 00 00 	mov    %rax,0x5d79(%rip)        # 407010 <__mingw_winmain_hInstance>
  401297:	e8 f4 17 00 00       	callq  402a90 <__p__acmdln>
  40129c:	31 c9                	xor    %ecx,%ecx
  40129e:	48 8b 00             	mov    (%rax),%rax
  4012a1:	48 85 c0             	test   %rax,%rax
  4012a4:	75 1c                	jne    4012c2 <__tmainCRTStartup+0x132>
  4012a6:	eb 58                	jmp    401300 <__tmainCRTStartup+0x170>
  4012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4012af:	00 
  4012b0:	84 d2                	test   %dl,%dl
  4012b2:	74 45                	je     4012f9 <__tmainCRTStartup+0x169>
  4012b4:	83 e1 01             	and    $0x1,%ecx
  4012b7:	74 27                	je     4012e0 <__tmainCRTStartup+0x150>
  4012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012be:	48 83 c0 01          	add    $0x1,%rax
  4012c2:	0f b6 10             	movzbl (%rax),%edx
  4012c5:	80 fa 20             	cmp    $0x20,%dl
  4012c8:	7e e6                	jle    4012b0 <__tmainCRTStartup+0x120>
  4012ca:	41 89 c8             	mov    %ecx,%r8d
  4012cd:	41 83 f0 01          	xor    $0x1,%r8d
  4012d1:	80 fa 22             	cmp    $0x22,%dl
  4012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012d8:	eb e4                	jmp    4012be <__tmainCRTStartup+0x12e>
  4012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012e0:	84 d2                	test   %dl,%dl
  4012e2:	74 15                	je     4012f9 <__tmainCRTStartup+0x169>
  4012e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012ec:	48 83 c0 01          	add    $0x1,%rax
  4012f0:	84 d2                	test   %dl,%dl
  4012f2:	74 05                	je     4012f9 <__tmainCRTStartup+0x169>
  4012f4:	80 fa 20             	cmp    $0x20,%dl
  4012f7:	7e ef                	jle    4012e8 <__tmainCRTStartup+0x158>
  4012f9:	48 89 05 08 5d 00 00 	mov    %rax,0x5d08(%rip)        # 407008 <__mingw_winmain_lpCmdLine>
  401300:	44 8b 07             	mov    (%rdi),%r8d
  401303:	45 85 c0             	test   %r8d,%r8d
  401306:	74 16                	je     40131e <__tmainCRTStartup+0x18e>
  401308:	b8 0a 00 00 00       	mov    $0xa,%eax
  40130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401312:	0f 85 e0 00 00 00    	jne    4013f8 <__tmainCRTStartup+0x268>
  401318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 403000 <__data_start__>
  40131e:	48 63 2d 13 5d 00 00 	movslq 0x5d13(%rip),%rbp        # 407038 <argc>
  401325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401329:	4d 63 e4             	movslq %r12d,%r12
  40132c:	49 c1 e4 03          	shl    $0x3,%r12
  401330:	4c 89 e1             	mov    %r12,%rcx
  401333:	e8 90 16 00 00       	callq  4029c8 <malloc>
  401338:	4c 8b 2d f1 5c 00 00 	mov    0x5cf1(%rip),%r13        # 407030 <argv>
  40133f:	48 89 c7             	mov    %rax,%rdi
  401342:	85 ed                	test   %ebp,%ebp
  401344:	7e 42                	jle    401388 <__tmainCRTStartup+0x1f8>
  401346:	31 db                	xor    %ebx,%ebx
  401348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40134f:	00 
  401350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401355:	e8 56 16 00 00       	callq  4029b0 <strlen>
  40135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135e:	48 89 f1             	mov    %rsi,%rcx
  401361:	e8 62 16 00 00       	callq  4029c8 <malloc>
  401366:	49 89 f0             	mov    %rsi,%r8
  401369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401372:	48 89 c1             	mov    %rax,%rcx
  401375:	48 83 c3 01          	add    $0x1,%rbx
  401379:	e8 42 16 00 00       	callq  4029c0 <memcpy>
  40137e:	48 39 dd             	cmp    %rbx,%rbp
  401381:	75 cd                	jne    401350 <__tmainCRTStartup+0x1c0>
  401383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  401388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138f:	48 89 3d 9a 5c 00 00 	mov    %rdi,0x5c9a(%rip)        # 407030 <argv>
  401396:	e8 c5 06 00 00       	callq  401a60 <__main>
  40139b:	48 8b 05 1e 30 00 00 	mov    0x301e(%rip),%rax        # 4043c0 <.refptr.__imp___initenv>
  4013a2:	4c 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%r8        # 407028 <envp>
  4013a9:	8b 0d 89 5c 00 00    	mov    0x5c89(%rip),%ecx        # 407038 <argc>
  4013af:	48 8b 00             	mov    (%rax),%rax
  4013b2:	4c 89 00             	mov    %r8,(%rax)
  4013b5:	48 8b 15 74 5c 00 00 	mov    0x5c74(%rip),%rdx        # 407030 <argv>
  4013bc:	e8 c4 03 00 00       	callq  401785 <main>
  4013c1:	8b 0d 59 5c 00 00    	mov    0x5c59(%rip),%ecx        # 407020 <managedapp>
  4013c7:	89 05 57 5c 00 00    	mov    %eax,0x5c57(%rip)        # 407024 <mainret>
  4013cd:	85 c9                	test   %ecx,%ecx
  4013cf:	0f 84 d9 00 00 00    	je     4014ae <__tmainCRTStartup+0x31e>
  4013d5:	8b 15 41 5c 00 00    	mov    0x5c41(%rip),%edx        # 40701c <has_cctor>
  4013db:	85 d2                	test   %edx,%edx
  4013dd:	0f 84 8d 00 00 00    	je     401470 <__tmainCRTStartup+0x2e0>
  4013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013ea:	5b                   	pop    %rbx
  4013eb:	5e                   	pop    %rsi
  4013ec:	5f                   	pop    %rdi
  4013ed:	5d                   	pop    %rbp
  4013ee:	41 5c                	pop    %r12
  4013f0:	41 5d                	pop    %r13
  4013f2:	c3                   	retq   
  4013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013fd:	e9 16 ff ff ff       	jmpq   401318 <__tmainCRTStartup+0x188>
  401402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401408:	48 8b 35 11 30 00 00 	mov    0x3011(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40140f:	bd 01 00 00 00       	mov    $0x1,%ebp
  401414:	8b 06                	mov    (%rsi),%eax
  401416:	83 f8 01             	cmp    $0x1,%eax
  401419:	0f 85 fb fd ff ff    	jne    40121a <__tmainCRTStartup+0x8a>
  40141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401424:	e8 ef 15 00 00       	callq  402a18 <_amsg_exit>
  401429:	8b 06                	mov    (%rsi),%eax
  40142b:	83 f8 01             	cmp    $0x1,%eax
  40142e:	0f 85 05 fe ff ff    	jne    401239 <__tmainCRTStartup+0xa9>
  401434:	48 8b 15 05 30 00 00 	mov    0x3005(%rip),%rdx        # 404440 <.refptr.__xc_z>
  40143b:	48 8b 0d ee 2f 00 00 	mov    0x2fee(%rip),%rcx        # 404430 <.refptr.__xc_a>
  401442:	e8 c1 15 00 00       	callq  402a08 <_initterm>
  401447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  40144d:	85 ed                	test   %ebp,%ebp
  40144f:	0f 85 ec fd ff ff    	jne    401241 <__tmainCRTStartup+0xb1>
  401455:	31 c0                	xor    %eax,%eax
  401457:	48 87 03             	xchg   %rax,(%rbx)
  40145a:	e9 e2 fd ff ff       	jmpq   401241 <__tmainCRTStartup+0xb1>
  40145f:	90                   	nop
  401460:	4c 89 c1             	mov    %r8,%rcx
  401463:	ff 15 7f 6d 00 00    	callq  *0x6d7f(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  401469:	e9 56 fd ff ff       	jmpq   4011c4 <__tmainCRTStartup+0x34>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	e8 9b 15 00 00       	callq  402a10 <_cexit>
  401475:	8b 05 a9 5b 00 00    	mov    0x5ba9(%rip),%eax        # 407024 <mainret>
  40147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5e                   	pop    %rsi
  401484:	5f                   	pop    %rdi
  401485:	5d                   	pop    %rbp
  401486:	41 5c                	pop    %r12
  401488:	41 5d                	pop    %r13
  40148a:	c3                   	retq   
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401490:	48 8b 15 c9 2f 00 00 	mov    0x2fc9(%rip),%rdx        # 404460 <.refptr.__xi_z>
  401497:	48 8b 0d b2 2f 00 00 	mov    0x2fb2(%rip),%rcx        # 404450 <.refptr.__xi_a>
  40149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014a4:	e8 5f 15 00 00       	callq  402a08 <_initterm>
  4014a9:	e9 80 fd ff ff       	jmpq   40122e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 33 15 00 00       	callq  4029e8 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 05 30 00 00 	mov    0x3005(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 ba fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014d6:	90                   	nop

00000000004014d7 <.l_endw>:
  4014d7:	90                   	nop
  4014d8:	48 83 c4 28          	add    $0x28,%rsp
  4014dc:	c3                   	retq   
  4014dd:	0f 1f 00             	nopl   (%rax)

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 e5 2f 00 00 	mov    0x2fe5(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 9a fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014f6:	90                   	nop

00000000004014f7 <.l_end>:
  4014f7:	90                   	nop
  4014f8:	48 83 c4 28          	add    $0x28,%rsp
  4014fc:	c3                   	retq   
  4014fd:	0f 1f 00             	nopl   (%rax)

0000000000401500 <atexit>:
  401500:	48 83 ec 28          	sub    $0x28,%rsp
  401504:	e8 f7 14 00 00       	callq  402a00 <_onexit>
  401509:	48 85 c0             	test   %rax,%rax
  40150c:	0f 94 c0             	sete   %al
  40150f:	0f b6 c0             	movzbl %al,%eax
  401512:	f7 d8                	neg    %eax
  401514:	48 83 c4 28          	add    $0x28,%rsp
  401518:	c3                   	retq   
  401519:	90                   	nop
  40151a:	90                   	nop
  40151b:	90                   	nop
  40151c:	90                   	nop
  40151d:	90                   	nop
  40151e:	90                   	nop
  40151f:	90                   	nop

0000000000401520 <__gcc_register_frame>:
  401520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401530 <__gcc_deregister_frame>
  401527:	e9 d4 ff ff ff       	jmpq   401500 <atexit>
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401530 <__gcc_deregister_frame>:
  401530:	c3                   	retq   
  401531:	90                   	nop
  401532:	90                   	nop
  401533:	90                   	nop
  401534:	90                   	nop
  401535:	90                   	nop
  401536:	90                   	nop
  401537:	90                   	nop
  401538:	90                   	nop
  401539:	90                   	nop
  40153a:	90                   	nop
  40153b:	90                   	nop
  40153c:	90                   	nop
  40153d:	90                   	nop
  40153e:	90                   	nop
  40153f:	90                   	nop

0000000000401540 <_Z11print_arrayPii>:
  401540:	55                   	push   %rbp
  401541:	48 89 e5             	mov    %rsp,%rbp
  401544:	48 83 ec 30          	sub    $0x30,%rsp
  401548:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40154c:	89 55 18             	mov    %edx,0x18(%rbp)
  40154f:	48 8d 15 b6 2a 00 00 	lea    0x2ab6(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401556:	48 8b 0d f3 2d 00 00 	mov    0x2df3(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40155d:	e8 16 04 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401562:	48 8b 15 f7 2d 00 00 	mov    0x2df7(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401569:	48 8b 0d e0 2d 00 00 	mov    0x2de0(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401570:	e8 2b 04 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401575:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40157c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40157f:	3b 45 18             	cmp    0x18(%rbp),%eax
  401582:	7d 37                	jge    4015bb <_Z11print_arrayPii+0x7b>
  401584:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401587:	48 98                	cltq   
  401589:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401590:	00 
  401591:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401595:	48 01 d0             	add    %rdx,%rax
  401598:	8b 00                	mov    (%rax),%eax
  40159a:	89 c2                	mov    %eax,%edx
  40159c:	48 8b 0d ad 2d 00 00 	mov    0x2dad(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015a3:	e8 f0 03 00 00       	callq  401998 <_ZNSolsEi>
  4015a8:	ba 20 00 00 00       	mov    $0x20,%edx
  4015ad:	48 89 c1             	mov    %rax,%rcx
  4015b0:	e8 bb 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  4015b5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4015b9:	eb c1                	jmp    40157c <_Z11print_arrayPii+0x3c>
  4015bb:	48 8b 15 9e 2d 00 00 	mov    0x2d9e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4015c2:	48 8b 0d 87 2d 00 00 	mov    0x2d87(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015c9:	e8 d2 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4015ce:	90                   	nop
  4015cf:	48 83 c4 30          	add    $0x30,%rsp
  4015d3:	5d                   	pop    %rbp
  4015d4:	c3                   	retq   

00000000004015d5 <_Z12print_array2Piii>:
  4015d5:	55                   	push   %rbp
  4015d6:	48 89 e5             	mov    %rsp,%rbp
  4015d9:	48 83 ec 30          	sub    $0x30,%rsp
  4015dd:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4015e1:	89 55 18             	mov    %edx,0x18(%rbp)
  4015e4:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4015e8:	48 8d 15 1d 2a 00 00 	lea    0x2a1d(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4015ef:	48 8b 0d 5a 2d 00 00 	mov    0x2d5a(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015f6:	e8 7d 03 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4015fb:	48 8b 15 5e 2d 00 00 	mov    0x2d5e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401602:	48 8b 0d 47 2d 00 00 	mov    0x2d47(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401609:	e8 92 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40160e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401615:	8b 45 18             	mov    0x18(%rbp),%eax
  401618:	0f af 45 20          	imul   0x20(%rbp),%eax
  40161c:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  40161f:	7d 5b                	jge    40167c <_Z12print_array2Piii+0xa7>
  401621:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401624:	48 98                	cltq   
  401626:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40162d:	00 
  40162e:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401632:	48 01 d0             	add    %rdx,%rax
  401635:	8b 00                	mov    (%rax),%eax
  401637:	89 c2                	mov    %eax,%edx
  401639:	48 8b 0d 10 2d 00 00 	mov    0x2d10(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401640:	e8 53 03 00 00       	callq  401998 <_ZNSolsEi>
  401645:	ba 09 00 00 00       	mov    $0x9,%edx
  40164a:	48 89 c1             	mov    %rax,%rcx
  40164d:	e8 1e 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401652:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401655:	99                   	cltd   
  401656:	f7 7d 20             	idivl  0x20(%rbp)
  401659:	8b 45 20             	mov    0x20(%rbp),%eax
  40165c:	83 e8 01             	sub    $0x1,%eax
  40165f:	39 c2                	cmp    %eax,%edx
  401661:	75 13                	jne    401676 <_Z12print_array2Piii+0xa1>
  401663:	48 8b 15 f6 2c 00 00 	mov    0x2cf6(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40166a:	48 8b 0d df 2c 00 00 	mov    0x2cdf(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401671:	e8 2a 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401676:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40167a:	eb 99                	jmp    401615 <_Z12print_array2Piii+0x40>
  40167c:	48 8b 15 dd 2c 00 00 	mov    0x2cdd(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401683:	48 8b 0d c6 2c 00 00 	mov    0x2cc6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40168a:	e8 11 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40168f:	90                   	nop
  401690:	48 83 c4 30          	add    $0x30,%rsp
  401694:	5d                   	pop    %rbp
  401695:	c3                   	retq   

0000000000401696 <_Z14print_array_2dPA5_iii>:
  401696:	55                   	push   %rbp
  401697:	48 89 e5             	mov    %rsp,%rbp
  40169a:	48 83 ec 30          	sub    $0x30,%rsp
  40169e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4016a2:	89 55 18             	mov    %edx,0x18(%rbp)
  4016a5:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4016a9:	48 8d 15 5c 29 00 00 	lea    0x295c(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4016b0:	48 8b 0d 99 2c 00 00 	mov    0x2c99(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016b7:	e8 bc 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4016bc:	48 8b 15 9d 2c 00 00 	mov    0x2c9d(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4016c3:	48 8b 0d 86 2c 00 00 	mov    0x2c86(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016ca:	e8 d1 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4016cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4016d6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016d9:	3b 45 18             	cmp    0x18(%rbp),%eax
  4016dc:	7d 6f                	jge    40174d <_Z14print_array_2dPA5_iii+0xb7>
  4016de:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4016e5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4016e8:	3b 45 20             	cmp    0x20(%rbp),%eax
  4016eb:	7d 47                	jge    401734 <_Z14print_array_2dPA5_iii+0x9e>
  4016ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016f0:	48 63 d0             	movslq %eax,%rdx
  4016f3:	48 89 d0             	mov    %rdx,%rax
  4016f6:	48 c1 e0 02          	shl    $0x2,%rax
  4016fa:	48 01 d0             	add    %rdx,%rax
  4016fd:	48 c1 e0 02          	shl    $0x2,%rax
  401701:	48 89 c2             	mov    %rax,%rdx
  401704:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401708:	48 01 c2             	add    %rax,%rdx
  40170b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40170e:	48 98                	cltq   
  401710:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  401713:	89 c2                	mov    %eax,%edx
  401715:	48 8b 0d 34 2c 00 00 	mov    0x2c34(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40171c:	e8 77 02 00 00       	callq  401998 <_ZNSolsEi>
  401721:	ba 09 00 00 00       	mov    $0x9,%edx
  401726:	48 89 c1             	mov    %rax,%rcx
  401729:	e8 42 02 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  40172e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401732:	eb b1                	jmp    4016e5 <_Z14print_array_2dPA5_iii+0x4f>
  401734:	48 8b 15 25 2c 00 00 	mov    0x2c25(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40173b:	48 8b 0d 0e 2c 00 00 	mov    0x2c0e(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401742:	e8 59 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401747:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40174b:	eb 89                	jmp    4016d6 <_Z14print_array_2dPA5_iii+0x40>
  40174d:	90                   	nop
  40174e:	48 83 c4 30          	add    $0x30,%rsp
  401752:	5d                   	pop    %rbp
  401753:	c3                   	retq   

0000000000401754 <_Z15print_separatorv>:
  401754:	55                   	push   %rbp
  401755:	48 89 e5             	mov    %rsp,%rbp
  401758:	48 83 ec 20          	sub    $0x20,%rsp
  40175c:	48 8d 15 b5 28 00 00 	lea    0x28b5(%rip),%rdx        # 404018 <_ZL1M+0x10>
  401763:	48 8b 0d e6 2b 00 00 	mov    0x2be6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40176a:	e8 09 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40176f:	48 8b 15 ea 2b 00 00 	mov    0x2bea(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401776:	48 89 c1             	mov    %rax,%rcx
  401779:	e8 22 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40177e:	90                   	nop
  40177f:	48 83 c4 20          	add    $0x20,%rsp
  401783:	5d                   	pop    %rbp
  401784:	c3                   	retq   

0000000000401785 <main>:
  401785:	55                   	push   %rbp
  401786:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40178d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401794:	00 
  401795:	e8 c6 02 00 00       	callq  401a60 <__main>
  40179a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40179e:	48 89 45 68          	mov    %rax,0x68(%rbp)
  4017a2:	c7 45 7c 00 00 00 00 	movl   $0x0,0x7c(%rbp)
  4017a9:	83 7d 7c 09          	cmpl   $0x9,0x7c(%rbp)
  4017ad:	7f 4e                	jg     4017fd <main+0x78>
  4017af:	c7 45 78 00 00 00 00 	movl   $0x0,0x78(%rbp)
  4017b6:	83 7d 78 04          	cmpl   $0x4,0x78(%rbp)
  4017ba:	7f 3b                	jg     4017f7 <main+0x72>
  4017bc:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017bf:	89 d0                	mov    %edx,%eax
  4017c1:	c1 e0 02             	shl    $0x2,%eax
  4017c4:	01 d0                	add    %edx,%eax
  4017c6:	01 c0                	add    %eax,%eax
  4017c8:	89 c1                	mov    %eax,%ecx
  4017ca:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017cd:	89 d0                	mov    %edx,%eax
  4017cf:	c1 e0 02             	shl    $0x2,%eax
  4017d2:	01 c2                	add    %eax,%edx
  4017d4:	8b 45 78             	mov    0x78(%rbp),%eax
  4017d7:	01 d0                	add    %edx,%eax
  4017d9:	48 98                	cltq   
  4017db:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4017e2:	00 
  4017e3:	48 8b 45 68          	mov    0x68(%rbp),%rax
  4017e7:	48 01 d0             	add    %rdx,%rax
  4017ea:	8b 55 78             	mov    0x78(%rbp),%edx
  4017ed:	01 ca                	add    %ecx,%edx
  4017ef:	89 10                	mov    %edx,(%rax)
  4017f1:	83 45 78 01          	addl   $0x1,0x78(%rbp)
  4017f5:	eb bf                	jmp    4017b6 <main+0x31>
  4017f7:	83 45 7c 01          	addl   $0x1,0x7c(%rbp)
  4017fb:	eb ac                	jmp    4017a9 <main+0x24>
  4017fd:	48 8d 15 08 28 00 00 	lea    0x2808(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401804:	48 8b 0d 45 2b 00 00 	mov    0x2b45(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40180b:	e8 68 01 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401810:	48 8b 15 49 2b 00 00 	mov    0x2b49(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401817:	48 8b 0d 32 2b 00 00 	mov    0x2b32(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40181e:	e8 7d 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401823:	c7 45 74 00 00 00 00 	movl   $0x0,0x74(%rbp)
  40182a:	83 7d 74 09          	cmpl   $0x9,0x74(%rbp)
  40182e:	7f 64                	jg     401894 <main+0x10f>
  401830:	c7 45 70 00 00 00 00 	movl   $0x0,0x70(%rbp)
  401837:	83 7d 70 04          	cmpl   $0x4,0x70(%rbp)
  40183b:	7f 3e                	jg     40187b <main+0xf6>
  40183d:	8b 45 70             	mov    0x70(%rbp),%eax
  401840:	48 63 c8             	movslq %eax,%rcx
  401843:	8b 45 74             	mov    0x74(%rbp),%eax
  401846:	48 63 d0             	movslq %eax,%rdx
  401849:	48 89 d0             	mov    %rdx,%rax
  40184c:	48 c1 e0 02          	shl    $0x2,%rax
  401850:	48 01 d0             	add    %rdx,%rax
  401853:	48 01 c8             	add    %rcx,%rax
  401856:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
  40185a:	89 c2                	mov    %eax,%edx
  40185c:	48 8b 0d ed 2a 00 00 	mov    0x2aed(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401863:	e8 30 01 00 00       	callq  401998 <_ZNSolsEi>
  401868:	ba 09 00 00 00       	mov    $0x9,%edx
  40186d:	48 89 c1             	mov    %rax,%rcx
  401870:	e8 fb 00 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401875:	83 45 70 01          	addl   $0x1,0x70(%rbp)
  401879:	eb bc                	jmp    401837 <main+0xb2>
  40187b:	48 8b 15 de 2a 00 00 	mov    0x2ade(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401882:	48 8b 0d c7 2a 00 00 	mov    0x2ac7(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401889:	e8 12 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40188e:	83 45 74 01          	addl   $0x1,0x74(%rbp)
  401892:	eb 96                	jmp    40182a <main+0xa5>
  401894:	e8 bb fe ff ff       	callq  401754 <_Z15print_separatorv>
  401899:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40189d:	ba 32 00 00 00       	mov    $0x32,%edx
  4018a2:	48 89 c1             	mov    %rax,%rcx
  4018a5:	e8 96 fc ff ff       	callq  401540 <_Z11print_arrayPii>
  4018aa:	e8 a5 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018af:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018b3:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018b9:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018be:	48 89 c1             	mov    %rax,%rcx
  4018c1:	e8 0f fd ff ff       	callq  4015d5 <_Z12print_array2Piii>
  4018c6:	e8 89 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018cf:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018d5:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018da:	48 89 c1             	mov    %rax,%rcx
  4018dd:	e8 b4 fd ff ff       	callq  401696 <_Z14print_array_2dPA5_iii>
  4018e2:	e8 6d fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ec:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  4018f3:	5d                   	pop    %rbp
  4018f4:	c3                   	retq   

00000000004018f5 <__tcf_0>:
  4018f5:	55                   	push   %rbp
  4018f6:	48 89 e5             	mov    %rsp,%rbp
  4018f9:	48 83 ec 20          	sub    $0x20,%rsp
  4018fd:	48 8d 0d 3c 57 00 00 	lea    0x573c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401904:	e8 7f 00 00 00       	callq  401988 <_ZNSt8ios_base4InitD1Ev>
  401909:	90                   	nop
  40190a:	48 83 c4 20          	add    $0x20,%rsp
  40190e:	5d                   	pop    %rbp
  40190f:	c3                   	retq   

0000000000401910 <_Z41__static_initialization_and_destruction_0ii>:
  401910:	55                   	push   %rbp
  401911:	48 89 e5             	mov    %rsp,%rbp
  401914:	48 83 ec 20          	sub    $0x20,%rsp
  401918:	89 4d 10             	mov    %ecx,0x10(%rbp)
  40191b:	89 55 18             	mov    %edx,0x18(%rbp)
  40191e:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401922:	75 21                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  401924:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  40192b:	75 18                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  40192d:	48 8d 0d 0c 57 00 00 	lea    0x570c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401934:	e8 57 00 00 00       	callq  401990 <_ZNSt8ios_base4InitC1Ev>
  401939:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 4018f5 <__tcf_0>
  401940:	e8 bb fb ff ff       	callq  401500 <atexit>
  401945:	90                   	nop
  401946:	48 83 c4 20          	add    $0x20,%rsp
  40194a:	5d                   	pop    %rbp
  40194b:	c3                   	retq   

000000000040194c <_GLOBAL__sub_I__Z11print_arrayPii>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 20          	sub    $0x20,%rsp
  401954:	ba ff ff 00 00       	mov    $0xffff,%edx
  401959:	b9 01 00 00 00       	mov    $0x1,%ecx
  40195e:	e8 ad ff ff ff       	callq  401910 <_Z41__static_initialization_and_destruction_0ii>
  401963:	90                   	nop
  401964:	48 83 c4 20          	add    $0x20,%rsp
  401968:	5d                   	pop    %rbp
  401969:	c3                   	retq   
  40196a:	90                   	nop
  40196b:	90                   	nop
  40196c:	90                   	nop
  40196d:	90                   	nop
  40196e:	90                   	nop
  40196f:	90                   	nop

0000000000401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>:
  401970:	ff 25 ca 69 00 00    	jmpq   *0x69ca(%rip)        # 408340 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401976:	90                   	nop
  401977:	90                   	nop

0000000000401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401978:	ff 25 ba 69 00 00    	jmpq   *0x69ba(%rip)        # 408338 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40197e:	90                   	nop
  40197f:	90                   	nop

0000000000401980 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401980:	ff 25 aa 69 00 00    	jmpq   *0x69aa(%rip)        # 408330 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401986:	90                   	nop
  401987:	90                   	nop

0000000000401988 <_ZNSt8ios_base4InitD1Ev>:
  401988:	ff 25 92 69 00 00    	jmpq   *0x6992(%rip)        # 408320 <__imp__ZNSt8ios_base4InitD1Ev>
  40198e:	90                   	nop
  40198f:	90                   	nop

0000000000401990 <_ZNSt8ios_base4InitC1Ev>:
  401990:	ff 25 82 69 00 00    	jmpq   *0x6982(%rip)        # 408318 <__imp__ZNSt8ios_base4InitC1Ev>
  401996:	90                   	nop
  401997:	90                   	nop

0000000000401998 <_ZNSolsEi>:
  401998:	ff 25 72 69 00 00    	jmpq   *0x6972(%rip)        # 408310 <__imp__ZNSolsEi>
  40199e:	90                   	nop
  40199f:	90                   	nop

00000000004019a0 <_ZNSolsEPFRSoS_E>:
  4019a0:	ff 25 62 69 00 00    	jmpq   *0x6962(%rip)        # 408308 <__imp__ZNSolsEPFRSoS_E>
  4019a6:	90                   	nop
  4019a7:	90                   	nop
  4019a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019af:	00 

00000000004019b0 <__do_global_dtors>:
  4019b0:	48 83 ec 28          	sub    $0x28,%rsp
  4019b4:	48 8b 05 55 16 00 00 	mov    0x1655(%rip),%rax        # 403010 <p.0>
  4019bb:	48 8b 00             	mov    (%rax),%rax
  4019be:	48 85 c0             	test   %rax,%rax
  4019c1:	74 22                	je     4019e5 <__do_global_dtors+0x35>
  4019c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019c8:	ff d0                	callq  *%rax
  4019ca:	48 8b 05 3f 16 00 00 	mov    0x163f(%rip),%rax        # 403010 <p.0>
  4019d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4019d5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4019d9:	48 89 15 30 16 00 00 	mov    %rdx,0x1630(%rip)        # 403010 <p.0>
  4019e0:	48 85 c0             	test   %rax,%rax
  4019e3:	75 e3                	jne    4019c8 <__do_global_dtors+0x18>
  4019e5:	48 83 c4 28          	add    $0x28,%rsp
  4019e9:	c3                   	retq   
  4019ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004019f0 <__do_global_ctors>:
  4019f0:	56                   	push   %rsi
  4019f1:	53                   	push   %rbx
  4019f2:	48 83 ec 28          	sub    $0x28,%rsp
  4019f6:	48 8b 15 73 29 00 00 	mov    0x2973(%rip),%rdx        # 404370 <.refptr.__CTOR_LIST__>
  4019fd:	48 8b 02             	mov    (%rdx),%rax
  401a00:	89 c1                	mov    %eax,%ecx
  401a02:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a05:	74 39                	je     401a40 <__do_global_ctors+0x50>
  401a07:	85 c9                	test   %ecx,%ecx
  401a09:	74 20                	je     401a2b <__do_global_ctors+0x3b>
  401a0b:	89 c8                	mov    %ecx,%eax
  401a0d:	83 e9 01             	sub    $0x1,%ecx
  401a10:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  401a14:	48 29 c8             	sub    %rcx,%rax
  401a17:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a20:	ff 13                	callq  *(%rbx)
  401a22:	48 83 eb 08          	sub    $0x8,%rbx
  401a26:	48 39 f3             	cmp    %rsi,%rbx
  401a29:	75 f5                	jne    401a20 <__do_global_ctors+0x30>
  401a2b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4019b0 <__do_global_dtors>
  401a32:	48 83 c4 28          	add    $0x28,%rsp
  401a36:	5b                   	pop    %rbx
  401a37:	5e                   	pop    %rsi
  401a38:	e9 c3 fa ff ff       	jmpq   401500 <atexit>
  401a3d:	0f 1f 00             	nopl   (%rax)
  401a40:	31 c0                	xor    %eax,%eax
  401a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a48:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401a4c:	89 c1                	mov    %eax,%ecx
  401a4e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401a53:	4c 89 c0             	mov    %r8,%rax
  401a56:	75 f0                	jne    401a48 <__do_global_ctors+0x58>
  401a58:	eb ad                	jmp    401a07 <__do_global_ctors+0x17>
  401a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401a60 <__main>:
  401a60:	8b 05 ea 55 00 00    	mov    0x55ea(%rip),%eax        # 407050 <initialized>
  401a66:	85 c0                	test   %eax,%eax
  401a68:	74 06                	je     401a70 <__main+0x10>
  401a6a:	c3                   	retq   
  401a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a70:	c7 05 d6 55 00 00 01 	movl   $0x1,0x55d6(%rip)        # 407050 <initialized>
  401a77:	00 00 00 
  401a7a:	e9 71 ff ff ff       	jmpq   4019f0 <__do_global_ctors>
  401a7f:	90                   	nop

0000000000401a80 <my_lconv_init>:
  401a80:	48 ff 25 c9 67 00 00 	rex.W jmpq *0x67c9(%rip)        # 408250 <__imp___lconv_init>
  401a87:	90                   	nop
  401a88:	90                   	nop
  401a89:	90                   	nop
  401a8a:	90                   	nop
  401a8b:	90                   	nop
  401a8c:	90                   	nop
  401a8d:	90                   	nop
  401a8e:	90                   	nop
  401a8f:	90                   	nop

0000000000401a90 <_setargv>:
  401a90:	31 c0                	xor    %eax,%eax
  401a92:	c3                   	retq   
  401a93:	90                   	nop
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__dyn_tls_dtor>:
  401aa0:	48 83 ec 28          	sub    $0x28,%rsp
  401aa4:	83 fa 03             	cmp    $0x3,%edx
  401aa7:	74 17                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aa9:	85 d2                	test   %edx,%edx
  401aab:	74 13                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aad:	b8 01 00 00 00       	mov    $0x1,%eax
  401ab2:	48 83 c4 28          	add    $0x28,%rsp
  401ab6:	c3                   	retq   
  401ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401abe:	00 00 
  401ac0:	e8 cb 09 00 00       	callq  402490 <__mingw_TLScallback>
  401ac5:	b8 01 00 00 00       	mov    $0x1,%eax
  401aca:	48 83 c4 28          	add    $0x28,%rsp
  401ace:	c3                   	retq   
  401acf:	90                   	nop

0000000000401ad0 <__dyn_tls_init>:
  401ad0:	56                   	push   %rsi
  401ad1:	53                   	push   %rbx
  401ad2:	48 83 ec 28          	sub    $0x28,%rsp
  401ad6:	48 8b 05 53 28 00 00 	mov    0x2853(%rip),%rax        # 404330 <.refptr._CRT_MT>
  401add:	83 38 02             	cmpl   $0x2,(%rax)
  401ae0:	74 06                	je     401ae8 <__dyn_tls_init+0x18>
  401ae2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401ae8:	83 fa 02             	cmp    $0x2,%edx
  401aeb:	74 13                	je     401b00 <__dyn_tls_init+0x30>
  401aed:	83 fa 01             	cmp    $0x1,%edx
  401af0:	74 4e                	je     401b40 <__dyn_tls_init+0x70>
  401af2:	b8 01 00 00 00       	mov    $0x1,%eax
  401af7:	48 83 c4 28          	add    $0x28,%rsp
  401afb:	5b                   	pop    %rbx
  401afc:	5e                   	pop    %rsi
  401afd:	c3                   	retq   
  401afe:	66 90                	xchg   %ax,%ax
  401b00:	48 8d 1d 59 75 00 00 	lea    0x7559(%rip),%rbx        # 409060 <__xd_z>
  401b07:	48 8d 35 52 75 00 00 	lea    0x7552(%rip),%rsi        # 409060 <__xd_z>
  401b0e:	48 39 de             	cmp    %rbx,%rsi
  401b11:	74 df                	je     401af2 <__dyn_tls_init+0x22>
  401b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401b18:	48 8b 03             	mov    (%rbx),%rax
  401b1b:	48 85 c0             	test   %rax,%rax
  401b1e:	74 02                	je     401b22 <__dyn_tls_init+0x52>
  401b20:	ff d0                	callq  *%rax
  401b22:	48 83 c3 08          	add    $0x8,%rbx
  401b26:	48 39 de             	cmp    %rbx,%rsi
  401b29:	75 ed                	jne    401b18 <__dyn_tls_init+0x48>
  401b2b:	b8 01 00 00 00       	mov    $0x1,%eax
  401b30:	48 83 c4 28          	add    $0x28,%rsp
  401b34:	5b                   	pop    %rbx
  401b35:	5e                   	pop    %rsi
  401b36:	c3                   	retq   
  401b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401b3e:	00 00 
  401b40:	e8 4b 09 00 00       	callq  402490 <__mingw_TLScallback>
  401b45:	b8 01 00 00 00       	mov    $0x1,%eax
  401b4a:	48 83 c4 28          	add    $0x28,%rsp
  401b4e:	5b                   	pop    %rbx
  401b4f:	5e                   	pop    %rsi
  401b50:	c3                   	retq   
  401b51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401b58:	00 00 00 00 
  401b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b60 <__tlregdtor>:
  401b60:	31 c0                	xor    %eax,%eax
  401b62:	c3                   	retq   
  401b63:	90                   	nop
  401b64:	90                   	nop
  401b65:	90                   	nop
  401b66:	90                   	nop
  401b67:	90                   	nop
  401b68:	90                   	nop
  401b69:	90                   	nop
  401b6a:	90                   	nop
  401b6b:	90                   	nop
  401b6c:	90                   	nop
  401b6d:	90                   	nop
  401b6e:	90                   	nop
  401b6f:	90                   	nop

0000000000401b70 <_matherr>:
  401b70:	56                   	push   %rsi
  401b71:	53                   	push   %rbx
  401b72:	48 83 ec 78          	sub    $0x78,%rsp
  401b76:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401b7b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401b80:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401b86:	83 39 06             	cmpl   $0x6,(%rcx)
  401b89:	0f 87 cd 00 00 00    	ja     401c5c <_matherr+0xec>
  401b8f:	8b 01                	mov    (%rcx),%eax
  401b91:	48 8d 15 2c 26 00 00 	lea    0x262c(%rip),%rdx        # 4041c4 <.rdata+0x124>
  401b98:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401b9c:	48 01 d0             	add    %rdx,%rax
  401b9f:	ff e0                	jmpq   *%rax
  401ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ba8:	48 8d 1d c7 25 00 00 	lea    0x25c7(%rip),%rbx        # 404176 <.rdata+0xd6>
  401baf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401bb5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401bba:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401bbf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401bc3:	b9 02 00 00 00       	mov    $0x2,%ecx
  401bc8:	e8 83 0e 00 00       	callq  402a50 <__acrt_iob_func>
  401bcd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401bd4:	49 89 d8             	mov    %rbx,%r8
  401bd7:	48 8d 15 ba 25 00 00 	lea    0x25ba(%rip),%rdx        # 404198 <.rdata+0xf8>
  401bde:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401be4:	48 89 c1             	mov    %rax,%rcx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401bf0:	e8 eb 0d 00 00       	callq  4029e0 <fprintf>
  401bf5:	90                   	nop
  401bf6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401bfb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401c00:	31 c0                	xor    %eax,%eax
  401c02:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401c08:	48 83 c4 78          	add    $0x78,%rsp
  401c0c:	5b                   	pop    %rbx
  401c0d:	5e                   	pop    %rsi
  401c0e:	c3                   	retq   
  401c0f:	90                   	nop
  401c10:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040b0 <.rdata+0x10>
  401c17:	eb 96                	jmp    401baf <_matherr+0x3f>
  401c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c20:	48 8d 1d c9 24 00 00 	lea    0x24c9(%rip),%rbx        # 4040f0 <.rdata+0x50>
  401c27:	eb 86                	jmp    401baf <_matherr+0x3f>
  401c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c30:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040d0 <.rdata+0x30>
  401c37:	e9 73 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c40:	48 8d 1d f9 24 00 00 	lea    0x24f9(%rip),%rbx        # 404140 <.rdata+0xa0>
  401c47:	e9 63 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c50:	48 8d 1d c1 24 00 00 	lea    0x24c1(%rip),%rbx        # 404118 <.rdata+0x78>
  401c57:	e9 53 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c5c:	48 8d 1d 3d 24 00 00 	lea    0x243d(%rip),%rbx        # 4040a0 <.rdata>
  401c63:	e9 47 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c68:	90                   	nop
  401c69:	90                   	nop
  401c6a:	90                   	nop
  401c6b:	90                   	nop
  401c6c:	90                   	nop
  401c6d:	90                   	nop
  401c6e:	90                   	nop
  401c6f:	90                   	nop

0000000000401c70 <_fpreset>:
  401c70:	db e3                	fninit 
  401c72:	c3                   	retq   
  401c73:	90                   	nop
  401c74:	90                   	nop
  401c75:	90                   	nop
  401c76:	90                   	nop
  401c77:	90                   	nop
  401c78:	90                   	nop
  401c79:	90                   	nop
  401c7a:	90                   	nop
  401c7b:	90                   	nop
  401c7c:	90                   	nop
  401c7d:	90                   	nop
  401c7e:	90                   	nop
  401c7f:	90                   	nop

0000000000401c80 <__report_error>:
  401c80:	41 54                	push   %r12
  401c82:	53                   	push   %rbx
  401c83:	48 83 ec 38          	sub    $0x38,%rsp
  401c87:	49 89 cc             	mov    %rcx,%r12
  401c8a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401c8f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401c94:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401c99:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401c9e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401ca3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401ca8:	e8 a3 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cad:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401cb3:	ba 01 00 00 00       	mov    $0x1,%edx
  401cb8:	48 8d 0d 21 25 00 00 	lea    0x2521(%rip),%rcx        # 4041e0 <.rdata>
  401cbf:	49 89 c1             	mov    %rax,%r9
  401cc2:	e8 09 0d 00 00       	callq  4029d0 <fwrite>
  401cc7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401ccc:	b9 02 00 00 00       	mov    $0x2,%ecx
  401cd1:	e8 7a 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cd6:	4c 89 e2             	mov    %r12,%rdx
  401cd9:	48 89 c1             	mov    %rax,%rcx
  401cdc:	49 89 d8             	mov    %rbx,%r8
  401cdf:	e8 bc 0c 00 00       	callq  4029a0 <vfprintf>
  401ce4:	e8 0f 0d 00 00       	callq  4029f8 <abort>
  401ce9:	90                   	nop
  401cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401cf0 <mark_section_writable>:
  401cf0:	41 54                	push   %r12
  401cf2:	56                   	push   %rsi
  401cf3:	53                   	push   %rbx
  401cf4:	48 83 ec 50          	sub    $0x50,%rsp
  401cf8:	48 63 1d c5 53 00 00 	movslq 0x53c5(%rip),%rbx        # 4070c4 <maxSections>
  401cff:	49 89 cc             	mov    %rcx,%r12
  401d02:	85 db                	test   %ebx,%ebx
  401d04:	0f 8e 16 01 00 00    	jle    401e20 <mark_section_writable+0x130>
  401d0a:	48 8b 05 b7 53 00 00 	mov    0x53b7(%rip),%rax        # 4070c8 <the_secs>
  401d11:	31 c9                	xor    %ecx,%ecx
  401d13:	48 83 c0 18          	add    $0x18,%rax
  401d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401d1e:	00 00 
  401d20:	48 8b 10             	mov    (%rax),%rdx
  401d23:	4c 39 e2             	cmp    %r12,%rdx
  401d26:	77 14                	ja     401d3c <mark_section_writable+0x4c>
  401d28:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401d2c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401d30:	4c 01 c2             	add    %r8,%rdx
  401d33:	49 39 d4             	cmp    %rdx,%r12
  401d36:	0f 82 87 00 00 00    	jb     401dc3 <mark_section_writable+0xd3>
  401d3c:	83 c1 01             	add    $0x1,%ecx
  401d3f:	48 83 c0 28          	add    $0x28,%rax
  401d43:	39 d9                	cmp    %ebx,%ecx
  401d45:	75 d9                	jne    401d20 <mark_section_writable+0x30>
  401d47:	4c 89 e1             	mov    %r12,%rcx
  401d4a:	e8 51 09 00 00       	callq  4026a0 <__mingw_GetSectionForAddress>
  401d4f:	48 89 c6             	mov    %rax,%rsi
  401d52:	48 85 c0             	test   %rax,%rax
  401d55:	0f 84 e7 00 00 00    	je     401e42 <mark_section_writable+0x152>
  401d5b:	48 8b 05 66 53 00 00 	mov    0x5366(%rip),%rax        # 4070c8 <the_secs>
  401d62:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
  401d66:	48 c1 e3 03          	shl    $0x3,%rbx
  401d6a:	48 01 d8             	add    %rbx,%rax
  401d6d:	48 89 70 20          	mov    %rsi,0x20(%rax)
  401d71:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401d77:	e8 54 0a 00 00       	callq  4027d0 <_GetPEImageBase>
  401d7c:	8b 4e 0c             	mov    0xc(%rsi),%ecx
  401d7f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401d84:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401d8a:	48 01 c1             	add    %rax,%rcx
  401d8d:	48 8b 05 34 53 00 00 	mov    0x5334(%rip),%rax        # 4070c8 <the_secs>
  401d94:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
  401d99:	ff 15 81 64 00 00    	callq  *0x6481(%rip)        # 408220 <__imp_VirtualQuery>
  401d9f:	48 85 c0             	test   %rax,%rax
  401da2:	0f 84 7f 00 00 00    	je     401e27 <mark_section_writable+0x137>
  401da8:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401dac:	8d 50 c0             	lea    -0x40(%rax),%edx
  401daf:	83 e2 bf             	and    $0xffffffbf,%edx
  401db2:	74 08                	je     401dbc <mark_section_writable+0xcc>
  401db4:	8d 50 fc             	lea    -0x4(%rax),%edx
  401db7:	83 e2 fb             	and    $0xfffffffb,%edx
  401dba:	75 14                	jne    401dd0 <mark_section_writable+0xe0>
  401dbc:	83 05 01 53 00 00 01 	addl   $0x1,0x5301(%rip)        # 4070c4 <maxSections>
  401dc3:	48 83 c4 50          	add    $0x50,%rsp
  401dc7:	5b                   	pop    %rbx
  401dc8:	5e                   	pop    %rsi
  401dc9:	41 5c                	pop    %r12
  401dcb:	c3                   	retq   
  401dcc:	0f 1f 40 00          	nopl   0x0(%rax)
  401dd0:	83 f8 02             	cmp    $0x2,%eax
  401dd3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401dd8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401ddd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401de3:	b8 40 00 00 00       	mov    $0x40,%eax
  401de8:	44 0f 45 c0          	cmovne %eax,%r8d
  401dec:	48 03 1d d5 52 00 00 	add    0x52d5(%rip),%rbx        # 4070c8 <the_secs>
  401df3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  401df7:	49 89 d9             	mov    %rbx,%r9
  401dfa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  401dfe:	ff 15 14 64 00 00    	callq  *0x6414(%rip)        # 408218 <__imp_VirtualProtect>
  401e04:	85 c0                	test   %eax,%eax
  401e06:	75 b4                	jne    401dbc <mark_section_writable+0xcc>
  401e08:	ff 15 d2 63 00 00    	callq  *0x63d2(%rip)        # 4081e0 <__imp_GetLastError>
  401e0e:	48 8d 0d 43 24 00 00 	lea    0x2443(%rip),%rcx        # 404258 <.rdata+0x78>
  401e15:	89 c2                	mov    %eax,%edx
  401e17:	e8 64 fe ff ff       	callq  401c80 <__report_error>
  401e1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e20:	31 db                	xor    %ebx,%ebx
  401e22:	e9 20 ff ff ff       	jmpq   401d47 <mark_section_writable+0x57>
  401e27:	48 8b 05 9a 52 00 00 	mov    0x529a(%rip),%rax        # 4070c8 <the_secs>
  401e2e:	8b 56 08             	mov    0x8(%rsi),%edx
  401e31:	48 8d 0d e8 23 00 00 	lea    0x23e8(%rip),%rcx        # 404220 <.rdata+0x40>
  401e38:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
  401e3d:	e8 3e fe ff ff       	callq  401c80 <__report_error>
  401e42:	4c 89 e2             	mov    %r12,%rdx
  401e45:	48 8d 0d b4 23 00 00 	lea    0x23b4(%rip),%rcx        # 404200 <.rdata+0x20>
  401e4c:	e8 2f fe ff ff       	callq  401c80 <__report_error>
  401e51:	90                   	nop
  401e52:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401e59:	00 00 00 00 
  401e5d:	0f 1f 00             	nopl   (%rax)

0000000000401e60 <_pei386_runtime_relocator>:
  401e60:	55                   	push   %rbp
  401e61:	41 57                	push   %r15
  401e63:	41 56                	push   %r14
  401e65:	41 55                	push   %r13
  401e67:	41 54                	push   %r12
  401e69:	57                   	push   %rdi
  401e6a:	56                   	push   %rsi
  401e6b:	53                   	push   %rbx
  401e6c:	48 83 ec 38          	sub    $0x38,%rsp
  401e70:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401e77:	00 
  401e78:	8b 3d 42 52 00 00    	mov    0x5242(%rip),%edi        # 4070c0 <was_init.0>
  401e7e:	85 ff                	test   %edi,%edi
  401e80:	74 16                	je     401e98 <_pei386_runtime_relocator+0x38>
  401e82:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401e86:	5b                   	pop    %rbx
  401e87:	5e                   	pop    %rsi
  401e88:	5f                   	pop    %rdi
  401e89:	41 5c                	pop    %r12
  401e8b:	41 5d                	pop    %r13
  401e8d:	41 5e                	pop    %r14
  401e8f:	41 5f                	pop    %r15
  401e91:	5d                   	pop    %rbp
  401e92:	c3                   	retq   
  401e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401e98:	c7 05 1e 52 00 00 01 	movl   $0x1,0x521e(%rip)        # 4070c0 <was_init.0>
  401e9f:	00 00 00 
  401ea2:	e8 79 08 00 00       	callq  402720 <__mingw_GetSectionCount>
  401ea7:	48 98                	cltq   
  401ea9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ead:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401eb4:	00 
  401eb5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401eb9:	e8 a2 0a 00 00       	callq  402960 <___chkstk_ms>
  401ebe:	4c 8b 25 bb 24 00 00 	mov    0x24bb(%rip),%r12        # 404380 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401ec5:	48 8b 1d c4 24 00 00 	mov    0x24c4(%rip),%rbx        # 404390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ecc:	c7 05 ee 51 00 00 00 	movl   $0x0,0x51ee(%rip)        # 4070c4 <maxSections>
  401ed3:	00 00 00 
  401ed6:	48 29 c4             	sub    %rax,%rsp
  401ed9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ede:	48 89 05 e3 51 00 00 	mov    %rax,0x51e3(%rip)        # 4070c8 <the_secs>
  401ee5:	4c 89 e0             	mov    %r12,%rax
  401ee8:	48 29 d8             	sub    %rbx,%rax
  401eeb:	48 83 f8 07          	cmp    $0x7,%rax
  401eef:	7e 91                	jle    401e82 <_pei386_runtime_relocator+0x22>
  401ef1:	8b 13                	mov    (%rbx),%edx
  401ef3:	48 83 f8 0b          	cmp    $0xb,%rax
  401ef7:	0f 8f 2b 01 00 00    	jg     402028 <_pei386_runtime_relocator+0x1c8>
  401efd:	85 d2                	test   %edx,%edx
  401eff:	0f 85 9b 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f05:	8b 43 04             	mov    0x4(%rbx),%eax
  401f08:	85 c0                	test   %eax,%eax
  401f0a:	0f 85 90 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f10:	8b 53 08             	mov    0x8(%rbx),%edx
  401f13:	83 fa 01             	cmp    $0x1,%edx
  401f16:	0f 85 c5 01 00 00    	jne    4020e1 <_pei386_runtime_relocator+0x281>
  401f1c:	48 83 c3 0c          	add    $0xc,%rbx
  401f20:	4c 39 e3             	cmp    %r12,%rbx
  401f23:	0f 83 59 ff ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  401f29:	4c 8b 2d 80 24 00 00 	mov    0x2480(%rip),%r13        # 4043b0 <.refptr.__image_base__>
  401f30:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401f37:	ff ff ff 
  401f3a:	eb 31                	jmp    401f6d <_pei386_runtime_relocator+0x10d>
  401f3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401f40:	0f b6 16             	movzbl (%rsi),%edx
  401f43:	48 89 f1             	mov    %rsi,%rcx
  401f46:	49 89 d0             	mov    %rdx,%r8
  401f49:	49 81 c8 00 ff ff ff 	or     $0xffffffffffffff00,%r8
  401f50:	84 d2                	test   %dl,%dl
  401f52:	49 0f 48 d0          	cmovs  %r8,%rdx
  401f56:	48 29 c2             	sub    %rax,%rdx
  401f59:	49 01 d7             	add    %rdx,%r15
  401f5c:	e8 8f fd ff ff       	callq  401cf0 <mark_section_writable>
  401f61:	44 88 3e             	mov    %r15b,(%rsi)
  401f64:	48 83 c3 0c          	add    $0xc,%rbx
  401f68:	4c 39 e3             	cmp    %r12,%rbx
  401f6b:	73 63                	jae    401fd0 <_pei386_runtime_relocator+0x170>
  401f6d:	8b 03                	mov    (%rbx),%eax
  401f6f:	8b 73 04             	mov    0x4(%rbx),%esi
  401f72:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
  401f76:	4c 01 e8             	add    %r13,%rax
  401f79:	4c 01 ee             	add    %r13,%rsi
  401f7c:	4c 8b 38             	mov    (%rax),%r15
  401f7f:	83 fa 20             	cmp    $0x20,%edx
  401f82:	0f 84 f0 00 00 00    	je     402078 <_pei386_runtime_relocator+0x218>
  401f88:	0f 87 c2 00 00 00    	ja     402050 <_pei386_runtime_relocator+0x1f0>
  401f8e:	83 fa 08             	cmp    $0x8,%edx
  401f91:	74 ad                	je     401f40 <_pei386_runtime_relocator+0xe0>
  401f93:	83 fa 10             	cmp    $0x10,%edx
  401f96:	0f 85 39 01 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  401f9c:	0f b7 16             	movzwl (%rsi),%edx
  401f9f:	48 89 f1             	mov    %rsi,%rcx
  401fa2:	49 89 d0             	mov    %rdx,%r8
  401fa5:	49 81 c8 00 00 ff ff 	or     $0xffffffffffff0000,%r8
  401fac:	66 85 d2             	test   %dx,%dx
  401faf:	49 0f 48 d0          	cmovs  %r8,%rdx
  401fb3:	48 83 c3 0c          	add    $0xc,%rbx
  401fb7:	48 29 c2             	sub    %rax,%rdx
  401fba:	49 01 d7             	add    %rdx,%r15
  401fbd:	e8 2e fd ff ff       	callq  401cf0 <mark_section_writable>
  401fc2:	66 44 89 3e          	mov    %r15w,(%rsi)
  401fc6:	4c 39 e3             	cmp    %r12,%rbx
  401fc9:	72 a2                	jb     401f6d <_pei386_runtime_relocator+0x10d>
  401fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401fd0:	8b 05 ee 50 00 00    	mov    0x50ee(%rip),%eax        # 4070c4 <maxSections>
  401fd6:	85 c0                	test   %eax,%eax
  401fd8:	0f 8e a4 fe ff ff    	jle    401e82 <_pei386_runtime_relocator+0x22>
  401fde:	48 8b 35 33 62 00 00 	mov    0x6233(%rip),%rsi        # 408218 <__imp_VirtualProtect>
  401fe5:	31 db                	xor    %ebx,%ebx
  401fe7:	4c 8d 65 ac          	lea    -0x54(%rbp),%r12
  401feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ff0:	48 8b 05 d1 50 00 00 	mov    0x50d1(%rip),%rax        # 4070c8 <the_secs>
  401ff7:	48 01 d8             	add    %rbx,%rax
  401ffa:	44 8b 00             	mov    (%rax),%r8d
  401ffd:	45 85 c0             	test   %r8d,%r8d
  402000:	74 0d                	je     40200f <_pei386_runtime_relocator+0x1af>
  402002:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402006:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40200a:	4d 89 e1             	mov    %r12,%r9
  40200d:	ff d6                	callq  *%rsi
  40200f:	83 c7 01             	add    $0x1,%edi
  402012:	48 83 c3 28          	add    $0x28,%rbx
  402016:	3b 3d a8 50 00 00    	cmp    0x50a8(%rip),%edi        # 4070c4 <maxSections>
  40201c:	7c d2                	jl     401ff0 <_pei386_runtime_relocator+0x190>
  40201e:	e9 5f fe ff ff       	jmpq   401e82 <_pei386_runtime_relocator+0x22>
  402023:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402028:	85 d2                	test   %edx,%edx
  40202a:	75 74                	jne    4020a0 <_pei386_runtime_relocator+0x240>
  40202c:	8b 43 04             	mov    0x4(%rbx),%eax
  40202f:	89 c1                	mov    %eax,%ecx
  402031:	0b 4b 08             	or     0x8(%rbx),%ecx
  402034:	0f 85 ce fe ff ff    	jne    401f08 <_pei386_runtime_relocator+0xa8>
  40203a:	8b 53 0c             	mov    0xc(%rbx),%edx
  40203d:	48 83 c3 0c          	add    $0xc,%rbx
  402041:	e9 b7 fe ff ff       	jmpq   401efd <_pei386_runtime_relocator+0x9d>
  402046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40204d:	00 00 00 
  402050:	83 fa 40             	cmp    $0x40,%edx
  402053:	0f 85 7c 00 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  402059:	48 8b 16             	mov    (%rsi),%rdx
  40205c:	48 89 f1             	mov    %rsi,%rcx
  40205f:	48 29 c2             	sub    %rax,%rdx
  402062:	49 01 d7             	add    %rdx,%r15
  402065:	e8 86 fc ff ff       	callq  401cf0 <mark_section_writable>
  40206a:	4c 89 3e             	mov    %r15,(%rsi)
  40206d:	e9 f2 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  402072:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402078:	8b 16                	mov    (%rsi),%edx
  40207a:	48 89 d1             	mov    %rdx,%rcx
  40207d:	4c 09 f2             	or     %r14,%rdx
  402080:	85 c9                	test   %ecx,%ecx
  402082:	48 0f 49 d1          	cmovns %rcx,%rdx
  402086:	48 89 f1             	mov    %rsi,%rcx
  402089:	48 29 c2             	sub    %rax,%rdx
  40208c:	49 01 d7             	add    %rdx,%r15
  40208f:	e8 5c fc ff ff       	callq  401cf0 <mark_section_writable>
  402094:	44 89 3e             	mov    %r15d,(%rsi)
  402097:	e9 c8 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  40209c:	0f 1f 40 00          	nopl   0x0(%rax)
  4020a0:	4c 39 e3             	cmp    %r12,%rbx
  4020a3:	0f 83 d9 fd ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  4020a9:	4c 8b 35 00 23 00 00 	mov    0x2300(%rip),%r14        # 4043b0 <.refptr.__image_base__>
  4020b0:	8b 73 04             	mov    0x4(%rbx),%esi
  4020b3:	44 8b 2b             	mov    (%rbx),%r13d
  4020b6:	48 83 c3 08          	add    $0x8,%rbx
  4020ba:	4c 01 f6             	add    %r14,%rsi
  4020bd:	44 03 2e             	add    (%rsi),%r13d
  4020c0:	48 89 f1             	mov    %rsi,%rcx
  4020c3:	e8 28 fc ff ff       	callq  401cf0 <mark_section_writable>
  4020c8:	44 89 2e             	mov    %r13d,(%rsi)
  4020cb:	4c 39 e3             	cmp    %r12,%rbx
  4020ce:	72 e0                	jb     4020b0 <_pei386_runtime_relocator+0x250>
  4020d0:	e9 fb fe ff ff       	jmpq   401fd0 <_pei386_runtime_relocator+0x170>
  4020d5:	48 8d 0d dc 21 00 00 	lea    0x21dc(%rip),%rcx        # 4042b8 <.rdata+0xd8>
  4020dc:	e8 9f fb ff ff       	callq  401c80 <__report_error>
  4020e1:	48 8d 0d 98 21 00 00 	lea    0x2198(%rip),%rcx        # 404280 <.rdata+0xa0>
  4020e8:	e8 93 fb ff ff       	callq  401c80 <__report_error>
  4020ed:	90                   	nop
  4020ee:	90                   	nop
  4020ef:	90                   	nop

00000000004020f0 <__mingw_raise_matherr>:
  4020f0:	48 83 ec 58          	sub    $0x58,%rsp
  4020f4:	48 8b 05 d5 4f 00 00 	mov    0x4fd5(%rip),%rax        # 4070d0 <stUserMathErr>
  4020fb:	48 85 c0             	test   %rax,%rax
  4020fe:	74 2c                	je     40212c <__mingw_raise_matherr+0x3c>
  402100:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  402107:	00 00 
  402109:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40210d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402112:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402117:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40211d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  402123:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  402129:	ff d0                	callq  *%rax
  40212b:	90                   	nop
  40212c:	48 83 c4 58          	add    $0x58,%rsp
  402130:	c3                   	retq   
  402131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402138:	00 00 00 00 
  40213c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402140 <__mingw_setusermatherr>:
  402140:	48 89 0d 89 4f 00 00 	mov    %rcx,0x4f89(%rip)        # 4070d0 <stUserMathErr>
  402147:	e9 d4 08 00 00       	jmpq   402a20 <__setusermatherr>
  40214c:	90                   	nop
  40214d:	90                   	nop
  40214e:	90                   	nop
  40214f:	90                   	nop

0000000000402150 <_gnu_exception_handler>:
  402150:	41 54                	push   %r12
  402152:	48 83 ec 20          	sub    $0x20,%rsp
  402156:	48 8b 11             	mov    (%rcx),%rdx
  402159:	8b 02                	mov    (%rdx),%eax
  40215b:	49 89 cc             	mov    %rcx,%r12
  40215e:	89 c1                	mov    %eax,%ecx
  402160:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402166:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40216c:	0f 84 be 00 00 00    	je     402230 <_gnu_exception_handler+0xe0>
  402172:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402177:	0f 87 9a 00 00 00    	ja     402217 <_gnu_exception_handler+0xc7>
  40217d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402182:	76 44                	jbe    4021c8 <_gnu_exception_handler+0x78>
  402184:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  402189:	83 f8 09             	cmp    $0x9,%eax
  40218c:	77 2a                	ja     4021b8 <_gnu_exception_handler+0x68>
  40218e:	48 8d 15 5b 21 00 00 	lea    0x215b(%rip),%rdx        # 4042f0 <.rdata>
  402195:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402199:	48 01 d0             	add    %rdx,%rax
  40219c:	ff e0                	jmpq   *%rax
  40219e:	66 90                	xchg   %ax,%ax
  4021a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021a5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4021aa:	e8 09 08 00 00       	callq  4029b8 <signal>
  4021af:	e8 bc fa ff ff       	callq  401c70 <_fpreset>
  4021b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021bd:	48 83 c4 20          	add    $0x20,%rsp
  4021c1:	41 5c                	pop    %r12
  4021c3:	c3                   	retq   
  4021c4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021c8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4021cd:	0f 84 dd 00 00 00    	je     4022b0 <_gnu_exception_handler+0x160>
  4021d3:	76 3b                	jbe    402210 <_gnu_exception_handler+0xc0>
  4021d5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021da:	74 dc                	je     4021b8 <_gnu_exception_handler+0x68>
  4021dc:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4021e1:	75 34                	jne    402217 <_gnu_exception_handler+0xc7>
  4021e3:	31 d2                	xor    %edx,%edx
  4021e5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021ea:	e8 c9 07 00 00       	callq  4029b8 <signal>
  4021ef:	48 83 f8 01          	cmp    $0x1,%rax
  4021f3:	0f 84 e3 00 00 00    	je     4022dc <_gnu_exception_handler+0x18c>
  4021f9:	48 85 c0             	test   %rax,%rax
  4021fc:	74 19                	je     402217 <_gnu_exception_handler+0xc7>
  4021fe:	b9 04 00 00 00       	mov    $0x4,%ecx
  402203:	ff d0                	callq  *%rax
  402205:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40220a:	eb b1                	jmp    4021bd <_gnu_exception_handler+0x6d>
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)
  402210:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402215:	74 a1                	je     4021b8 <_gnu_exception_handler+0x68>
  402217:	48 8b 05 d2 4e 00 00 	mov    0x4ed2(%rip),%rax        # 4070f0 <__mingw_oldexcpt_handler>
  40221e:	48 85 c0             	test   %rax,%rax
  402221:	74 1d                	je     402240 <_gnu_exception_handler+0xf0>
  402223:	4c 89 e1             	mov    %r12,%rcx
  402226:	48 83 c4 20          	add    $0x20,%rsp
  40222a:	41 5c                	pop    %r12
  40222c:	48 ff e0             	rex.W jmpq *%rax
  40222f:	90                   	nop
  402230:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402234:	0f 85 38 ff ff ff    	jne    402172 <_gnu_exception_handler+0x22>
  40223a:	e9 79 ff ff ff       	jmpq   4021b8 <_gnu_exception_handler+0x68>
  40223f:	90                   	nop
  402240:	31 c0                	xor    %eax,%eax
  402242:	48 83 c4 20          	add    $0x20,%rsp
  402246:	41 5c                	pop    %r12
  402248:	c3                   	retq   
  402249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402250:	31 d2                	xor    %edx,%edx
  402252:	b9 08 00 00 00       	mov    $0x8,%ecx
  402257:	e8 5c 07 00 00       	callq  4029b8 <signal>
  40225c:	48 83 f8 01          	cmp    $0x1,%rax
  402260:	0f 84 3a ff ff ff    	je     4021a0 <_gnu_exception_handler+0x50>
  402266:	48 85 c0             	test   %rax,%rax
  402269:	74 ac                	je     402217 <_gnu_exception_handler+0xc7>
  40226b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402270:	ff d0                	callq  *%rax
  402272:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402277:	e9 41 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40227c:	0f 1f 40 00          	nopl   0x0(%rax)
  402280:	31 d2                	xor    %edx,%edx
  402282:	b9 08 00 00 00       	mov    $0x8,%ecx
  402287:	e8 2c 07 00 00       	callq  4029b8 <signal>
  40228c:	48 83 f8 01          	cmp    $0x1,%rax
  402290:	75 d4                	jne    402266 <_gnu_exception_handler+0x116>
  402292:	ba 01 00 00 00       	mov    $0x1,%edx
  402297:	b9 08 00 00 00       	mov    $0x8,%ecx
  40229c:	e8 17 07 00 00       	callq  4029b8 <signal>
  4022a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022a6:	e9 12 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022b0:	31 d2                	xor    %edx,%edx
  4022b2:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022b7:	e8 fc 06 00 00       	callq  4029b8 <signal>
  4022bc:	48 83 f8 01          	cmp    $0x1,%rax
  4022c0:	74 31                	je     4022f3 <_gnu_exception_handler+0x1a3>
  4022c2:	48 85 c0             	test   %rax,%rax
  4022c5:	0f 84 4c ff ff ff    	je     402217 <_gnu_exception_handler+0xc7>
  4022cb:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022d0:	ff d0                	callq  *%rax
  4022d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d7:	e9 e1 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022dc:	ba 01 00 00 00       	mov    $0x1,%edx
  4022e1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022e6:	e8 cd 06 00 00       	callq  4029b8 <signal>
  4022eb:	83 c8 ff             	or     $0xffffffff,%eax
  4022ee:	e9 ca fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022f3:	ba 01 00 00 00       	mov    $0x1,%edx
  4022f8:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022fd:	e8 b6 06 00 00       	callq  4029b8 <signal>
  402302:	83 c8 ff             	or     $0xffffffff,%eax
  402305:	e9 b3 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40230a:	90                   	nop
  40230b:	90                   	nop
  40230c:	90                   	nop
  40230d:	90                   	nop
  40230e:	90                   	nop
  40230f:	90                   	nop

0000000000402310 <__mingwthr_run_key_dtors.part.0>:
  402310:	41 54                	push   %r12
  402312:	57                   	push   %rdi
  402313:	56                   	push   %rsi
  402314:	53                   	push   %rbx
  402315:	48 83 ec 28          	sub    $0x28,%rsp
  402319:	48 8d 0d 00 4e 00 00 	lea    0x4e00(%rip),%rcx        # 407120 <__mingwthr_cs>
  402320:	ff 15 b2 5e 00 00    	callq  *0x5eb2(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402326:	48 8b 1d d3 4d 00 00 	mov    0x4dd3(%rip),%rbx        # 407100 <key_dtor_list>
  40232d:	48 85 db             	test   %rbx,%rbx
  402330:	74 32                	je     402364 <__mingwthr_run_key_dtors.part.0+0x54>
  402332:	48 8b 3d d7 5e 00 00 	mov    0x5ed7(%rip),%rdi        # 408210 <__imp_TlsGetValue>
  402339:	48 8b 35 a0 5e 00 00 	mov    0x5ea0(%rip),%rsi        # 4081e0 <__imp_GetLastError>
  402340:	8b 0b                	mov    (%rbx),%ecx
  402342:	ff d7                	callq  *%rdi
  402344:	49 89 c4             	mov    %rax,%r12
  402347:	ff d6                	callq  *%rsi
  402349:	85 c0                	test   %eax,%eax
  40234b:	75 0e                	jne    40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  40234d:	4d 85 e4             	test   %r12,%r12
  402350:	74 09                	je     40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  402352:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402356:	4c 89 e1             	mov    %r12,%rcx
  402359:	ff d0                	callq  *%rax
  40235b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40235f:	48 85 db             	test   %rbx,%rbx
  402362:	75 dc                	jne    402340 <__mingwthr_run_key_dtors.part.0+0x30>
  402364:	48 8d 0d b5 4d 00 00 	lea    0x4db5(%rip),%rcx        # 407120 <__mingwthr_cs>
  40236b:	48 83 c4 28          	add    $0x28,%rsp
  40236f:	5b                   	pop    %rbx
  402370:	5e                   	pop    %rsi
  402371:	5f                   	pop    %rdi
  402372:	41 5c                	pop    %r12
  402374:	48 ff 25 7d 5e 00 00 	rex.W jmpq *0x5e7d(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  40237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402380 <___w64_mingwthr_add_key_dtor>:
  402380:	57                   	push   %rdi
  402381:	56                   	push   %rsi
  402382:	53                   	push   %rbx
  402383:	48 83 ec 20          	sub    $0x20,%rsp
  402387:	8b 05 7b 4d 00 00    	mov    0x4d7b(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40238d:	89 cf                	mov    %ecx,%edi
  40238f:	48 89 d6             	mov    %rdx,%rsi
  402392:	85 c0                	test   %eax,%eax
  402394:	75 0a                	jne    4023a0 <___w64_mingwthr_add_key_dtor+0x20>
  402396:	48 83 c4 20          	add    $0x20,%rsp
  40239a:	5b                   	pop    %rbx
  40239b:	5e                   	pop    %rsi
  40239c:	5f                   	pop    %rdi
  40239d:	c3                   	retq   
  40239e:	66 90                	xchg   %ax,%ax
  4023a0:	ba 18 00 00 00       	mov    $0x18,%edx
  4023a5:	b9 01 00 00 00       	mov    $0x1,%ecx
  4023aa:	e8 41 06 00 00       	callq  4029f0 <calloc>
  4023af:	48 89 c3             	mov    %rax,%rbx
  4023b2:	48 85 c0             	test   %rax,%rax
  4023b5:	74 3c                	je     4023f3 <___w64_mingwthr_add_key_dtor+0x73>
  4023b7:	89 38                	mov    %edi,(%rax)
  4023b9:	48 8d 0d 60 4d 00 00 	lea    0x4d60(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023c0:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4023c4:	ff 15 0e 5e 00 00    	callq  *0x5e0e(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  4023ca:	48 8b 05 2f 4d 00 00 	mov    0x4d2f(%rip),%rax        # 407100 <key_dtor_list>
  4023d1:	48 8d 0d 48 4d 00 00 	lea    0x4d48(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023d8:	48 89 1d 21 4d 00 00 	mov    %rbx,0x4d21(%rip)        # 407100 <key_dtor_list>
  4023df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023e3:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  4023e9:	31 c0                	xor    %eax,%eax
  4023eb:	48 83 c4 20          	add    $0x20,%rsp
  4023ef:	5b                   	pop    %rbx
  4023f0:	5e                   	pop    %rsi
  4023f1:	5f                   	pop    %rdi
  4023f2:	c3                   	retq   
  4023f3:	83 c8 ff             	or     $0xffffffff,%eax
  4023f6:	eb 9e                	jmp    402396 <___w64_mingwthr_add_key_dtor+0x16>
  4023f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023ff:	00 

0000000000402400 <___w64_mingwthr_remove_key_dtor>:
  402400:	53                   	push   %rbx
  402401:	48 83 ec 20          	sub    $0x20,%rsp
  402405:	8b 05 fd 4c 00 00    	mov    0x4cfd(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40240b:	89 cb                	mov    %ecx,%ebx
  40240d:	85 c0                	test   %eax,%eax
  40240f:	75 0f                	jne    402420 <___w64_mingwthr_remove_key_dtor+0x20>
  402411:	31 c0                	xor    %eax,%eax
  402413:	48 83 c4 20          	add    $0x20,%rsp
  402417:	5b                   	pop    %rbx
  402418:	c3                   	retq   
  402419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402420:	48 8d 0d f9 4c 00 00 	lea    0x4cf9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402427:	ff 15 ab 5d 00 00    	callq  *0x5dab(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  40242d:	48 8b 0d cc 4c 00 00 	mov    0x4ccc(%rip),%rcx        # 407100 <key_dtor_list>
  402434:	48 85 c9             	test   %rcx,%rcx
  402437:	74 2a                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402439:	31 d2                	xor    %edx,%edx
  40243b:	eb 0e                	jmp    40244b <___w64_mingwthr_remove_key_dtor+0x4b>
  40243d:	0f 1f 00             	nopl   (%rax)
  402440:	48 89 ca             	mov    %rcx,%rdx
  402443:	48 85 c0             	test   %rax,%rax
  402446:	74 1b                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402448:	48 89 c1             	mov    %rax,%rcx
  40244b:	8b 01                	mov    (%rcx),%eax
  40244d:	39 d8                	cmp    %ebx,%eax
  40244f:	48 8b 41 10          	mov    0x10(%rcx),%rax
  402453:	75 eb                	jne    402440 <___w64_mingwthr_remove_key_dtor+0x40>
  402455:	48 85 d2             	test   %rdx,%rdx
  402458:	74 26                	je     402480 <___w64_mingwthr_remove_key_dtor+0x80>
  40245a:	48 89 42 10          	mov    %rax,0x10(%rdx)
  40245e:	e8 75 05 00 00       	callq  4029d8 <free>
  402463:	48 8d 0d b6 4c 00 00 	lea    0x4cb6(%rip),%rcx        # 407120 <__mingwthr_cs>
  40246a:	ff 15 88 5d 00 00    	callq  *0x5d88(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402470:	31 c0                	xor    %eax,%eax
  402472:	48 83 c4 20          	add    $0x20,%rsp
  402476:	5b                   	pop    %rbx
  402477:	c3                   	retq   
  402478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40247f:	00 
  402480:	48 89 05 79 4c 00 00 	mov    %rax,0x4c79(%rip)        # 407100 <key_dtor_list>
  402487:	eb d5                	jmp    40245e <___w64_mingwthr_remove_key_dtor+0x5e>
  402489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402490 <__mingw_TLScallback>:
  402490:	53                   	push   %rbx
  402491:	48 83 ec 20          	sub    $0x20,%rsp
  402495:	83 fa 02             	cmp    $0x2,%edx
  402498:	74 46                	je     4024e0 <__mingw_TLScallback+0x50>
  40249a:	77 2c                	ja     4024c8 <__mingw_TLScallback+0x38>
  40249c:	85 d2                	test   %edx,%edx
  40249e:	74 50                	je     4024f0 <__mingw_TLScallback+0x60>
  4024a0:	8b 05 62 4c 00 00    	mov    0x4c62(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024a6:	85 c0                	test   %eax,%eax
  4024a8:	0f 84 b2 00 00 00    	je     402560 <__mingw_TLScallback+0xd0>
  4024ae:	c7 05 50 4c 00 00 01 	movl   $0x1,0x4c50(%rip)        # 407108 <__mingwthr_cs_init>
  4024b5:	00 00 00 
  4024b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4024bd:	48 83 c4 20          	add    $0x20,%rsp
  4024c1:	5b                   	pop    %rbx
  4024c2:	c3                   	retq   
  4024c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024c8:	83 fa 03             	cmp    $0x3,%edx
  4024cb:	75 eb                	jne    4024b8 <__mingw_TLScallback+0x28>
  4024cd:	8b 05 35 4c 00 00    	mov    0x4c35(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024d3:	85 c0                	test   %eax,%eax
  4024d5:	74 e1                	je     4024b8 <__mingw_TLScallback+0x28>
  4024d7:	e8 34 fe ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  4024dc:	eb da                	jmp    4024b8 <__mingw_TLScallback+0x28>
  4024de:	66 90                	xchg   %ax,%ax
  4024e0:	e8 8b f7 ff ff       	callq  401c70 <_fpreset>
  4024e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4024ea:	48 83 c4 20          	add    $0x20,%rsp
  4024ee:	5b                   	pop    %rbx
  4024ef:	c3                   	retq   
  4024f0:	8b 05 12 4c 00 00    	mov    0x4c12(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024f6:	85 c0                	test   %eax,%eax
  4024f8:	75 56                	jne    402550 <__mingw_TLScallback+0xc0>
  4024fa:	8b 05 08 4c 00 00    	mov    0x4c08(%rip),%eax        # 407108 <__mingwthr_cs_init>
  402500:	83 f8 01             	cmp    $0x1,%eax
  402503:	75 b3                	jne    4024b8 <__mingw_TLScallback+0x28>
  402505:	48 8b 1d f4 4b 00 00 	mov    0x4bf4(%rip),%rbx        # 407100 <key_dtor_list>
  40250c:	48 85 db             	test   %rbx,%rbx
  40250f:	74 18                	je     402529 <__mingw_TLScallback+0x99>
  402511:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402518:	48 89 d9             	mov    %rbx,%rcx
  40251b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40251f:	e8 b4 04 00 00       	callq  4029d8 <free>
  402524:	48 85 db             	test   %rbx,%rbx
  402527:	75 ef                	jne    402518 <__mingw_TLScallback+0x88>
  402529:	48 8d 0d f0 4b 00 00 	lea    0x4bf0(%rip),%rcx        # 407120 <__mingwthr_cs>
  402530:	48 c7 05 c5 4b 00 00 	movq   $0x0,0x4bc5(%rip)        # 407100 <key_dtor_list>
  402537:	00 00 00 00 
  40253b:	c7 05 c3 4b 00 00 00 	movl   $0x0,0x4bc3(%rip)        # 407108 <__mingwthr_cs_init>
  402542:	00 00 00 
  402545:	ff 15 85 5c 00 00    	callq  *0x5c85(%rip)        # 4081d0 <__IAT_start__>
  40254b:	e9 68 ff ff ff       	jmpq   4024b8 <__mingw_TLScallback+0x28>
  402550:	e8 bb fd ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  402555:	eb a3                	jmp    4024fa <__mingw_TLScallback+0x6a>
  402557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40255e:	00 00 
  402560:	48 8d 0d b9 4b 00 00 	lea    0x4bb9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402567:	ff 15 83 5c 00 00    	callq  *0x5c83(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  40256d:	e9 3c ff ff ff       	jmpq   4024ae <__mingw_TLScallback+0x1e>
  402572:	90                   	nop
  402573:	90                   	nop
  402574:	90                   	nop
  402575:	90                   	nop
  402576:	90                   	nop
  402577:	90                   	nop
  402578:	90                   	nop
  402579:	90                   	nop
  40257a:	90                   	nop
  40257b:	90                   	nop
  40257c:	90                   	nop
  40257d:	90                   	nop
  40257e:	90                   	nop
  40257f:	90                   	nop

0000000000402580 <_ValidateImageBase>:
  402580:	31 c0                	xor    %eax,%eax
  402582:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402587:	75 0f                	jne    402598 <_ValidateImageBase+0x18>
  402589:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
  40258d:	48 01 d1             	add    %rdx,%rcx
  402590:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402596:	74 08                	je     4025a0 <_ValidateImageBase+0x20>
  402598:	c3                   	retq   
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025a0:	31 c0                	xor    %eax,%eax
  4025a2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  4025a8:	0f 94 c0             	sete   %al
  4025ab:	c3                   	retq   
  4025ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004025b0 <_FindPESection>:
  4025b0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4025b4:	49 89 d0             	mov    %rdx,%r8
  4025b7:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4025bb:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  4025bf:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  4025c4:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  4025c8:	85 d2                	test   %edx,%edx
  4025ca:	74 30                	je     4025fc <_FindPESection+0x4c>
  4025cc:	83 ea 01             	sub    $0x1,%edx
  4025cf:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4025d3:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	8b 48 0c             	mov    0xc(%rax),%ecx
  4025e3:	48 89 ca             	mov    %rcx,%rdx
  4025e6:	4c 39 c1             	cmp    %r8,%rcx
  4025e9:	77 08                	ja     4025f3 <_FindPESection+0x43>
  4025eb:	03 50 08             	add    0x8(%rax),%edx
  4025ee:	4c 39 c2             	cmp    %r8,%rdx
  4025f1:	77 0b                	ja     4025fe <_FindPESection+0x4e>
  4025f3:	48 83 c0 28          	add    $0x28,%rax
  4025f7:	4c 39 c8             	cmp    %r9,%rax
  4025fa:	75 e4                	jne    4025e0 <_FindPESection+0x30>
  4025fc:	31 c0                	xor    %eax,%eax
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop

0000000000402600 <_FindPESectionByName>:
  402600:	41 54                	push   %r12
  402602:	56                   	push   %rsi
  402603:	53                   	push   %rbx
  402604:	48 83 ec 20          	sub    $0x20,%rsp
  402608:	48 89 cb             	mov    %rcx,%rbx
  40260b:	e8 a0 03 00 00       	callq  4029b0 <strlen>
  402610:	48 83 f8 08          	cmp    $0x8,%rax
  402614:	77 7a                	ja     402690 <_FindPESectionByName+0x90>
  402616:	48 8b 15 93 1d 00 00 	mov    0x1d93(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  40261d:	45 31 e4             	xor    %r12d,%r12d
  402620:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402625:	75 57                	jne    40267e <_FindPESectionByName+0x7e>
  402627:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  40262b:	48 01 d0             	add    %rdx,%rax
  40262e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  402634:	75 48                	jne    40267e <_FindPESectionByName+0x7e>
  402636:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40263c:	75 40                	jne    40267e <_FindPESectionByName+0x7e>
  40263e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  402642:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
  402647:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  40264b:	85 c0                	test   %eax,%eax
  40264d:	74 41                	je     402690 <_FindPESectionByName+0x90>
  40264f:	83 e8 01             	sub    $0x1,%eax
  402652:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402656:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  40265b:	eb 0c                	jmp    402669 <_FindPESectionByName+0x69>
  40265d:	0f 1f 00             	nopl   (%rax)
  402660:	49 83 c4 28          	add    $0x28,%r12
  402664:	49 39 f4             	cmp    %rsi,%r12
  402667:	74 27                	je     402690 <_FindPESectionByName+0x90>
  402669:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  40266f:	48 89 da             	mov    %rbx,%rdx
  402672:	4c 89 e1             	mov    %r12,%rcx
  402675:	e8 2e 03 00 00       	callq  4029a8 <strncmp>
  40267a:	85 c0                	test   %eax,%eax
  40267c:	75 e2                	jne    402660 <_FindPESectionByName+0x60>
  40267e:	4c 89 e0             	mov    %r12,%rax
  402681:	48 83 c4 20          	add    $0x20,%rsp
  402685:	5b                   	pop    %rbx
  402686:	5e                   	pop    %rsi
  402687:	41 5c                	pop    %r12
  402689:	c3                   	retq   
  40268a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402690:	45 31 e4             	xor    %r12d,%r12d
  402693:	4c 89 e0             	mov    %r12,%rax
  402696:	48 83 c4 20          	add    $0x20,%rsp
  40269a:	5b                   	pop    %rbx
  40269b:	5e                   	pop    %rsi
  40269c:	41 5c                	pop    %r12
  40269e:	c3                   	retq   
  40269f:	90                   	nop

00000000004026a0 <__mingw_GetSectionForAddress>:
  4026a0:	48 8b 15 09 1d 00 00 	mov    0x1d09(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  4026a7:	31 c0                	xor    %eax,%eax
  4026a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026ae:	75 10                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
  4026b4:	49 01 d0             	add    %rdx,%r8
  4026b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4026be:	74 08                	je     4026c8 <__mingw_GetSectionForAddress+0x28>
  4026c0:	c3                   	retq   
  4026c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4026c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4026cf:	75 ef                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026d1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4026d6:	48 29 d1             	sub    %rdx,%rcx
  4026d9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4026de:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4026e3:	85 d2                	test   %edx,%edx
  4026e5:	74 2e                	je     402715 <__mingw_GetSectionForAddress+0x75>
  4026e7:	83 ea 01             	sub    $0x1,%edx
  4026ea:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4026ee:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4026f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4026f8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026fc:	4c 89 c2             	mov    %r8,%rdx
  4026ff:	4c 39 c1             	cmp    %r8,%rcx
  402702:	72 08                	jb     40270c <__mingw_GetSectionForAddress+0x6c>
  402704:	03 50 08             	add    0x8(%rax),%edx
  402707:	48 39 d1             	cmp    %rdx,%rcx
  40270a:	72 b4                	jb     4026c0 <__mingw_GetSectionForAddress+0x20>
  40270c:	48 83 c0 28          	add    $0x28,%rax
  402710:	4c 39 c8             	cmp    %r9,%rax
  402713:	75 e3                	jne    4026f8 <__mingw_GetSectionForAddress+0x58>
  402715:	31 c0                	xor    %eax,%eax
  402717:	c3                   	retq   
  402718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40271f:	00 

0000000000402720 <__mingw_GetSectionCount>:
  402720:	48 8b 05 89 1c 00 00 	mov    0x1c89(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402727:	45 31 c0             	xor    %r8d,%r8d
  40272a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40272f:	75 0f                	jne    402740 <__mingw_GetSectionCount+0x20>
  402731:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402735:	48 01 d0             	add    %rdx,%rax
  402738:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  40273e:	74 08                	je     402748 <__mingw_GetSectionCount+0x28>
  402740:	44 89 c0             	mov    %r8d,%eax
  402743:	c3                   	retq   
  402744:	0f 1f 40 00          	nopl   0x0(%rax)
  402748:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40274e:	75 f0                	jne    402740 <__mingw_GetSectionCount+0x20>
  402750:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
  402755:	44 89 c0             	mov    %r8d,%eax
  402758:	c3                   	retq   
  402759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402760 <_FindPESectionExec>:
  402760:	4c 8b 05 49 1c 00 00 	mov    0x1c49(%rip),%r8        # 4043b0 <.refptr.__image_base__>
  402767:	31 c0                	xor    %eax,%eax
  402769:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  40276f:	75 0f                	jne    402780 <_FindPESectionExec+0x20>
  402771:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
  402775:	4c 01 c2             	add    %r8,%rdx
  402778:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40277e:	74 08                	je     402788 <_FindPESectionExec+0x28>
  402780:	c3                   	retq   
  402781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402788:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40278e:	75 f0                	jne    402780 <_FindPESectionExec+0x20>
  402790:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402794:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  402799:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  40279d:	85 d2                	test   %edx,%edx
  40279f:	74 27                	je     4027c8 <_FindPESectionExec+0x68>
  4027a1:	83 ea 01             	sub    $0x1,%edx
  4027a4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4027a8:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
  4027ad:	0f 1f 00             	nopl   (%rax)
  4027b0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  4027b4:	74 09                	je     4027bf <_FindPESectionExec+0x5f>
  4027b6:	48 85 c9             	test   %rcx,%rcx
  4027b9:	74 c5                	je     402780 <_FindPESectionExec+0x20>
  4027bb:	48 83 e9 01          	sub    $0x1,%rcx
  4027bf:	48 83 c0 28          	add    $0x28,%rax
  4027c3:	48 39 d0             	cmp    %rdx,%rax
  4027c6:	75 e8                	jne    4027b0 <_FindPESectionExec+0x50>
  4027c8:	31 c0                	xor    %eax,%eax
  4027ca:	c3                   	retq   
  4027cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004027d0 <_GetPEImageBase>:
  4027d0:	48 8b 05 d9 1b 00 00 	mov    0x1bd9(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  4027d7:	45 31 c0             	xor    %r8d,%r8d
  4027da:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  4027df:	75 0f                	jne    4027f0 <_GetPEImageBase+0x20>
  4027e1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  4027e5:	48 01 c2             	add    %rax,%rdx
  4027e8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4027ee:	74 08                	je     4027f8 <_GetPEImageBase+0x28>
  4027f0:	4c 89 c0             	mov    %r8,%rax
  4027f3:	c3                   	retq   
  4027f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4027f8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4027fe:	4c 0f 44 c0          	cmove  %rax,%r8
  402802:	4c 89 c0             	mov    %r8,%rax
  402805:	c3                   	retq   
  402806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40280d:	00 00 00 

0000000000402810 <_IsNonwritableInCurrentImage>:
  402810:	48 8b 05 99 1b 00 00 	mov    0x1b99(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402817:	45 31 c0             	xor    %r8d,%r8d
  40281a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40281f:	75 0f                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402821:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402825:	48 01 c2             	add    %rax,%rdx
  402828:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40282e:	74 08                	je     402838 <_IsNonwritableInCurrentImage+0x28>
  402830:	44 89 c0             	mov    %r8d,%eax
  402833:	c3                   	retq   
  402834:	0f 1f 40 00          	nopl   0x0(%rax)
  402838:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40283e:	75 f0                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402840:	48 29 c1             	sub    %rax,%rcx
  402843:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402847:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  40284c:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  402850:	85 d2                	test   %edx,%edx
  402852:	74 dc                	je     402830 <_IsNonwritableInCurrentImage+0x20>
  402854:	83 ea 01             	sub    $0x1,%edx
  402857:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  40285b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402860:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402864:	4c 89 c2             	mov    %r8,%rdx
  402867:	4c 39 c1             	cmp    %r8,%rcx
  40286a:	72 08                	jb     402874 <_IsNonwritableInCurrentImage+0x64>
  40286c:	03 50 08             	add    0x8(%rax),%edx
  40286f:	48 39 d1             	cmp    %rdx,%rcx
  402872:	72 14                	jb     402888 <_IsNonwritableInCurrentImage+0x78>
  402874:	48 83 c0 28          	add    $0x28,%rax
  402878:	49 39 c1             	cmp    %rax,%r9
  40287b:	75 e3                	jne    402860 <_IsNonwritableInCurrentImage+0x50>
  40287d:	45 31 c0             	xor    %r8d,%r8d
  402880:	44 89 c0             	mov    %r8d,%eax
  402883:	c3                   	retq   
  402884:	0f 1f 40 00          	nopl   0x0(%rax)
  402888:	44 8b 40 24          	mov    0x24(%rax),%r8d
  40288c:	41 f7 d0             	not    %r8d
  40288f:	41 c1 e8 1f          	shr    $0x1f,%r8d
  402893:	44 89 c0             	mov    %r8d,%eax
  402896:	c3                   	retq   
  402897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40289e:	00 00 

00000000004028a0 <__mingw_enum_import_library_names>:
  4028a0:	4c 8b 1d 09 1b 00 00 	mov    0x1b09(%rip),%r11        # 4043b0 <.refptr.__image_base__>
  4028a7:	45 31 c9             	xor    %r9d,%r9d
  4028aa:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4028b0:	75 10                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028b2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
  4028b6:	4d 01 d8             	add    %r11,%r8
  4028b9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4028c0:	74 0e                	je     4028d0 <__mingw_enum_import_library_names+0x30>
  4028c2:	4c 89 c8             	mov    %r9,%rax
  4028c5:	c3                   	retq   
  4028c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028cd:	00 00 00 
  4028d0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4028d7:	75 e9                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028d9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
  4028e0:	85 c0                	test   %eax,%eax
  4028e2:	74 de                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028e4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
  4028e9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
  4028ee:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
  4028f3:	45 85 c0             	test   %r8d,%r8d
  4028f6:	74 ca                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028f8:	41 83 e8 01          	sub    $0x1,%r8d
  4028fc:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
  402900:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
  402905:	0f 1f 00             	nopl   (%rax)
  402908:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  40290c:	4d 89 c8             	mov    %r9,%r8
  40290f:	4c 39 c8             	cmp    %r9,%rax
  402912:	72 09                	jb     40291d <__mingw_enum_import_library_names+0x7d>
  402914:	44 03 42 08          	add    0x8(%rdx),%r8d
  402918:	4c 39 c0             	cmp    %r8,%rax
  40291b:	72 13                	jb     402930 <__mingw_enum_import_library_names+0x90>
  40291d:	48 83 c2 28          	add    $0x28,%rdx
  402921:	49 39 d2             	cmp    %rdx,%r10
  402924:	75 e2                	jne    402908 <__mingw_enum_import_library_names+0x68>
  402926:	45 31 c9             	xor    %r9d,%r9d
  402929:	4c 89 c8             	mov    %r9,%rax
  40292c:	c3                   	retq   
  40292d:	0f 1f 00             	nopl   (%rax)
  402930:	4c 01 d8             	add    %r11,%rax
  402933:	eb 0a                	jmp    40293f <__mingw_enum_import_library_names+0x9f>
  402935:	0f 1f 00             	nopl   (%rax)
  402938:	83 e9 01             	sub    $0x1,%ecx
  40293b:	48 83 c0 14          	add    $0x14,%rax
  40293f:	44 8b 40 04          	mov    0x4(%rax),%r8d
  402943:	45 85 c0             	test   %r8d,%r8d
  402946:	75 07                	jne    40294f <__mingw_enum_import_library_names+0xaf>
  402948:	8b 50 0c             	mov    0xc(%rax),%edx
  40294b:	85 d2                	test   %edx,%edx
  40294d:	74 d7                	je     402926 <__mingw_enum_import_library_names+0x86>
  40294f:	85 c9                	test   %ecx,%ecx
  402951:	7f e5                	jg     402938 <__mingw_enum_import_library_names+0x98>
  402953:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402957:	4d 01 d9             	add    %r11,%r9
  40295a:	4c 89 c8             	mov    %r9,%rax
  40295d:	c3                   	retq   
  40295e:	90                   	nop
  40295f:	90                   	nop

0000000000402960 <___chkstk_ms>:
  402960:	51                   	push   %rcx
  402961:	50                   	push   %rax
  402962:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402968:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40296d:	72 19                	jb     402988 <___chkstk_ms+0x28>
  40296f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402976:	48 83 09 00          	orq    $0x0,(%rcx)
  40297a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402980:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402986:	77 e7                	ja     40296f <___chkstk_ms+0xf>
  402988:	48 29 c1             	sub    %rax,%rcx
  40298b:	48 83 09 00          	orq    $0x0,(%rcx)
  40298f:	58                   	pop    %rax
  402990:	59                   	pop    %rcx
  402991:	c3                   	retq   
  402992:	90                   	nop
  402993:	90                   	nop
  402994:	90                   	nop
  402995:	90                   	nop
  402996:	90                   	nop
  402997:	90                   	nop
  402998:	90                   	nop
  402999:	90                   	nop
  40299a:	90                   	nop
  40299b:	90                   	nop
  40299c:	90                   	nop
  40299d:	90                   	nop
  40299e:	90                   	nop
  40299f:	90                   	nop

00000000004029a0 <vfprintf>:
  4029a0:	ff 25 52 59 00 00    	jmpq   *0x5952(%rip)        # 4082f8 <__imp_vfprintf>
  4029a6:	90                   	nop
  4029a7:	90                   	nop

00000000004029a8 <strncmp>:
  4029a8:	ff 25 42 59 00 00    	jmpq   *0x5942(%rip)        # 4082f0 <__imp_strncmp>
  4029ae:	90                   	nop
  4029af:	90                   	nop

00000000004029b0 <strlen>:
  4029b0:	ff 25 32 59 00 00    	jmpq   *0x5932(%rip)        # 4082e8 <__imp_strlen>
  4029b6:	90                   	nop
  4029b7:	90                   	nop

00000000004029b8 <signal>:
  4029b8:	ff 25 22 59 00 00    	jmpq   *0x5922(%rip)        # 4082e0 <__imp_signal>
  4029be:	90                   	nop
  4029bf:	90                   	nop

00000000004029c0 <memcpy>:
  4029c0:	ff 25 12 59 00 00    	jmpq   *0x5912(%rip)        # 4082d8 <__imp_memcpy>
  4029c6:	90                   	nop
  4029c7:	90                   	nop

00000000004029c8 <malloc>:
  4029c8:	ff 25 02 59 00 00    	jmpq   *0x5902(%rip)        # 4082d0 <__imp_malloc>
  4029ce:	90                   	nop
  4029cf:	90                   	nop

00000000004029d0 <fwrite>:
  4029d0:	ff 25 f2 58 00 00    	jmpq   *0x58f2(%rip)        # 4082c8 <__imp_fwrite>
  4029d6:	90                   	nop
  4029d7:	90                   	nop

00000000004029d8 <free>:
  4029d8:	ff 25 e2 58 00 00    	jmpq   *0x58e2(%rip)        # 4082c0 <__imp_free>
  4029de:	90                   	nop
  4029df:	90                   	nop

00000000004029e0 <fprintf>:
  4029e0:	ff 25 d2 58 00 00    	jmpq   *0x58d2(%rip)        # 4082b8 <__imp_fprintf>
  4029e6:	90                   	nop
  4029e7:	90                   	nop

00000000004029e8 <exit>:
  4029e8:	ff 25 c2 58 00 00    	jmpq   *0x58c2(%rip)        # 4082b0 <__imp_exit>
  4029ee:	90                   	nop
  4029ef:	90                   	nop

00000000004029f0 <calloc>:
  4029f0:	ff 25 b2 58 00 00    	jmpq   *0x58b2(%rip)        # 4082a8 <__imp_calloc>
  4029f6:	90                   	nop
  4029f7:	90                   	nop

00000000004029f8 <abort>:
  4029f8:	ff 25 a2 58 00 00    	jmpq   *0x58a2(%rip)        # 4082a0 <__imp_abort>
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <_onexit>:
  402a00:	ff 25 92 58 00 00    	jmpq   *0x5892(%rip)        # 408298 <__imp__onexit>
  402a06:	90                   	nop
  402a07:	90                   	nop

0000000000402a08 <_initterm>:
  402a08:	ff 25 82 58 00 00    	jmpq   *0x5882(%rip)        # 408290 <__imp__initterm>
  402a0e:	90                   	nop
  402a0f:	90                   	nop

0000000000402a10 <_cexit>:
  402a10:	ff 25 62 58 00 00    	jmpq   *0x5862(%rip)        # 408278 <__imp__cexit>
  402a16:	90                   	nop
  402a17:	90                   	nop

0000000000402a18 <_amsg_exit>:
  402a18:	ff 25 52 58 00 00    	jmpq   *0x5852(%rip)        # 408270 <__imp__amsg_exit>
  402a1e:	90                   	nop
  402a1f:	90                   	nop

0000000000402a20 <__setusermatherr>:
  402a20:	ff 25 3a 58 00 00    	jmpq   *0x583a(%rip)        # 408260 <__imp___setusermatherr>
  402a26:	90                   	nop
  402a27:	90                   	nop

0000000000402a28 <__set_app_type>:
  402a28:	ff 25 2a 58 00 00    	jmpq   *0x582a(%rip)        # 408258 <__imp___set_app_type>
  402a2e:	90                   	nop
  402a2f:	90                   	nop

0000000000402a30 <__lconv_init>:
  402a30:	ff 25 1a 58 00 00    	jmpq   *0x581a(%rip)        # 408250 <__imp___lconv_init>
  402a36:	90                   	nop
  402a37:	90                   	nop

0000000000402a38 <__getmainargs>:
  402a38:	ff 25 fa 57 00 00    	jmpq   *0x57fa(%rip)        # 408238 <__imp___getmainargs>
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <__C_specific_handler>:
  402a40:	ff 25 ea 57 00 00    	jmpq   *0x57ea(%rip)        # 408230 <__imp___C_specific_handler>
  402a46:	90                   	nop
  402a47:	90                   	nop
  402a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a4f:	00 

0000000000402a50 <__acrt_iob_func>:
  402a50:	53                   	push   %rbx
  402a51:	48 83 ec 20          	sub    $0x20,%rsp
  402a55:	89 cb                	mov    %ecx,%ebx
  402a57:	e8 64 00 00 00       	callq  402ac0 <__iob_func>
  402a5c:	89 d9                	mov    %ebx,%ecx
  402a5e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402a62:	48 c1 e2 04          	shl    $0x4,%rdx
  402a66:	48 01 d0             	add    %rdx,%rax
  402a69:	48 83 c4 20          	add    $0x20,%rsp
  402a6d:	5b                   	pop    %rbx
  402a6e:	c3                   	retq   
  402a6f:	90                   	nop

0000000000402a70 <_get_invalid_parameter_handler>:
  402a70:	48 8b 05 19 47 00 00 	mov    0x4719(%rip),%rax        # 407190 <handler>
  402a77:	c3                   	retq   
  402a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a7f:	00 

0000000000402a80 <_set_invalid_parameter_handler>:
  402a80:	48 89 c8             	mov    %rcx,%rax
  402a83:	48 87 05 06 47 00 00 	xchg   %rax,0x4706(%rip)        # 407190 <handler>
  402a8a:	c3                   	retq   
  402a8b:	90                   	nop
  402a8c:	90                   	nop
  402a8d:	90                   	nop
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <__p__acmdln>:
  402a90:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043d0 <.refptr.__imp__acmdln>
  402a97:	48 8b 00             	mov    (%rax),%rax
  402a9a:	c3                   	retq   
  402a9b:	90                   	nop
  402a9c:	90                   	nop
  402a9d:	90                   	nop
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <__p__commode>:
  402aa0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043e0 <.refptr.__imp__commode>
  402aa7:	48 8b 00             	mov    (%rax),%rax
  402aaa:	c3                   	retq   
  402aab:	90                   	nop
  402aac:	90                   	nop
  402aad:	90                   	nop
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <__p__fmode>:
  402ab0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043f0 <.refptr.__imp__fmode>
  402ab7:	48 8b 00             	mov    (%rax),%rax
  402aba:	c3                   	retq   
  402abb:	90                   	nop
  402abc:	90                   	nop
  402abd:	90                   	nop
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__iob_func>:
  402ac0:	ff 25 82 57 00 00    	jmpq   *0x5782(%rip)        # 408248 <__imp___iob_func>
  402ac6:	90                   	nop
  402ac7:	90                   	nop
  402ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402acf:	00 

0000000000402ad0 <VirtualQuery>:
  402ad0:	ff 25 4a 57 00 00    	jmpq   *0x574a(%rip)        # 408220 <__imp_VirtualQuery>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <VirtualProtect>:
  402ad8:	ff 25 3a 57 00 00    	jmpq   *0x573a(%rip)        # 408218 <__imp_VirtualProtect>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <TlsGetValue>:
  402ae0:	ff 25 2a 57 00 00    	jmpq   *0x572a(%rip)        # 408210 <__imp_TlsGetValue>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <Sleep>:
  402ae8:	ff 25 1a 57 00 00    	jmpq   *0x571a(%rip)        # 408208 <__imp_Sleep>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <SetUnhandledExceptionFilter>:
  402af0:	ff 25 0a 57 00 00    	jmpq   *0x570a(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <LeaveCriticalSection>:
  402af8:	ff 25 fa 56 00 00    	jmpq   *0x56fa(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <InitializeCriticalSection>:
  402b00:	ff 25 ea 56 00 00    	jmpq   *0x56ea(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <GetStartupInfoA>:
  402b08:	ff 25 da 56 00 00    	jmpq   *0x56da(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <GetLastError>:
  402b10:	ff 25 ca 56 00 00    	jmpq   *0x56ca(%rip)        # 4081e0 <__imp_GetLastError>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <EnterCriticalSection>:
  402b18:	ff 25 ba 56 00 00    	jmpq   *0x56ba(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <DeleteCriticalSection>:
  402b20:	ff 25 aa 56 00 00    	jmpq   *0x56aa(%rip)        # 4081d0 <__IAT_start__>
  402b26:	90                   	nop
  402b27:	90                   	nop
  402b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b2f:	00 

0000000000402b30 <register_frame_ctor>:
  402b30:	e9 eb e9 ff ff       	jmpq   401520 <__gcc_register_frame>
  402b35:	90                   	nop
  402b36:	90                   	nop
  402b37:	90                   	nop
  402b38:	90                   	nop
  402b39:	90                   	nop
  402b3a:	90                   	nop
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__CTOR_LIST__>:
  402b40:	ff                   	(bad)  
  402b41:	ff                   	(bad)  
  402b42:	ff                   	(bad)  
  402b43:	ff                   	(bad)  
  402b44:	ff                   	(bad)  
  402b45:	ff                   	(bad)  
  402b46:	ff                   	(bad)  
  402b47:	ff                   	.byte 0xff

0000000000402b48 <.ctors>:
  402b48:	4c 19 40 00          	sbb    %r8,0x0(%rax)
  402b4c:	00 00                	add    %al,(%rax)
	...

0000000000402b50 <.ctors.65535>:
  402b50:	30 2b                	xor    %ch,(%rbx)
  402b52:	40 00 00             	add    %al,(%rax)
	...

0000000000402b60 <__DTOR_LIST__>:
  402b60:	ff                   	(bad)  
  402b61:	ff                   	(bad)  
  402b62:	ff                   	(bad)  
  402b63:	ff                   	(bad)  
  402b64:	ff                   	(bad)  
  402b65:	ff                   	(bad)  
  402b66:	ff                   	(bad)  
  402b67:	ff 00                	incl   (%rax)
  402b69:	00 00                	add    %al,(%rax)
  402b6b:	00 00                	add    %al,(%rax)
  402b6d:	00 00                	add    %al,(%rax)
	...

.\a.exe:     file format pei-x86-64

SYMBOL TABLE:
[  0](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000061 crtexe.c
File 
[  2](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000000000 __mingw_invalidParameterHandler
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[  4](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000000010 pre_c_init
[  5](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004f0 .rdata$.refptr.mingw_initltsdrot_force
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[  7](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000500 .rdata$.refptr.mingw_initltsdyn_force
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[  9](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000510 .rdata$.refptr.mingw_initltssuo_force
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 11](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004e0 .rdata$.refptr.mingw_initcharmax
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 13](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003b0 .rdata$.refptr.__image_base__
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 15](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004d0 .rdata$.refptr.mingw_app_type
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 17](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000020 managedapp
[ 18](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000490 .rdata$.refptr._fmode
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 20](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000470 .rdata$.refptr._commode
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 22](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000340 .rdata$.refptr._MINGW_INSTALL_DEBUG_MATHERR
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 24](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000000140 pre_cpp_init
[ 25](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004c0 .rdata$.refptr._newmode
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 27](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000028 envp
[ 28](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000030 argv
[ 29](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000038 argc
[ 30](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000018 startinfo
[ 31](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000480 .rdata$.refptr._dowildcard
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 33](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000000190 __tmainCRTStartup
[ 34](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000410 .rdata$.refptr.__native_startup_lock
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 36](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000420 .rdata$.refptr.__native_startup_state
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 38](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000001c has_cctor
[ 39](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003a0 .rdata$.refptr.__dyn_tls_init_callback
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 41](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000400 .rdata$.refptr.__mingw_oldexcpt_handler
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 43](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003c0 .rdata$.refptr.__imp___initenv
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 45](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000024 mainret
[ 46](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000440 .rdata$.refptr.__xc_z
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 48](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000430 .rdata$.refptr.__xc_a
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 50](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000460 .rdata$.refptr.__xi_z
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 52](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000450 .rdata$.refptr.__xi_a
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 54](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000004c0 WinMainCRTStartup
[ 55](sec  1)(fl 0x00)(ty   0)(scl   6) (nx 0) 0x00000000000004c4 .l_startw
[ 56](sec  1)(fl 0x00)(ty   0)(scl   6) (nx 0) 0x00000000000004d7 .l_endw
[ 57](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000004e0 mainCRTStartup
[ 58](sec  1)(fl 0x00)(ty   0)(scl   6) (nx 0) 0x00000000000004e4 .l_start
[ 59](sec  1)(fl 0x00)(ty   0)(scl   6) (nx 0) 0x00000000000004f7 .l_end
[ 60](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000500 atexit
[ 61](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004a0 .rdata$.refptr._gnu_exception_handler
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 63](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004b0 .rdata$.refptr._matherr
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[ 65](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .text
AUX scnlen 0x519 nreloc 73 nlnno 0
[ 67](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[ 69](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .bss
AUX scnlen 0x3c nreloc 0 nlnno 0
[ 71](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .xdata
AUX scnlen 0x70 nreloc 10 nlnno 0
[ 73](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .pdata
AUX scnlen 0x54 nreloc 21 nlnno 0
[ 75](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000008 .CRT$XCAA
AUX scnlen 0x8 nreloc 1 nlnno 0
[ 77](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000020 .CRT$XIAA
AUX scnlen 0x8 nreloc 1 nlnno 0
[ 79](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_info
AUX scnlen 0x284f nreloc 206 nlnno 0
[ 81](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_abbrev
AUX scnlen 0x53d nreloc 0 nlnno 0
[ 83](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_loc
AUX scnlen 0x563 nreloc 1 nlnno 0
[ 85](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[ 87](sec 19)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_ranges
AUX scnlen 0x100 nreloc 0 nlnno 0
[ 89](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_line
AUX scnlen 0x624 nreloc 1 nlnno 0
[ 91](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_str
AUX scnlen 0x303 nreloc 0 nlnno 0
[ 93](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000520 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[ 95](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .debug_frame
AUX scnlen 0x160 nreloc 14 nlnno 0
[ 97](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000072 cygming-crtbegin.c
File 
[ 99](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000000520 __gcc_register_frame
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[101](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000530 __gcc_deregister_frame
[102](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000520 .text
AUX scnlen 0x11 nreloc 1 nlnno 0
[104](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[106](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000040 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[108](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000070 .xdata
AUX scnlen 0x8 nreloc 0 nlnno 0
[110](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000054 .pdata
AUX scnlen 0x18 nreloc 6 nlnno 0
[112](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000550 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[114](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000000bd array2d.cpp
File 
[116](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000000 _ZStL19piecewise_construct
[117](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000040 _ZStL8__ioinit
[118](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000004 _ZL1N
[119](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000008 _ZL1M
[120](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000000540 _Z11print_arrayPii
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[122](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000350 .rdata$.refptr._ZSt4cout
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[124](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000360 .rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[126](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000005d5 _Z12print_array2Piii
[127](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000696 _Z14print_array_2dPA5_iii
[128](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000754 _Z15print_separatorv
[129](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000785 main
[130](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x00000000000008f5 __tcf_0
[131](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000000910 _Z41__static_initialization_and_destruction_0ii
[132](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x000000000000094c _GLOBAL__sub_I__Z11print_arrayPii
[133](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000540 .text
AUX scnlen 0x42a nreloc 62 nlnno 0
[135](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000010 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[137](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000040 .bss
AUX scnlen 0x1 nreloc 0 nlnno 0
[139](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .rdata
AUX scnlen 0x39 nreloc 0 nlnno 0
[141](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000078 .xdata
AUX scnlen 0x60 nreloc 0 nlnno 0
[143](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000006c .pdata
AUX scnlen 0x60 nreloc 24 nlnno 0
[145](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b48 .ctors
AUX scnlen 0x8 nreloc 1 nlnno 0
[147](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000580 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[149](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000970 .text
[150](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000074c .idata$7
[151](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000340 .idata$5
[152](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001c0 .idata$4
[153](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000648 .idata$6
[154](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000978 .text
[155](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000748 .idata$7
[156](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000338 .idata$5
[157](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001b8 .idata$4
[158](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000060c .idata$6
[159](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000980 .text
[160](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000744 .idata$7
[161](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000330 .idata$5
[162](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001b0 .idata$4
[163](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000005cc .idata$6
[164](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000988 .text
[165](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000740 .idata$7
[166](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000328 .idata$5
[167](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a8 .idata$4
[168](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000005c0 .idata$6
[169](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000988 .text
[170](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000073c .idata$7
[171](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000320 .idata$5
[172](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .idata$4
[173](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000005a4 .idata$6
[174](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000990 .text
[175](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000738 .idata$7
[176](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000318 .idata$5
[177](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000198 .idata$4
[178](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000588 .idata$6
[179](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000998 .text
[180](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000734 .idata$7
[181](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000310 .idata$5
[182](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .idata$4
[183](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000057c .idata$6
[184](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000009a0 .text
[185](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000730 .idata$7
[186](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000308 .idata$5
[187](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000188 .idata$4
[188](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000568 .idata$6
[189](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000000df gccmain.c
File 
[191](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000000000009b0 __do_global_dtors
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[193](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000010 p.0
[194](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000009f0 __do_global_ctors
[195](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000370 .rdata$.refptr.__CTOR_LIST__
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[197](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000a60 __main
[198](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000050 initialized
[199](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000009b0 .text
AUX scnlen 0xcf nreloc 7 nlnno 0
[201](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000010 .data
AUX scnlen 0x8 nreloc 1 nlnno 0
[203](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[205](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000d8 .xdata
AUX scnlen 0x18 nreloc 0 nlnno 0
[207](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000cc .pdata
AUX scnlen 0x24 nreloc 9 nlnno 0
[209](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000284f .debug_info
AUX scnlen 0x5e8 nreloc 15 nlnno 0
[211](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000053d .debug_abbrev
AUX scnlen 0x133 nreloc 0 nlnno 0
[213](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000563 .debug_loc
AUX scnlen 0x89 nreloc 0 nlnno 0
[215](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000030 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[217](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000624 .debug_line
AUX scnlen 0x1bd nreloc 1 nlnno 0
[219](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000005b0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[221](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000160 .debug_frame
AUX scnlen 0x88 nreloc 6 nlnno 0
[223](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000000f3 natstart.c
File 
[225](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a80 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[227](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000020 .data
AUX scnlen 0x8 nreloc 0 nlnno 0
[229](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .bss
AUX scnlen 0xc nreloc 0 nlnno 0
[231](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002e37 .debug_info
AUX scnlen 0x589 nreloc 8 nlnno 0
[233](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000670 .debug_abbrev
AUX scnlen 0xb2 nreloc 0 nlnno 0
[235](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[237](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000007e1 .debug_line
AUX scnlen 0x105 nreloc 0 nlnno 0
[239](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000303 .debug_str
AUX scnlen 0x18 nreloc 0 nlnno 0
[241](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000005e0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[243](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000105 wildcard.c
File 
[245](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a80 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[247](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000030 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[249](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000070 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[251](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000033c0 .debug_info
AUX scnlen 0xf2 nreloc 3 nlnno 0
[253](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000722 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[255](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000080 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[257](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000008e6 .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[259](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000610 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[261](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000123 charmax.c
File 
[263](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000000a80 my_lconv_init
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[265](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a80 .text
AUX scnlen 0x7 nreloc 1 nlnno 0
[267](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000040 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[269](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000070 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[271](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000f0 .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[273](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000f0 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[275](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000028 .CRT$XIC
AUX scnlen 0x8 nreloc 1 nlnno 0
[277](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000034b2 .debug_info
AUX scnlen 0x22c nreloc 10 nlnno 0
[279](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000750 .debug_abbrev
AUX scnlen 0x90 nreloc 0 nlnno 0
[281](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000a0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[283](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000094a .debug_line
AUX scnlen 0xd1 nreloc 1 nlnno 0
[285](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000031b .debug_str
AUX scnlen 0xd nreloc 0 nlnno 0
[287](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000640 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[289](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001e8 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[291](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000000000013d dllargv.c
File 
[293](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000000a90 _setargv
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[295](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a90 .text
AUX scnlen 0x3 nreloc 0 nlnno 0
[297](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[299](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000080 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[301](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000f4 .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[303](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000fc .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[305](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000036de .debug_info
AUX scnlen 0x1cf nreloc 4 nlnno 0
[307](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000007e0 .debug_abbrev
AUX scnlen 0x3b nreloc 0 nlnno 0
[309](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000d0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[311](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a1b .debug_line
AUX scnlen 0x7f nreloc 1 nlnno 0
[313](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000670 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[315](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000218 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[317](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000000000014f _newmode.c
File 
[319](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000aa0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[321](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[323](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000080 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[325](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000038ad .debug_info
AUX scnlen 0xef nreloc 3 nlnno 0
[327](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000081b .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[329](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000100 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[331](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a9a .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[333](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000006a0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[335](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000185 tlssup.c
File 
[337](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000000aa0 __dyn_tls_dtor
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[339](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000ad0 __dyn_tls_init
[340](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000330 .rdata$.refptr._CRT_MT
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[342](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000058 __xd_a
[343](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000060 __xd_z
[344](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000b60 __tlregdtor
[345](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000aa0 .text
AUX scnlen 0xc3 nreloc 5 nlnno 0
[347](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[349](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000090 .bss
AUX scnlen 0x10 nreloc 0 nlnno 0
[351](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000f8 .xdata
AUX scnlen 0x18 nreloc 0 nlnno 0
[353](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000108 .pdata
AUX scnlen 0x24 nreloc 9 nlnno 0
[355](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000048 .CRT$XLD
AUX scnlen 0x8 nreloc 1 nlnno 0
[357](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000040 .CRT$XLC
AUX scnlen 0x8 nreloc 1 nlnno 0
[359](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000040 .rdata
AUX scnlen 0x48 nreloc 5 nlnno 0
[361](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .CRT$XDZ
AUX scnlen 0x8 nreloc 0 nlnno 0
[363](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000058 .CRT$XDA
AUX scnlen 0x8 nreloc 0 nlnno 0
[365](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .CRT$XLZ
AUX scnlen 0x8 nreloc 0 nlnno 0
[367](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000038 .CRT$XLA
AUX scnlen 0x8 nreloc 0 nlnno 0
[369](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000008 .tls$ZZZ
AUX scnlen 0x8 nreloc 0 nlnno 0
[371](sec  9)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .tls
AUX scnlen 0x8 nreloc 0 nlnno 0
[373](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000399c .debug_info
AUX scnlen 0x738 nreloc 54 nlnno 0
[375](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000849 .debug_abbrev
AUX scnlen 0x1bf nreloc 0 nlnno 0
[377](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000005ec .debug_loc
AUX scnlen 0x314 nreloc 1 nlnno 0
[379](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000120 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[381](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000afe .debug_line
AUX scnlen 0x1a7 nreloc 1 nlnno 0
[383](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000328 .debug_str
AUX scnlen 0x33 nreloc 0 nlnno 0
[385](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000006d0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[387](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000248 .debug_frame
AUX scnlen 0xa8 nreloc 6 nlnno 0
[389](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000197 xncommod.c
File 
[391](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000b70 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[393](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[395](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000a0 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[397](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000040d4 .debug_info
AUX scnlen 0xef nreloc 3 nlnno 0
[399](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a08 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[401](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000150 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[403](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000ca5 .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[405](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000700 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[407](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000001b1 cinitexe.c
File 
[409](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000b70 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[411](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[413](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000b0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[415](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000010 .CRT$XCZ
AUX scnlen 0x8 nreloc 0 nlnno 0
[417](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .CRT$XCA
AUX scnlen 0x8 nreloc 0 nlnno 0
[419](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000030 .CRT$XIZ
AUX scnlen 0x8 nreloc 0 nlnno 0
[421](sec  8)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000018 .CRT$XIA
AUX scnlen 0x8 nreloc 0 nlnno 0
[423](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000041c3 .debug_info
AUX scnlen 0x1e8 nreloc 6 nlnno 0
[425](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a36 .debug_abbrev
AUX scnlen 0x5f nreloc 0 nlnno 0
[427](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000170 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[429](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000d09 .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[431](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000730 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[433](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000001d1 merr.c
File 
[435](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000000b70 _matherr
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[437](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000b70 .text
AUX scnlen 0xf8 nreloc 11 nlnno 0
[439](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[441](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000b0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[443](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000a0 .rdata
AUX scnlen 0x140 nreloc 7 nlnno 0
[445](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000110 .xdata
AUX scnlen 0x18 nreloc 0 nlnno 0
[447](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000012c .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[449](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000043ab .debug_info
AUX scnlen 0x2cb nreloc 13 nlnno 0
[451](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a95 .debug_abbrev
AUX scnlen 0xe1 nreloc 0 nlnno 0
[453](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000900 .debug_loc
AUX scnlen 0x10d nreloc 5 nlnno 0
[455](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000190 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[457](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000d6d .debug_line
AUX scnlen 0x122 nreloc 1 nlnno 0
[459](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000035b .debug_str
AUX scnlen 0x10 nreloc 0 nlnno 0
[461](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000760 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[463](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000002f0 .debug_frame
AUX scnlen 0x58 nreloc 2 nlnno 0
[465](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000001ec CRT_fp10.c
File 
[467](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000000c70 _fpreset
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[469](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000c70 fpreset
[470](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000c70 .text
AUX scnlen 0x3 nreloc 0 nlnno 0
[472](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[474](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000b0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[476](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000128 .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[478](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000138 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[480](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000004676 .debug_info
AUX scnlen 0xfc nreloc 4 nlnno 0
[482](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000b76 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[484](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001c0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[486](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000e8f .debug_line
AUX scnlen 0x82 nreloc 1 nlnno 0
[488](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000790 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[490](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000348 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[492](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000001fe mingw_helpers.c
File 
[494](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000c80 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[496](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[498](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000b0 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[500](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000004772 .debug_info
AUX scnlen 0xfa nreloc 3 nlnno 0
[502](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000ba4 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[504](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001f0 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[506](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000f11 .debug_line
AUX scnlen 0x69 nreloc 0 nlnno 0
[508](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000007c0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[510](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000229 pseudo-reloc.c
File 
[512](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000000c80 __report_error
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[514](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000000cf0 mark_section_writable
[515](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c4 maxSections
[516](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c8 the_secs
[517](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000e60 _pei386_runtime_relocator
[518](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 was_init.0
[519](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000380 .rdata$.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[521](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000390 .rdata$.refptr.__RUNTIME_PSEUDO_RELOC_LIST__
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[523](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000c80 .text
AUX scnlen 0x46e nreloc 37 nlnno 0
[525](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[527](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .bss
AUX scnlen 0x10 nreloc 0 nlnno 0
[529](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001e0 .rdata
AUX scnlen 0x102 nreloc 0 nlnno 0
[531](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000012c .xdata
AUX scnlen 0x30 nreloc 0 nlnno 0
[533](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000144 .pdata
AUX scnlen 0x24 nreloc 9 nlnno 0
[535](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000486c .debug_info
AUX scnlen 0x12a9 nreloc 170 nlnno 0
[537](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000bd2 .debug_abbrev
AUX scnlen 0x36d nreloc 0 nlnno 0
[539](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a0d .debug_loc
AUX scnlen 0xbd1 nreloc 10 nlnno 0
[541](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000210 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[543](sec 19)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000100 .debug_ranges
AUX scnlen 0x300 nreloc 0 nlnno 0
[545](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000f7a .debug_line
AUX scnlen 0x546 nreloc 2 nlnno 0
[547](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000036b .debug_str
AUX scnlen 0x90 nreloc 0 nlnno 0
[549](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000007f0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[551](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000378 .debug_frame
AUX scnlen 0xe0 nreloc 6 nlnno 0
[553](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000249 usermatherr.c
File 
[555](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x00000000000010f0 __mingw_raise_matherr
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[557](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000d0 stUserMathErr
[558](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001140 __mingw_setusermatherr
[559](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000010f0 .text
AUX scnlen 0x5c nreloc 3 nlnno 0
[561](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[563](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000d0 .bss
AUX scnlen 0x8 nreloc 0 nlnno 0
[565](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000015c .xdata
AUX scnlen 0xc nreloc 0 nlnno 0
[567](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000168 .pdata
AUX scnlen 0x18 nreloc 6 nlnno 0
[569](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000005b15 .debug_info
AUX scnlen 0x35f nreloc 20 nlnno 0
[571](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000f3f .debug_abbrev
AUX scnlen 0xfa nreloc 0 nlnno 0
[573](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000015de .debug_loc
AUX scnlen 0x137 nreloc 0 nlnno 0
[575](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000240 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[577](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000014c0 .debug_line
AUX scnlen 0x11e nreloc 1 nlnno 0
[579](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003fb .debug_str
AUX scnlen 0x11 nreloc 0 nlnno 0
[581](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000820 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[583](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000458 .debug_frame
AUX scnlen 0x50 nreloc 4 nlnno 0
[585](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000000000025b xtxtmode.c
File 
[587](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001150 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[589](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[591](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000e0 .bss
AUX scnlen 0x4 nreloc 0 nlnno 0
[593](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000005e74 .debug_info
AUX scnlen 0xed nreloc 3 nlnno 0
[595](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001039 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[597](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000270 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[599](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000015de .debug_line
AUX scnlen 0x64 nreloc 0 nlnno 0
[601](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000850 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[603](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000000000027b crt_handler.c
File 
[605](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001150 _gnu_exception_handler
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[607](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001150 .text
AUX scnlen 0x1ba nreloc 11 nlnno 0
[609](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[611](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000f0 .bss
AUX scnlen 0x8 nreloc 0 nlnno 0
[613](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000168 .xdata
AUX scnlen 0x8 nreloc 0 nlnno 0
[615](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000002f0 .rdata
AUX scnlen 0x28 nreloc 10 nlnno 0
[617](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000180 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[619](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000005f61 .debug_info
AUX scnlen 0xfe8 nreloc 30 nlnno 0
[621](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001067 .debug_abbrev
AUX scnlen 0x27b nreloc 0 nlnno 0
[623](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001715 .debug_loc
AUX scnlen 0x356 nreloc 0 nlnno 0
[625](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000290 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[627](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001642 .debug_line
AUX scnlen 0x25b nreloc 1 nlnno 0
[629](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000040c .debug_str
AUX scnlen 0x19 nreloc 0 nlnno 0
[631](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000880 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[633](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004a8 .debug_frame
AUX scnlen 0x58 nreloc 2 nlnno 0
[635](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000002a1 tlsthrd.c
File 
[637](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000001310 __mingwthr_run_key_dtors.part.0
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[639](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000120 __mingwthr_cs
[640](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000100 key_dtor_list
[641](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001380 ___w64_mingwthr_add_key_dtor
[642](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000108 __mingwthr_cs_init
[643](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001400 ___w64_mingwthr_remove_key_dtor
[644](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001490 __mingw_TLScallback
[645](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001310 .text
AUX scnlen 0x262 nreloc 37 nlnno 0
[647](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[649](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000100 .bss
AUX scnlen 0x48 nreloc 0 nlnno 0
[651](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000170 .xdata
AUX scnlen 0x2c nreloc 0 nlnno 0
[653](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000018c .pdata
AUX scnlen 0x30 nreloc 12 nlnno 0
[655](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000006f49 .debug_info
AUX scnlen 0x9dc nreloc 82 nlnno 0
[657](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000012e2 .debug_abbrev
AUX scnlen 0x204 nreloc 0 nlnno 0
[659](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001a6b .debug_loc
AUX scnlen 0x728 nreloc 0 nlnno 0
[661](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000002c0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[663](sec 19)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000400 .debug_ranges
AUX scnlen 0x30 nreloc 0 nlnno 0
[665](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000189d .debug_line
AUX scnlen 0x325 nreloc 1 nlnno 0
[667](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000425 .debug_str
AUX scnlen 0x7c nreloc 0 nlnno 0
[669](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000008b0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[671](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000500 .debug_frame
AUX scnlen 0x120 nreloc 8 nlnno 0
[673](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000002b3 tlsmcrt.c
File 
[675](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001580 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[677](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000050 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[679](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000160 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[681](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000007925 .debug_info
AUX scnlen 0xed nreloc 3 nlnno 0
[683](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000014e6 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[685](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000002f0 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[687](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001bc2 .debug_line
AUX scnlen 0x63 nreloc 0 nlnno 0
[689](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000008e0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[691](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000002c5 pseudo-reloc-list.c
File 
[693](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001580 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[695](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[697](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000160 .bss
AUX scnlen 0x2 nreloc 0 nlnno 0
[699](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000007a12 .debug_info
AUX scnlen 0x142 nreloc 4 nlnno 0
[701](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001514 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[703](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000310 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[705](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001c25 .debug_line
AUX scnlen 0x6d nreloc 0 nlnno 0
[707](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000910 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[709](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000002fb pesect.c
File 
[711](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001580 _ValidateImageBase
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[713](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000015b0 _FindPESection
[714](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001600 _FindPESectionByName
[715](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000016a0 __mingw_GetSectionForAddress
[716](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001720 __mingw_GetSectionCount
[717](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001760 _FindPESectionExec
[718](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000017d0 _GetPEImageBase
[719](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001810 _IsNonwritableInCurrentImage
[720](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000018a0 __mingw_enum_import_library_names
[721](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001580 .text
AUX scnlen 0x3de nreloc 9 nlnno 0
[723](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[725](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000170 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[727](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000019c .xdata
AUX scnlen 0x2c nreloc 0 nlnno 0
[729](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001bc .pdata
AUX scnlen 0x6c nreloc 27 nlnno 0
[731](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000007b54 .debug_info
AUX scnlen 0x15d9 nreloc 203 nlnno 0
[733](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001542 .debug_abbrev
AUX scnlen 0x256 nreloc 0 nlnno 0
[735](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002193 .debug_loc
AUX scnlen 0xbe1 nreloc 0 nlnno 0
[737](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000330 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[739](sec 19)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000430 .debug_ranges
AUX scnlen 0x330 nreloc 0 nlnno 0
[741](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001c92 .debug_line
AUX scnlen 0x5ed nreloc 1 nlnno 0
[743](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004a1 .debug_str
AUX scnlen 0x54 nreloc 0 nlnno 0
[745](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000940 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[747](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000620 .debug_frame
AUX scnlen 0x128 nreloc 18 nlnno 0
[749](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001960 .text
AUX scnlen 0x32 nreloc 0 nlnno 0
[751](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[753](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000170 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[755](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000019a0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[757](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[759](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000170 .bss
AUX scnlen 0x20 nreloc 0 nlnno 0
[761](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000970 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[763](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000003a7 mingw_matherr.c
File 
[765](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000019a0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[767](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000060 .data
AUX scnlen 0x4 nreloc 0 nlnno 0
[769](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000190 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[771](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000912d .debug_info
AUX scnlen 0x109 nreloc 3 nlnno 0
[773](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001798 .debug_abbrev
AUX scnlen 0x2e nreloc 0 nlnno 0
[775](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000360 .debug_aranges
AUX scnlen 0x20 nreloc 1 nlnno 0
[777](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000227f .debug_line
AUX scnlen 0x6a nreloc 0 nlnno 0
[779](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000009a0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[781](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019a0 .text
[782](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[783](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[784](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000720 .idata$7
[785](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002f8 .idata$5
[786](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000178 .idata$4
[787](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000055a .idata$6
[788](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019a8 .text
[789](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[790](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[791](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000071c .idata$7
[792](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002f0 .idata$5
[793](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000170 .idata$4
[794](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000550 .idata$6
[795](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019b0 .text
[796](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[797](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[798](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000718 .idata$7
[799](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002e8 .idata$5
[800](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000168 .idata$4
[801](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000546 .idata$6
[802](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019b8 .text
[803](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[804](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[805](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000714 .idata$7
[806](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002e0 .idata$5
[807](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000160 .idata$4
[808](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000053c .idata$6
[809](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019c0 .text
[810](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[811](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[812](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000710 .idata$7
[813](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002d8 .idata$5
[814](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000158 .idata$4
[815](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000532 .idata$6
[816](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019c8 .text
[817](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[818](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[819](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000070c .idata$7
[820](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002d0 .idata$5
[821](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000150 .idata$4
[822](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000528 .idata$6
[823](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019d0 .text
[824](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[825](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[826](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000708 .idata$7
[827](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002c8 .idata$5
[828](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000148 .idata$4
[829](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000051e .idata$6
[830](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019d8 .text
[831](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[832](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[833](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000704 .idata$7
[834](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002c0 .idata$5
[835](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000140 .idata$4
[836](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000516 .idata$6
[837](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019e0 .text
[838](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[839](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[840](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000700 .idata$7
[841](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002b8 .idata$5
[842](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000138 .idata$4
[843](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000050c .idata$6
[844](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019e8 .text
[845](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[846](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[847](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006fc .idata$7
[848](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002b0 .idata$5
[849](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000130 .idata$4
[850](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000504 .idata$6
[851](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019f0 .text
[852](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[853](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[854](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006f8 .idata$7
[855](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002a8 .idata$5
[856](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000128 .idata$4
[857](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004fa .idata$6
[858](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000019f8 .text
[859](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[860](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[861](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006f4 .idata$7
[862](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000002a0 .idata$5
[863](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000120 .idata$4
[864](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004f2 .idata$6
[865](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a00 .text
[866](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[867](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[868](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006f0 .idata$7
[869](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000298 .idata$5
[870](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000118 .idata$4
[871](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004e8 .idata$6
[872](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a08 .text
[873](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[874](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[875](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006ec .idata$7
[876](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000290 .idata$5
[877](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000110 .idata$4
[878](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004dc .idata$6
[879](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a10 .text
[880](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[881](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[882](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006e0 .idata$7
[883](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000278 .idata$5
[884](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000f8 .idata$4
[885](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004bc .idata$6
[886](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a18 .text
[887](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[888](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[889](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006dc .idata$7
[890](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000270 .idata$5
[891](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000f0 .idata$4
[892](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004ae .idata$6
[893](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a20 .text
[894](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[895](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[896](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006d4 .idata$7
[897](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000260 .idata$5
[898](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000e0 .idata$4
[899](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000490 .idata$6
[900](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a28 .text
[901](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[902](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[903](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006d0 .idata$7
[904](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000258 .idata$5
[905](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000d8 .idata$4
[906](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000047e .idata$6
[907](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a30 .text
[908](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[909](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[910](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006cc .idata$7
[911](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000250 .idata$5
[912](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000d0 .idata$4
[913](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000046e .idata$6
[914](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a38 .text
[915](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[916](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[917](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006c4 .idata$7
[918](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000240 .idata$5
[919](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .idata$4
[920](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000454 .idata$6
[921](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a38 .text
[922](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[923](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[924](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006c0 .idata$7
[925](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000238 .idata$5
[926](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000b8 .idata$4
[927](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000444 .idata$6
[928](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001a40 .text
[929](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .data
[930](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 .bss
[931](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006bc .idata$7
[932](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000230 .idata$5
[933](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000b0 .idata$4
[934](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000042c .idata$6
[935](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000003c5 acrt_iob_func.c
File 
[937](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001a50 __acrt_iob_func
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[939](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001a50 .text
AUX scnlen 0x1f nreloc 1 nlnno 0
[941](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000070 .data
AUX scnlen 0x8 nreloc 1 nlnno 0
[943](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000190 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[945](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001c8 .xdata
AUX scnlen 0x8 nreloc 0 nlnno 0
[947](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000228 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[949](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000009236 .debug_info
AUX scnlen 0x2d4 nreloc 10 nlnno 0
[951](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000017c6 .debug_abbrev
AUX scnlen 0xce nreloc 0 nlnno 0
[953](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002d74 .debug_loc
AUX scnlen 0x4f nreloc 0 nlnno 0
[955](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000380 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[957](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000022e9 .debug_line
AUX scnlen 0xdc nreloc 1 nlnno 0
[959](sec 17)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000004f5 .debug_str
AUX scnlen 0xb nreloc 0 nlnno 0
[961](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000009d0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[963](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000748 .debug_frame
AUX scnlen 0x40 nreloc 2 nlnno 0
[965](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000003e5 invalid_parameter_handler.c
File 
[967](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000001a70 mingw_get_invalid_parameter_handler
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[969](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000190 handler
[970](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a70 _get_invalid_parameter_handler
[971](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 0) 0x0000000000001a80 mingw_set_invalid_parameter_handler
[972](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a80 _set_invalid_parameter_handler
[973](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001a70 .text
AUX scnlen 0x1b nreloc 2 nlnno 0
[975](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000080 .data
AUX scnlen 0x10 nreloc 2 nlnno 0
[977](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000190 .bss
AUX scnlen 0x8 nreloc 0 nlnno 0
[979](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001d0 .xdata
AUX scnlen 0x8 nreloc 0 nlnno 0
[981](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000234 .pdata
AUX scnlen 0x18 nreloc 6 nlnno 0
[983](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000950a .debug_info
AUX scnlen 0x6ca nreloc 14 nlnno 0
[985](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001894 .debug_abbrev
AUX scnlen 0x15f nreloc 0 nlnno 0
[987](sec 18)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002dc3 .debug_loc
AUX scnlen 0x53 nreloc 1 nlnno 0
[989](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003b0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[991](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000023c5 .debug_line
AUX scnlen 0x17c nreloc 1 nlnno 0
[993](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a00 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[995](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000788 .debug_frame
AUX scnlen 0x48 nreloc 4 nlnno 0
[997](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000401 __p__acmdln.c
File 
[999](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001a90 __p__acmdln
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[1001](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003d0 .rdata$.refptr.__imp__acmdln
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[1003](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001a90 .text
AUX scnlen 0xb nreloc 1 nlnno 0
[1005](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000090 .data
AUX scnlen 0x8 nreloc 1 nlnno 0
[1007](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1009](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001d8 .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[1011](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x000000000000024c .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[1013](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000009bd4 .debug_info
AUX scnlen 0x176 nreloc 5 nlnno 0
[1015](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000019f3 .debug_abbrev
AUX scnlen 0x82 nreloc 0 nlnno 0
[1017](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003e0 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[1019](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002541 .debug_line
AUX scnlen 0x87 nreloc 1 nlnno 0
[1021](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a30 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[1023](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000007d0 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[1025](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x000000000000041d __p__commode.c
File 
[1027](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001aa0 __p__commode
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[1029](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003e0 .rdata$.refptr.__imp__commode
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[1031](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001aa0 .text
AUX scnlen 0xb nreloc 1 nlnno 0
[1033](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000a0 .data
AUX scnlen 0x8 nreloc 1 nlnno 0
[1035](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1037](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001dc .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[1039](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000258 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[1041](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000009d4a .debug_info
AUX scnlen 0x165 nreloc 5 nlnno 0
[1043](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001a75 .debug_abbrev
AUX scnlen 0x73 nreloc 0 nlnno 0
[1045](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000410 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[1047](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000025c8 .debug_line
AUX scnlen 0x88 nreloc 1 nlnno 0
[1049](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a60 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[1051](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000800 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[1053](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000439 __p__fmode.c
File 
[1055](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 1) 0x0000000000001ab0 __p__fmode
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[1057](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000003f0 .rdata$.refptr.__imp__fmode
AUX scnlen 0x8 nreloc 1 nlnno 0 checksum 0x0 assoc 0 comdat 2
[1059](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001ab0 .text
AUX scnlen 0xb nreloc 1 nlnno 0
[1061](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000b0 .data
AUX scnlen 0x8 nreloc 1 nlnno 0
[1063](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1065](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001e0 .xdata
AUX scnlen 0x4 nreloc 0 nlnno 0
[1067](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000264 .pdata
AUX scnlen 0xc nreloc 3 nlnno 0
[1069](sec 13)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000009eaf .debug_info
AUX scnlen 0x15d nreloc 5 nlnno 0
[1071](sec 14)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001ae8 .debug_abbrev
AUX scnlen 0x73 nreloc 0 nlnno 0
[1073](sec 12)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000440 .debug_aranges
AUX scnlen 0x30 nreloc 2 nlnno 0
[1075](sec 15)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000002650 .debug_line
AUX scnlen 0x86 nreloc 1 nlnno 0
[1077](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000a90 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[1079](sec 16)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000830 .debug_frame
AUX scnlen 0x30 nreloc 2 nlnno 0
[1081](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x0000000000000455 fake
File 
[1083](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000b0 hname
[1084](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000230 fthunk
[1085](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001ac0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[1087](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[1089](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1091](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000014 .idata$2
AUX scnlen 0x14 nreloc 3 nlnno 0
[1093](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000b0 .idata$4
[1094](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000230 .idata$5
[1095](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ac0 .text
[1096](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1097](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1098](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006d8 .idata$7
[1099](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000268 .idata$5
[1100](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000e8 .idata$4
[1101](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004a4 .idata$6
[1102](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ac0 .text
[1103](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1104](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1105](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006c8 .idata$7
[1106](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000248 .idata$5
[1107](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c8 .idata$4
[1108](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000460 .idata$6
[1109](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000004b0 fake
File 
[1111](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001ad0 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[1113](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[1115](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1117](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000180 .idata$4
AUX scnlen 0x8 nreloc 0 nlnno 0
[1119](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000300 .idata$5
AUX scnlen 0x8 nreloc 0 nlnno 0
[1121](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000724 .idata$7
AUX scnlen 0xb nreloc 0 nlnno 0
[1123](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ad0 .text
[1124](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1125](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1126](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006a8 .idata$7
[1127](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000220 .idata$5
[1128](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000a0 .idata$4
[1129](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000041c .idata$6
[1130](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ad8 .text
[1131](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1132](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1133](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006a4 .idata$7
[1134](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000218 .idata$5
[1135](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000098 .idata$4
[1136](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000040a .idata$6
[1137](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ae0 .text
[1138](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1139](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1140](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006a0 .idata$7
[1141](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000210 .idata$5
[1142](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000090 .idata$4
[1143](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000003fc .idata$6
[1144](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001ae8 .text
[1145](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1146](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1147](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000069c .idata$7
[1148](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000208 .idata$5
[1149](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000088 .idata$4
[1150](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000003f4 .idata$6
[1151](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001af0 .text
[1152](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1153](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1154](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000698 .idata$7
[1155](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000200 .idata$5
[1156](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000080 .idata$4
[1157](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000003d6 .idata$6
[1158](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001af8 .text
[1159](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1160](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1161](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000694 .idata$7
[1162](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001f8 .idata$5
[1163](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000078 .idata$4
[1164](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000003be .idata$6
[1165](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b00 .text
[1166](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1167](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1168](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000690 .idata$7
[1169](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001f0 .idata$5
[1170](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000070 .idata$4
[1171](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000003a2 .idata$6
[1172](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b08 .text
[1173](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1174](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1175](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x000000000000068c .idata$7
[1176](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001e8 .idata$5
[1177](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000068 .idata$4
[1178](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000390 .idata$6
[1179](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b10 .text
[1180](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1181](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1182](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000688 .idata$7
[1183](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001e0 .idata$5
[1184](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000060 .idata$4
[1185](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000380 .idata$6
[1186](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b18 .text
[1187](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1188](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1189](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000684 .idata$7
[1190](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001d8 .idata$5
[1191](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000058 .idata$4
[1192](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000368 .idata$6
[1193](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b20 .text
[1194](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1195](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1196](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000680 .idata$7
[1197](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001d0 .idata$5
[1198](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000050 .idata$4
[1199](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000350 .idata$6
[1200](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000004be fake
File 
[1202](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000050 hname
[1203](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001d0 fthunk
[1204](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b30 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[1206](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[1208](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1210](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000000 .idata$2
AUX scnlen 0x14 nreloc 3 nlnno 0
[1212](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000050 .idata$4
[1213](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001d0 .idata$5
[1214](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000004da fake
File 
[1216](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b30 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[1218](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[1220](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1222](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000a8 .idata$4
AUX scnlen 0x8 nreloc 0 nlnno 0
[1224](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000228 .idata$5
AUX scnlen 0x8 nreloc 0 nlnno 0
[1226](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000006ac .idata$7
AUX scnlen 0xd nreloc 0 nlnno 0
[1228](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b30 .text
[1229](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1230](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1231](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006e8 .idata$7
[1232](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000288 .idata$5
[1233](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000108 .idata$4
[1234](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004d2 .idata$6
[1235](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000001b30 .text
[1236](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000000c0 .data
[1237](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001a0 .bss
[1238](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000006e4 .idata$7
[1239](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000280 .idata$5
[1240](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000100 .idata$4
[1241](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000004c6 .idata$6
[1242](sec -2)(fl 0x00)(ty   0)(scl 103) (nx 1) 0x00000000000004f7 cygming-crtend.c
File 
[1244](sec  1)(fl 0x00)(ty  20)(scl   3) (nx 1) 0x0000000000001b30 register_frame_ctor
AUX tagndx 0 ttlsiz 0x0 lnnos 0 next 0
[1246](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b30 .text
AUX scnlen 0x0 nreloc 0 nlnno 0
[1248](sec  2)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000000c0 .data
AUX scnlen 0x0 nreloc 0 nlnno 0
[1250](sec  6)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001a0 .bss
AUX scnlen 0x0 nreloc 0 nlnno 0
[1252](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b30 .text.startup
AUX scnlen 0x5 nreloc 1 nlnno 0
[1254](sec  5)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x00000000000001e4 .xdata.startup
AUX scnlen 0x4 nreloc 0 nlnno 0
[1256](sec  4)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000270 .pdata.startup
AUX scnlen 0xc nreloc 3 nlnno 0
[1258](sec  1)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000001b50 .ctors.65535
AUX scnlen 0x8 nreloc 1 nlnno 0
[1260](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 1) 0x0000000000000ac0 .rdata$zzz
AUX scnlen 0x2b nreloc 0 nlnno 0
[1262](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000320 .rdata
[1263](sec  3)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000af0 .rdata_runtime_pseudo_reloc
[1264](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000028 .idata$2
[1265](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000308 .idata$5
[1266](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000188 .idata$4
[1267](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x00000000000001c8 .idata$4
[1268](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000348 .idata$5
[1269](sec  7)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000750 .idata$7
[1270](sec 10)(fl 0x00)(ty   0)(scl   3) (nx 0) 0x0000000000000000 .rsrc
[1271](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000010 __xc_z
[1272](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000af0 ___RUNTIME_PSEUDO_RELOC_LIST__
[1273](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001e8 __imp_GetStartupInfoA
[1274](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000978 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
[1275](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002a0 __imp_abort
[1276](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000006ac __lib64_libkernel32_a_iname
[1277](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __data_start__
[1278](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b60 ___DTOR_LIST__
[1279](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000288 __imp__fmode
[1280](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001af0 SetUnhandledExceptionFilter
[1281](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002a8 __imp_calloc
[1282](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000b0 __imp___p__fmode
[1283](sec  9)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 ___tls_start__
[1284](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000420 .refptr.__native_startup_state
[1285](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000400000 __ImageBase
[1286](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000038 __xl_a
[1287](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b10 GetLastError
[1288](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000090 mingw_initltssuo_force
[1289](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000310 __imp__ZNSolsEi
[1290](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000af0 __rt_psrelocs_start
[1291](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a10 _cexit
[1292](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000500 .refptr.mingw_initltsdyn_force
[1293](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __dll_characteristics__
[1294](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001000 __size_of_stack_commit__
[1295](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __mingw_module_is_dll
[1296](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001ac0 __iob_func
[1297](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000268 __imp__acmdln
[1298](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000200000 __size_of_stack_reserve__
[1299](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000005 __major_subsystem_version__
[1300](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000038 ___crt_xl_start__
[1301](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001d0 __imp_DeleteCriticalSection
[1302](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000048 __xl_d
[1303](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000088 __imp__set_invalid_parameter_handler
[1304](sec  9)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000008 _tls_end
[1305](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000370 .refptr.__CTOR_LIST__
[1306](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001ad0 VirtualQuery
[1307](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000018 ___crt_xi_start__
[1308](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003f0 .refptr.__imp__fmode
[1309](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000270 __imp__amsg_exit
[1310](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000038 ___crt_xi_end__
[1311](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003c0 .refptr.__imp___initenv
[1312](sec  9)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 _tls_start
[1313](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019c0 memcpy
[1314](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000970 _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
[1315](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000008 __mingw_winmain_lpCmdLine
[1316](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004b0 .refptr._matherr
[1317](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000390 .refptr.__RUNTIME_PSEUDO_RELOC_LIST__
[1318](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000f0 __mingw_oldexcpt_handler
[1319](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000510 .refptr.mingw_initltssuo_force
[1320](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019c8 malloc
[1321](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000050 _CRT_MT
[1322](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001ae0 TlsGetValue
[1323](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000028 _head_libstdc___6_dll
[1324](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __bss_start__
[1325](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000338 __imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
[1326](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000230 __imp___C_specific_handler
[1327](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000b08 ___RUNTIME_PSEUDO_RELOC_LIST_END__
[1328](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001000 __size_of_heap_commit__
[1329](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001e0 __imp_GetLastError
[1330](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000480 .refptr._dowildcard
[1331](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002c0 __imp_free
[1332](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001ad8 VirtualProtect
[1333](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000b0 mingw_app_type
[1334](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000058 ___crt_xp_start__
[1335](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001f8 __imp_LeaveCriticalSection
[1336](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000009a0 _ZNSolsEPFRSoS_E
[1337](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000028 __mingw_pinit
[1338](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001a40 __C_specific_handler
[1339](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004e0 .refptr.mingw_initcharmax
[1340](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000400 .refptr.__mingw_oldexcpt_handler
[1341](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019f8 abort
[1342](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000380 .refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__
[1343](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000058 ___crt_xp_end__
[1344](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000360 .refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
[1345](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __dll__
[1346](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __minor_os_version__
[1347](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b18 EnterCriticalSection
[1348](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000060 _MINGW_INSTALL_DEBUG_MATHERR
[1349](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000308 __imp__ZNSolsEPFRSoS_E
[1350](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000450 .refptr.__xi_a
[1351](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000400000 __image_base__
[1352](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000330 .refptr._CRT_MT
[1353](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001000 __section_alignment__
[1354](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000024 __native_dllmain_reason
[1355](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019f0 calloc
[1356](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000060 _tls_used
[1357](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000070 mingw_initcharmax
[1358](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000350 __IAT_end__
[1359](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002d8 __imp_memcpy
[1360](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000af0 __RUNTIME_PSEUDO_RELOC_LIST__
[1361](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019e0 fprintf
[1362](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001ae8 Sleep
[1363](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004c0 .refptr._newmode
[1364](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000a0 _commode
[1365](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000008 mingw_pcppinit
[1366](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000c0 __data_end__
[1367](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002c8 __imp_fwrite
[1368](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b40 __CTOR_LIST__
[1369](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000238 __imp___getmainargs
[1370](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 _head_lib64_libkernel32_a
[1371](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000750 libstdc___6_dll_iname
[1372](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001a0 __bss_end__
[1373](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000030 __xi_z
[1374](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004f0 .refptr.mingw_initltsdrot_force
[1375](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000020 __native_vcclrit_reason
[1376](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000018 ___crt_xc_end__
[1377](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000410 .refptr.__native_startup_lock
[1378](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001d8 __imp_EnterCriticalSection
[1379](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000998 _ZNSolsEi
[1380](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x000000000000009c _tls_index
[1381](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019b8 signal
[1382](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000068 __native_startup_state
[1383](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 ___crt_xc_start__
[1384](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019a8 strncmp
[1385](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000250 __imp___lconv_init
[1386](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000724 __lib64_libmsvcrt_os_a_iname
[1387](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b40 ___CTOR_LIST__
[1388](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003a0 .refptr.__dyn_tls_init_callback
[1389](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002e0 __imp_signal
[1390](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000018 __rt_psrelocs_size
[1391](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000350 .refptr._ZSt4cout
[1392](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002e8 __imp_strlen
[1393](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002d0 __imp_malloc
[1394](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __mingw_winmain_nShowCmd
[1395](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000020 mingw_pcinit
[1396](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004a0 .refptr._gnu_exception_handler
[1397](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000340 __imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
[1398](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000990 _ZNSt8ios_base4InitC1Ev
[1399](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000200 __file_alignment__
[1400](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001f0 __imp_InitializeCriticalSection
[1401](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001a30 __lconv_init
[1402](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000320 __imp__ZNSt8ios_base4InitD1Ev
[1403](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a38 __getmainargs
[1404](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b00 InitializeCriticalSection
[1405](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002b0 __imp_exit
[1406](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002f8 __imp_vfprintf
[1407](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000005c0 __nm__ZSt4cout
[1408](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000004 __major_os_version__
[1409](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000240 __imp___initenv
[1410](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000001d0 __IAT_start__
[1411](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000278 __imp__cexit
[1412](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000050 __xl_z
[1413](sec  0)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __end__
[1414](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000200 __imp_SetUnhandledExceptionFilter
[1415](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000004d0 .refptr.mingw_app_type
[1416](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000330 __imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
[1417](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000298 __imp__onexit
[1418](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b60 __DTOR_LIST__
[1419](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000018 __xi_a
[1420](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003d0 .refptr.__imp__acmdln
[1421](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a28 __set_app_type
[1422](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000208 __imp_Sleep
[1423](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000090 __imp___p__acmdln
[1424](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001af8 LeaveCriticalSection
[1425](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __xc_a
[1426](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000260 __imp___setusermatherr
[1427](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000100000 __size_of_heap_reserve__
[1428](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000058 ___crt_xt_start__
[1429](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000003 __subsystem__
[1430](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000e0 _fmode
[1431](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a18 _amsg_exit
[1432](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000210 __imp_TlsGetValue
[1433](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a20 __setusermatherr
[1434](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000470 .refptr._commode
[1435](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002b8 __imp_fprintf
[1436](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000000a0 __imp___p__commode
[1437](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000000988 _ZNSt8ios_base4InitD1Ev
[1438](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000218 __imp_VirtualProtect
[1439](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000040 __xl_c
[1440](sec  9)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000010 ___tls_end__
[1441](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000220 __imp_VirtualQuery
[1442](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000290 __imp__initterm
[1443](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000094 mingw_initltsdyn_force
[1444](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000030 _dowildcard
[1445](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000248 __imp___iob_func
[1446](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000040 __dyn_tls_init_callback
[1447](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000328 __imp__ZSt4cout
[1448](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003b0 .refptr.__image_base__
[1449](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000080 _newmode
[1450](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a08 _initterm
[1451](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019d0 fwrite
[1452](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000002f0 __imp_strncmp
[1453](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000014 _head_lib64_libmsvcrt_os_a
[1454](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000490 .refptr._fmode
[1455](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000070 __imp___acrt_iob_func
[1456](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __major_image_version__
[1457](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __loader_flags__
[1458](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000350 __fu0__ZSt4cout
[1459](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000980 _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
[1460](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x00000000000003e0 .refptr.__imp__commode
[1461](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001960 ___chkstk_ms
[1462](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000060 __native_startup_lock
[1463](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000010 __mingw_winmain_hInstance
[1464](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b08 GetStartupInfoA
[1465](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000328 __imp__ZSt4cout
[1466](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x0000000000001a00 _onexit
[1467](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000b08 __rt_psrelocs_end
[1468](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019e8 exit
[1469](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000080 __imp__get_invalid_parameter_handler
[1470](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000002 __minor_subsystem_version__
[1471](sec -1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000000 __minor_image_version__
[1472](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000258 __imp___set_app_type
[1473](sec  6)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000098 mingw_initltsdrot_force
[1474](sec  2)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000040 _charmax
[1475](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000430 .refptr.__xc_a
[1476](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019b0 strlen
[1477](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000318 __imp__ZNSt8ios_base4InitC1Ev
[1478](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000460 .refptr.__xi_z
[1479](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000340 .refptr._MINGW_INSTALL_DEBUG_MATHERR
[1480](sec  7)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000280 __imp__commode
[1481](sec  1)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000001b20 DeleteCriticalSection
[1482](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000b08 __RUNTIME_PSEUDO_RELOC_LIST_END__
[1483](sec  3)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000440 .refptr.__xc_z
[1484](sec  8)(fl 0x00)(ty   0)(scl   2) (nx 0) 0x0000000000000058 ___crt_xt_end__
[1485](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019a0 vfprintf
[1486](sec  1)(fl 0x00)(ty  20)(scl   2) (nx 0) 0x00000000000019d8 free



Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401008:	00 00 00 00 
  40100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 d5 34 00 00 	mov    0x34d5(%rip),%rax        # 4044f0 <.refptr.mingw_initltsdrot_force>
  40101b:	31 c9                	xor    %ecx,%ecx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 d6 34 00 00 	mov    0x34d6(%rip),%rax        # 404500 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 d9 34 00 00 	mov    0x34d9(%rip),%rax        # 404510 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 9c 34 00 00 	mov    0x349c(%rip),%rax        # 4044e0 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 5f 33 00 00 	mov    0x335f(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	75 0f                	jne    401067 <pre_c_init+0x57>
  401058:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  40105c:	48 01 d0             	add    %rdx,%rax
  40105f:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  401065:	74 69                	je     4010d0 <pre_c_init+0xc0>
  401067:	48 8b 05 62 34 00 00 	mov    0x3462(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  40106e:	89 0d ac 5f 00 00    	mov    %ecx,0x5fac(%rip)        # 407020 <managedapp>
  401074:	8b 00                	mov    (%rax),%eax
  401076:	85 c0                	test   %eax,%eax
  401078:	74 46                	je     4010c0 <pre_c_init+0xb0>
  40107a:	b9 02 00 00 00       	mov    $0x2,%ecx
  40107f:	e8 a4 19 00 00       	callq  402a28 <__set_app_type>
  401084:	e8 27 1a 00 00       	callq  402ab0 <__p__fmode>
  401089:	48 8b 15 00 34 00 00 	mov    0x3400(%rip),%rdx        # 404490 <.refptr._fmode>
  401090:	8b 12                	mov    (%rdx),%edx
  401092:	89 10                	mov    %edx,(%rax)
  401094:	e8 07 1a 00 00       	callq  402aa0 <__p__commode>
  401099:	48 8b 15 d0 33 00 00 	mov    0x33d0(%rip),%rdx        # 404470 <.refptr._commode>
  4010a0:	8b 12                	mov    (%rdx),%edx
  4010a2:	89 10                	mov    %edx,(%rax)
  4010a4:	e8 e7 09 00 00       	callq  401a90 <_setargv>
  4010a9:	48 8b 05 90 32 00 00 	mov    0x3290(%rip),%rax        # 404340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  4010b0:	83 38 01             	cmpl   $0x1,(%rax)
  4010b3:	74 53                	je     401108 <pre_c_init+0xf8>
  4010b5:	31 c0                	xor    %eax,%eax
  4010b7:	48 83 c4 28          	add    $0x28,%rsp
  4010bb:	c3                   	retq   
  4010bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010c0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010c5:	e8 5e 19 00 00       	callq  402a28 <__set_app_type>
  4010ca:	eb b8                	jmp    401084 <pre_c_init+0x74>
  4010cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4010d0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
  4010d4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
  4010d9:	74 45                	je     401120 <pre_c_init+0x110>
  4010db:	66 81 fa 0b 02       	cmp    $0x20b,%dx
  4010e0:	75 85                	jne    401067 <pre_c_init+0x57>
  4010e2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010e9:	0f 86 78 ff ff ff    	jbe    401067 <pre_c_init+0x57>
  4010ef:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
  4010f5:	31 c9                	xor    %ecx,%ecx
  4010f7:	85 d2                	test   %edx,%edx
  4010f9:	0f 95 c1             	setne  %cl
  4010fc:	e9 66 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  401101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401108:	48 8d 0d 61 0a 00 00 	lea    0xa61(%rip),%rcx        # 401b70 <_matherr>
  40110f:	e8 2c 10 00 00       	callq  402140 <__mingw_setusermatherr>
  401114:	31 c0                	xor    %eax,%eax
  401116:	48 83 c4 28          	add    $0x28,%rsp
  40111a:	c3                   	retq   
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401120:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401124:	0f 86 3d ff ff ff    	jbe    401067 <pre_c_init+0x57>
  40112a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401131:	31 c9                	xor    %ecx,%ecx
  401133:	45 85 c0             	test   %r8d,%r8d
  401136:	0f 95 c1             	setne  %cl
  401139:	e9 29 ff ff ff       	jmpq   401067 <pre_c_init+0x57>
  40113e:	66 90                	xchg   %ax,%ax

0000000000401140 <pre_cpp_init>:
  401140:	48 83 ec 38          	sub    $0x38,%rsp
  401144:	48 8b 05 75 33 00 00 	mov    0x3375(%rip),%rax        # 4044c0 <.refptr._newmode>
  40114b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 407028 <envp>
  401152:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 407030 <argv>
  401159:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 407038 <argc>
  401160:	8b 00                	mov    (%rax),%eax
  401162:	89 05 b0 5e 00 00    	mov    %eax,0x5eb0(%rip)        # 407018 <startinfo>
  401168:	48 8d 05 a9 5e 00 00 	lea    0x5ea9(%rip),%rax        # 407018 <startinfo>
  40116f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401174:	48 8b 05 05 33 00 00 	mov    0x3305(%rip),%rax        # 404480 <.refptr._dowildcard>
  40117b:	44 8b 08             	mov    (%rax),%r9d
  40117e:	e8 b5 18 00 00       	callq  402a38 <__getmainargs>
  401183:	90                   	nop
  401184:	48 83 c4 38          	add    $0x38,%rsp
  401188:	c3                   	retq   
  401189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401190 <__tmainCRTStartup>:
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	57                   	push   %rdi
  401196:	56                   	push   %rsi
  401197:	53                   	push   %rbx
  401198:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40119f:	b9 0d 00 00 00       	mov    $0xd,%ecx
  4011a4:	31 c0                	xor    %eax,%eax
  4011a6:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  4011ab:	4c 89 c7             	mov    %r8,%rdi
  4011ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011b1:	48 8b 3d 18 33 00 00 	mov    0x3318(%rip),%rdi        # 4044d0 <.refptr.mingw_app_type>
  4011b8:	44 8b 0f             	mov    (%rdi),%r9d
  4011bb:	45 85 c9             	test   %r9d,%r9d
  4011be:	0f 85 9c 02 00 00    	jne    401460 <__tmainCRTStartup+0x2d0>
  4011c4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011cb:	00 00 
  4011cd:	48 8b 1d 3c 32 00 00 	mov    0x323c(%rip),%rbx        # 404410 <.refptr.__native_startup_lock>
  4011d4:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011d8:	31 ed                	xor    %ebp,%ebp
  4011da:	4c 8b 25 27 70 00 00 	mov    0x7027(%rip),%r12        # 408208 <__imp_Sleep>
  4011e1:	eb 16                	jmp    4011f9 <__tmainCRTStartup+0x69>
  4011e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011e8:	48 39 c6             	cmp    %rax,%rsi
  4011eb:	0f 84 17 02 00 00    	je     401408 <__tmainCRTStartup+0x278>
  4011f1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011f6:	41 ff d4             	callq  *%r12
  4011f9:	48 89 e8             	mov    %rbp,%rax
  4011fc:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  401201:	48 85 c0             	test   %rax,%rax
  401204:	75 e2                	jne    4011e8 <__tmainCRTStartup+0x58>
  401206:	48 8b 35 13 32 00 00 	mov    0x3213(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40120d:	31 ed                	xor    %ebp,%ebp
  40120f:	8b 06                	mov    (%rsi),%eax
  401211:	83 f8 01             	cmp    $0x1,%eax
  401214:	0f 84 05 02 00 00    	je     40141f <__tmainCRTStartup+0x28f>
  40121a:	8b 06                	mov    (%rsi),%eax
  40121c:	85 c0                	test   %eax,%eax
  40121e:	0f 84 6c 02 00 00    	je     401490 <__tmainCRTStartup+0x300>
  401224:	c7 05 ee 5d 00 00 01 	movl   $0x1,0x5dee(%rip)        # 40701c <has_cctor>
  40122b:	00 00 00 
  40122e:	8b 06                	mov    (%rsi),%eax
  401230:	83 f8 01             	cmp    $0x1,%eax
  401233:	0f 84 fb 01 00 00    	je     401434 <__tmainCRTStartup+0x2a4>
  401239:	85 ed                	test   %ebp,%ebp
  40123b:	0f 84 14 02 00 00    	je     401455 <__tmainCRTStartup+0x2c5>
  401241:	48 8b 05 58 31 00 00 	mov    0x3158(%rip),%rax        # 4043a0 <.refptr.__dyn_tls_init_callback>
  401248:	48 8b 00             	mov    (%rax),%rax
  40124b:	48 85 c0             	test   %rax,%rax
  40124e:	74 0c                	je     40125c <__tmainCRTStartup+0xcc>
  401250:	45 31 c0             	xor    %r8d,%r8d
  401253:	ba 02 00 00 00       	mov    $0x2,%edx
  401258:	31 c9                	xor    %ecx,%ecx
  40125a:	ff d0                	callq  *%rax
  40125c:	e8 ff 0b 00 00       	callq  401e60 <_pei386_runtime_relocator>
  401261:	48 8d 0d e8 0e 00 00 	lea    0xee8(%rip),%rcx        # 402150 <_gnu_exception_handler>
  401268:	ff 15 92 6f 00 00    	callq  *0x6f92(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  40126e:	48 8b 15 8b 31 00 00 	mov    0x318b(%rip),%rdx        # 404400 <.refptr.__mingw_oldexcpt_handler>
  401275:	48 8d 0d 84 fd ff ff 	lea    -0x27c(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40127c:	48 89 02             	mov    %rax,(%rdx)
  40127f:	e8 fc 17 00 00       	callq  402a80 <_set_invalid_parameter_handler>
  401284:	e8 e7 09 00 00       	callq  401c70 <_fpreset>
  401289:	48 8b 05 20 31 00 00 	mov    0x3120(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  401290:	48 89 05 79 5d 00 00 	mov    %rax,0x5d79(%rip)        # 407010 <__mingw_winmain_hInstance>
  401297:	e8 f4 17 00 00       	callq  402a90 <__p__acmdln>
  40129c:	31 c9                	xor    %ecx,%ecx
  40129e:	48 8b 00             	mov    (%rax),%rax
  4012a1:	48 85 c0             	test   %rax,%rax
  4012a4:	75 1c                	jne    4012c2 <__tmainCRTStartup+0x132>
  4012a6:	eb 58                	jmp    401300 <__tmainCRTStartup+0x170>
  4012a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4012af:	00 
  4012b0:	84 d2                	test   %dl,%dl
  4012b2:	74 45                	je     4012f9 <__tmainCRTStartup+0x169>
  4012b4:	83 e1 01             	and    $0x1,%ecx
  4012b7:	74 27                	je     4012e0 <__tmainCRTStartup+0x150>
  4012b9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012be:	48 83 c0 01          	add    $0x1,%rax
  4012c2:	0f b6 10             	movzbl (%rax),%edx
  4012c5:	80 fa 20             	cmp    $0x20,%dl
  4012c8:	7e e6                	jle    4012b0 <__tmainCRTStartup+0x120>
  4012ca:	41 89 c8             	mov    %ecx,%r8d
  4012cd:	41 83 f0 01          	xor    $0x1,%r8d
  4012d1:	80 fa 22             	cmp    $0x22,%dl
  4012d4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012d8:	eb e4                	jmp    4012be <__tmainCRTStartup+0x12e>
  4012da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012e0:	84 d2                	test   %dl,%dl
  4012e2:	74 15                	je     4012f9 <__tmainCRTStartup+0x169>
  4012e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4012e8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  4012ec:	48 83 c0 01          	add    $0x1,%rax
  4012f0:	84 d2                	test   %dl,%dl
  4012f2:	74 05                	je     4012f9 <__tmainCRTStartup+0x169>
  4012f4:	80 fa 20             	cmp    $0x20,%dl
  4012f7:	7e ef                	jle    4012e8 <__tmainCRTStartup+0x158>
  4012f9:	48 89 05 08 5d 00 00 	mov    %rax,0x5d08(%rip)        # 407008 <__mingw_winmain_lpCmdLine>
  401300:	44 8b 07             	mov    (%rdi),%r8d
  401303:	45 85 c0             	test   %r8d,%r8d
  401306:	74 16                	je     40131e <__tmainCRTStartup+0x18e>
  401308:	b8 0a 00 00 00       	mov    $0xa,%eax
  40130d:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401312:	0f 85 e0 00 00 00    	jne    4013f8 <__tmainCRTStartup+0x268>
  401318:	89 05 e2 1c 00 00    	mov    %eax,0x1ce2(%rip)        # 403000 <__data_start__>
  40131e:	48 63 2d 13 5d 00 00 	movslq 0x5d13(%rip),%rbp        # 407038 <argc>
  401325:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401329:	4d 63 e4             	movslq %r12d,%r12
  40132c:	49 c1 e4 03          	shl    $0x3,%r12
  401330:	4c 89 e1             	mov    %r12,%rcx
  401333:	e8 90 16 00 00       	callq  4029c8 <malloc>
  401338:	4c 8b 2d f1 5c 00 00 	mov    0x5cf1(%rip),%r13        # 407030 <argv>
  40133f:	48 89 c7             	mov    %rax,%rdi
  401342:	85 ed                	test   %ebp,%ebp
  401344:	7e 42                	jle    401388 <__tmainCRTStartup+0x1f8>
  401346:	31 db                	xor    %ebx,%ebx
  401348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40134f:	00 
  401350:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
  401355:	e8 56 16 00 00       	callq  4029b0 <strlen>
  40135a:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135e:	48 89 f1             	mov    %rsi,%rcx
  401361:	e8 62 16 00 00       	callq  4029c8 <malloc>
  401366:	49 89 f0             	mov    %rsi,%r8
  401369:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
  40136d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
  401372:	48 89 c1             	mov    %rax,%rcx
  401375:	48 83 c3 01          	add    $0x1,%rbx
  401379:	e8 42 16 00 00       	callq  4029c0 <memcpy>
  40137e:	48 39 dd             	cmp    %rbx,%rbp
  401381:	75 cd                	jne    401350 <__tmainCRTStartup+0x1c0>
  401383:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
  401388:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138f:	48 89 3d 9a 5c 00 00 	mov    %rdi,0x5c9a(%rip)        # 407030 <argv>
  401396:	e8 c5 06 00 00       	callq  401a60 <__main>
  40139b:	48 8b 05 1e 30 00 00 	mov    0x301e(%rip),%rax        # 4043c0 <.refptr.__imp___initenv>
  4013a2:	4c 8b 05 7f 5c 00 00 	mov    0x5c7f(%rip),%r8        # 407028 <envp>
  4013a9:	8b 0d 89 5c 00 00    	mov    0x5c89(%rip),%ecx        # 407038 <argc>
  4013af:	48 8b 00             	mov    (%rax),%rax
  4013b2:	4c 89 00             	mov    %r8,(%rax)
  4013b5:	48 8b 15 74 5c 00 00 	mov    0x5c74(%rip),%rdx        # 407030 <argv>
  4013bc:	e8 c4 03 00 00       	callq  401785 <main>
  4013c1:	8b 0d 59 5c 00 00    	mov    0x5c59(%rip),%ecx        # 407020 <managedapp>
  4013c7:	89 05 57 5c 00 00    	mov    %eax,0x5c57(%rip)        # 407024 <mainret>
  4013cd:	85 c9                	test   %ecx,%ecx
  4013cf:	0f 84 d9 00 00 00    	je     4014ae <__tmainCRTStartup+0x31e>
  4013d5:	8b 15 41 5c 00 00    	mov    0x5c41(%rip),%edx        # 40701c <has_cctor>
  4013db:	85 d2                	test   %edx,%edx
  4013dd:	0f 84 8d 00 00 00    	je     401470 <__tmainCRTStartup+0x2e0>
  4013e3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013ea:	5b                   	pop    %rbx
  4013eb:	5e                   	pop    %rsi
  4013ec:	5f                   	pop    %rdi
  4013ed:	5d                   	pop    %rbp
  4013ee:	41 5c                	pop    %r12
  4013f0:	41 5d                	pop    %r13
  4013f2:	c3                   	retq   
  4013f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4013f8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  4013fd:	e9 16 ff ff ff       	jmpq   401318 <__tmainCRTStartup+0x188>
  401402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401408:	48 8b 35 11 30 00 00 	mov    0x3011(%rip),%rsi        # 404420 <.refptr.__native_startup_state>
  40140f:	bd 01 00 00 00       	mov    $0x1,%ebp
  401414:	8b 06                	mov    (%rsi),%eax
  401416:	83 f8 01             	cmp    $0x1,%eax
  401419:	0f 85 fb fd ff ff    	jne    40121a <__tmainCRTStartup+0x8a>
  40141f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  401424:	e8 ef 15 00 00       	callq  402a18 <_amsg_exit>
  401429:	8b 06                	mov    (%rsi),%eax
  40142b:	83 f8 01             	cmp    $0x1,%eax
  40142e:	0f 85 05 fe ff ff    	jne    401239 <__tmainCRTStartup+0xa9>
  401434:	48 8b 15 05 30 00 00 	mov    0x3005(%rip),%rdx        # 404440 <.refptr.__xc_z>
  40143b:	48 8b 0d ee 2f 00 00 	mov    0x2fee(%rip),%rcx        # 404430 <.refptr.__xc_a>
  401442:	e8 c1 15 00 00       	callq  402a08 <_initterm>
  401447:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  40144d:	85 ed                	test   %ebp,%ebp
  40144f:	0f 85 ec fd ff ff    	jne    401241 <__tmainCRTStartup+0xb1>
  401455:	31 c0                	xor    %eax,%eax
  401457:	48 87 03             	xchg   %rax,(%rbx)
  40145a:	e9 e2 fd ff ff       	jmpq   401241 <__tmainCRTStartup+0xb1>
  40145f:	90                   	nop
  401460:	4c 89 c1             	mov    %r8,%rcx
  401463:	ff 15 7f 6d 00 00    	callq  *0x6d7f(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  401469:	e9 56 fd ff ff       	jmpq   4011c4 <__tmainCRTStartup+0x34>
  40146e:	66 90                	xchg   %ax,%ax
  401470:	e8 9b 15 00 00       	callq  402a10 <_cexit>
  401475:	8b 05 a9 5b 00 00    	mov    0x5ba9(%rip),%eax        # 407024 <mainret>
  40147b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  401482:	5b                   	pop    %rbx
  401483:	5e                   	pop    %rsi
  401484:	5f                   	pop    %rdi
  401485:	5d                   	pop    %rbp
  401486:	41 5c                	pop    %r12
  401488:	41 5d                	pop    %r13
  40148a:	c3                   	retq   
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401490:	48 8b 15 c9 2f 00 00 	mov    0x2fc9(%rip),%rdx        # 404460 <.refptr.__xi_z>
  401497:	48 8b 0d b2 2f 00 00 	mov    0x2fb2(%rip),%rcx        # 404450 <.refptr.__xi_a>
  40149e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  4014a4:	e8 5f 15 00 00       	callq  402a08 <_initterm>
  4014a9:	e9 80 fd ff ff       	jmpq   40122e <__tmainCRTStartup+0x9e>
  4014ae:	89 c1                	mov    %eax,%ecx
  4014b0:	e8 33 15 00 00       	callq  4029e8 <exit>
  4014b5:	90                   	nop
  4014b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014bd:	00 00 00 

00000000004014c0 <WinMainCRTStartup>:
  4014c0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014c4 <.l_startw>:
  4014c4:	48 8b 05 05 30 00 00 	mov    0x3005(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014cb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014d1:	e8 ba fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014d6:	90                   	nop

00000000004014d7 <.l_endw>:
  4014d7:	90                   	nop
  4014d8:	48 83 c4 28          	add    $0x28,%rsp
  4014dc:	c3                   	retq   
  4014dd:	0f 1f 00             	nopl   (%rax)

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 e5 2f 00 00 	mov    0x2fe5(%rip),%rax        # 4044d0 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 9a fc ff ff       	callq  401190 <__tmainCRTStartup>
  4014f6:	90                   	nop

00000000004014f7 <.l_end>:
  4014f7:	90                   	nop
  4014f8:	48 83 c4 28          	add    $0x28,%rsp
  4014fc:	c3                   	retq   
  4014fd:	0f 1f 00             	nopl   (%rax)

0000000000401500 <atexit>:
  401500:	48 83 ec 28          	sub    $0x28,%rsp
  401504:	e8 f7 14 00 00       	callq  402a00 <_onexit>
  401509:	48 85 c0             	test   %rax,%rax
  40150c:	0f 94 c0             	sete   %al
  40150f:	0f b6 c0             	movzbl %al,%eax
  401512:	f7 d8                	neg    %eax
  401514:	48 83 c4 28          	add    $0x28,%rsp
  401518:	c3                   	retq   
  401519:	90                   	nop
  40151a:	90                   	nop
  40151b:	90                   	nop
  40151c:	90                   	nop
  40151d:	90                   	nop
  40151e:	90                   	nop
  40151f:	90                   	nop

0000000000401520 <__gcc_register_frame>:
  401520:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401530 <__gcc_deregister_frame>
  401527:	e9 d4 ff ff ff       	jmpq   401500 <atexit>
  40152c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401530 <__gcc_deregister_frame>:
  401530:	c3                   	retq   
  401531:	90                   	nop
  401532:	90                   	nop
  401533:	90                   	nop
  401534:	90                   	nop
  401535:	90                   	nop
  401536:	90                   	nop
  401537:	90                   	nop
  401538:	90                   	nop
  401539:	90                   	nop
  40153a:	90                   	nop
  40153b:	90                   	nop
  40153c:	90                   	nop
  40153d:	90                   	nop
  40153e:	90                   	nop
  40153f:	90                   	nop

0000000000401540 <_Z11print_arrayPii>:
  401540:	55                   	push   %rbp
  401541:	48 89 e5             	mov    %rsp,%rbp
  401544:	48 83 ec 30          	sub    $0x30,%rsp
  401548:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40154c:	89 55 18             	mov    %edx,0x18(%rbp)
  40154f:	48 8d 15 b6 2a 00 00 	lea    0x2ab6(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401556:	48 8b 0d f3 2d 00 00 	mov    0x2df3(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40155d:	e8 16 04 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401562:	48 8b 15 f7 2d 00 00 	mov    0x2df7(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401569:	48 8b 0d e0 2d 00 00 	mov    0x2de0(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401570:	e8 2b 04 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401575:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40157c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40157f:	3b 45 18             	cmp    0x18(%rbp),%eax
  401582:	7d 37                	jge    4015bb <_Z11print_arrayPii+0x7b>
  401584:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401587:	48 98                	cltq   
  401589:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401590:	00 
  401591:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401595:	48 01 d0             	add    %rdx,%rax
  401598:	8b 00                	mov    (%rax),%eax
  40159a:	89 c2                	mov    %eax,%edx
  40159c:	48 8b 0d ad 2d 00 00 	mov    0x2dad(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015a3:	e8 f0 03 00 00       	callq  401998 <_ZNSolsEi>
  4015a8:	ba 20 00 00 00       	mov    $0x20,%edx
  4015ad:	48 89 c1             	mov    %rax,%rcx
  4015b0:	e8 bb 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  4015b5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4015b9:	eb c1                	jmp    40157c <_Z11print_arrayPii+0x3c>
  4015bb:	48 8b 15 9e 2d 00 00 	mov    0x2d9e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4015c2:	48 8b 0d 87 2d 00 00 	mov    0x2d87(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015c9:	e8 d2 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4015ce:	90                   	nop
  4015cf:	48 83 c4 30          	add    $0x30,%rsp
  4015d3:	5d                   	pop    %rbp
  4015d4:	c3                   	retq   

00000000004015d5 <_Z12print_array2Piii>:
  4015d5:	55                   	push   %rbp
  4015d6:	48 89 e5             	mov    %rsp,%rbp
  4015d9:	48 83 ec 30          	sub    $0x30,%rsp
  4015dd:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4015e1:	89 55 18             	mov    %edx,0x18(%rbp)
  4015e4:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4015e8:	48 8d 15 1d 2a 00 00 	lea    0x2a1d(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4015ef:	48 8b 0d 5a 2d 00 00 	mov    0x2d5a(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4015f6:	e8 7d 03 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4015fb:	48 8b 15 5e 2d 00 00 	mov    0x2d5e(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401602:	48 8b 0d 47 2d 00 00 	mov    0x2d47(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401609:	e8 92 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40160e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401615:	8b 45 18             	mov    0x18(%rbp),%eax
  401618:	0f af 45 20          	imul   0x20(%rbp),%eax
  40161c:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  40161f:	7d 5b                	jge    40167c <_Z12print_array2Piii+0xa7>
  401621:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401624:	48 98                	cltq   
  401626:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  40162d:	00 
  40162e:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401632:	48 01 d0             	add    %rdx,%rax
  401635:	8b 00                	mov    (%rax),%eax
  401637:	89 c2                	mov    %eax,%edx
  401639:	48 8b 0d 10 2d 00 00 	mov    0x2d10(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401640:	e8 53 03 00 00       	callq  401998 <_ZNSolsEi>
  401645:	ba 09 00 00 00       	mov    $0x9,%edx
  40164a:	48 89 c1             	mov    %rax,%rcx
  40164d:	e8 1e 03 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401652:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401655:	99                   	cltd   
  401656:	f7 7d 20             	idivl  0x20(%rbp)
  401659:	8b 45 20             	mov    0x20(%rbp),%eax
  40165c:	83 e8 01             	sub    $0x1,%eax
  40165f:	39 c2                	cmp    %eax,%edx
  401661:	75 13                	jne    401676 <_Z12print_array2Piii+0xa1>
  401663:	48 8b 15 f6 2c 00 00 	mov    0x2cf6(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40166a:	48 8b 0d df 2c 00 00 	mov    0x2cdf(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401671:	e8 2a 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401676:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40167a:	eb 99                	jmp    401615 <_Z12print_array2Piii+0x40>
  40167c:	48 8b 15 dd 2c 00 00 	mov    0x2cdd(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401683:	48 8b 0d c6 2c 00 00 	mov    0x2cc6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40168a:	e8 11 03 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40168f:	90                   	nop
  401690:	48 83 c4 30          	add    $0x30,%rsp
  401694:	5d                   	pop    %rbp
  401695:	c3                   	retq   

0000000000401696 <_Z14print_array_2dPA5_iii>:
  401696:	55                   	push   %rbp
  401697:	48 89 e5             	mov    %rsp,%rbp
  40169a:	48 83 ec 30          	sub    $0x30,%rsp
  40169e:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4016a2:	89 55 18             	mov    %edx,0x18(%rbp)
  4016a5:	44 89 45 20          	mov    %r8d,0x20(%rbp)
  4016a9:	48 8d 15 5c 29 00 00 	lea    0x295c(%rip),%rdx        # 40400c <_ZL1M+0x4>
  4016b0:	48 8b 0d 99 2c 00 00 	mov    0x2c99(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016b7:	e8 bc 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  4016bc:	48 8b 15 9d 2c 00 00 	mov    0x2c9d(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  4016c3:	48 8b 0d 86 2c 00 00 	mov    0x2c86(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  4016ca:	e8 d1 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  4016cf:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4016d6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016d9:	3b 45 18             	cmp    0x18(%rbp),%eax
  4016dc:	7d 6f                	jge    40174d <_Z14print_array_2dPA5_iii+0xb7>
  4016de:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4016e5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4016e8:	3b 45 20             	cmp    0x20(%rbp),%eax
  4016eb:	7d 47                	jge    401734 <_Z14print_array_2dPA5_iii+0x9e>
  4016ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016f0:	48 63 d0             	movslq %eax,%rdx
  4016f3:	48 89 d0             	mov    %rdx,%rax
  4016f6:	48 c1 e0 02          	shl    $0x2,%rax
  4016fa:	48 01 d0             	add    %rdx,%rax
  4016fd:	48 c1 e0 02          	shl    $0x2,%rax
  401701:	48 89 c2             	mov    %rax,%rdx
  401704:	48 8b 45 10          	mov    0x10(%rbp),%rax
  401708:	48 01 c2             	add    %rax,%rdx
  40170b:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40170e:	48 98                	cltq   
  401710:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  401713:	89 c2                	mov    %eax,%edx
  401715:	48 8b 0d 34 2c 00 00 	mov    0x2c34(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40171c:	e8 77 02 00 00       	callq  401998 <_ZNSolsEi>
  401721:	ba 09 00 00 00       	mov    $0x9,%edx
  401726:	48 89 c1             	mov    %rax,%rcx
  401729:	e8 42 02 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  40172e:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401732:	eb b1                	jmp    4016e5 <_Z14print_array_2dPA5_iii+0x4f>
  401734:	48 8b 15 25 2c 00 00 	mov    0x2c25(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  40173b:	48 8b 0d 0e 2c 00 00 	mov    0x2c0e(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401742:	e8 59 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401747:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40174b:	eb 89                	jmp    4016d6 <_Z14print_array_2dPA5_iii+0x40>
  40174d:	90                   	nop
  40174e:	48 83 c4 30          	add    $0x30,%rsp
  401752:	5d                   	pop    %rbp
  401753:	c3                   	retq   

0000000000401754 <_Z15print_separatorv>:
  401754:	55                   	push   %rbp
  401755:	48 89 e5             	mov    %rsp,%rbp
  401758:	48 83 ec 20          	sub    $0x20,%rsp
  40175c:	48 8d 15 b5 28 00 00 	lea    0x28b5(%rip),%rdx        # 404018 <_ZL1M+0x10>
  401763:	48 8b 0d e6 2b 00 00 	mov    0x2be6(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40176a:	e8 09 02 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40176f:	48 8b 15 ea 2b 00 00 	mov    0x2bea(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401776:	48 89 c1             	mov    %rax,%rcx
  401779:	e8 22 02 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40177e:	90                   	nop
  40177f:	48 83 c4 20          	add    $0x20,%rsp
  401783:	5d                   	pop    %rbp
  401784:	c3                   	retq   

0000000000401785 <main>:
  401785:	55                   	push   %rbp
  401786:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  40178d:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401794:	00 
  401795:	e8 c6 02 00 00       	callq  401a60 <__main>
  40179a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40179e:	48 89 45 68          	mov    %rax,0x68(%rbp)
  4017a2:	c7 45 7c 00 00 00 00 	movl   $0x0,0x7c(%rbp)
  4017a9:	83 7d 7c 09          	cmpl   $0x9,0x7c(%rbp)
  4017ad:	7f 4e                	jg     4017fd <main+0x78>
  4017af:	c7 45 78 00 00 00 00 	movl   $0x0,0x78(%rbp)
  4017b6:	83 7d 78 04          	cmpl   $0x4,0x78(%rbp)
  4017ba:	7f 3b                	jg     4017f7 <main+0x72>
  4017bc:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017bf:	89 d0                	mov    %edx,%eax
  4017c1:	c1 e0 02             	shl    $0x2,%eax
  4017c4:	01 d0                	add    %edx,%eax
  4017c6:	01 c0                	add    %eax,%eax
  4017c8:	89 c1                	mov    %eax,%ecx
  4017ca:	8b 55 7c             	mov    0x7c(%rbp),%edx
  4017cd:	89 d0                	mov    %edx,%eax
  4017cf:	c1 e0 02             	shl    $0x2,%eax
  4017d2:	01 c2                	add    %eax,%edx
  4017d4:	8b 45 78             	mov    0x78(%rbp),%eax
  4017d7:	01 d0                	add    %edx,%eax
  4017d9:	48 98                	cltq   
  4017db:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4017e2:	00 
  4017e3:	48 8b 45 68          	mov    0x68(%rbp),%rax
  4017e7:	48 01 d0             	add    %rdx,%rax
  4017ea:	8b 55 78             	mov    0x78(%rbp),%edx
  4017ed:	01 ca                	add    %ecx,%edx
  4017ef:	89 10                	mov    %edx,(%rax)
  4017f1:	83 45 78 01          	addl   $0x1,0x78(%rbp)
  4017f5:	eb bf                	jmp    4017b6 <main+0x31>
  4017f7:	83 45 7c 01          	addl   $0x1,0x7c(%rbp)
  4017fb:	eb ac                	jmp    4017a9 <main+0x24>
  4017fd:	48 8d 15 08 28 00 00 	lea    0x2808(%rip),%rdx        # 40400c <_ZL1M+0x4>
  401804:	48 8b 0d 45 2b 00 00 	mov    0x2b45(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40180b:	e8 68 01 00 00       	callq  401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  401810:	48 8b 15 49 2b 00 00 	mov    0x2b49(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401817:	48 8b 0d 32 2b 00 00 	mov    0x2b32(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  40181e:	e8 7d 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  401823:	c7 45 74 00 00 00 00 	movl   $0x0,0x74(%rbp)
  40182a:	83 7d 74 09          	cmpl   $0x9,0x74(%rbp)
  40182e:	7f 64                	jg     401894 <main+0x10f>
  401830:	c7 45 70 00 00 00 00 	movl   $0x0,0x70(%rbp)
  401837:	83 7d 70 04          	cmpl   $0x4,0x70(%rbp)
  40183b:	7f 3e                	jg     40187b <main+0xf6>
  40183d:	8b 45 70             	mov    0x70(%rbp),%eax
  401840:	48 63 c8             	movslq %eax,%rcx
  401843:	8b 45 74             	mov    0x74(%rbp),%eax
  401846:	48 63 d0             	movslq %eax,%rdx
  401849:	48 89 d0             	mov    %rdx,%rax
  40184c:	48 c1 e0 02          	shl    $0x2,%rax
  401850:	48 01 d0             	add    %rdx,%rax
  401853:	48 01 c8             	add    %rcx,%rax
  401856:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
  40185a:	89 c2                	mov    %eax,%edx
  40185c:	48 8b 0d ed 2a 00 00 	mov    0x2aed(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401863:	e8 30 01 00 00       	callq  401998 <_ZNSolsEi>
  401868:	ba 09 00 00 00       	mov    $0x9,%edx
  40186d:	48 89 c1             	mov    %rax,%rcx
  401870:	e8 fb 00 00 00       	callq  401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401875:	83 45 70 01          	addl   $0x1,0x70(%rbp)
  401879:	eb bc                	jmp    401837 <main+0xb2>
  40187b:	48 8b 15 de 2a 00 00 	mov    0x2ade(%rip),%rdx        # 404360 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401882:	48 8b 0d c7 2a 00 00 	mov    0x2ac7(%rip),%rcx        # 404350 <__fu0__ZSt4cout>
  401889:	e8 12 01 00 00       	callq  4019a0 <_ZNSolsEPFRSoS_E>
  40188e:	83 45 74 01          	addl   $0x1,0x74(%rbp)
  401892:	eb 96                	jmp    40182a <main+0xa5>
  401894:	e8 bb fe ff ff       	callq  401754 <_Z15print_separatorv>
  401899:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40189d:	ba 32 00 00 00       	mov    $0x32,%edx
  4018a2:	48 89 c1             	mov    %rax,%rcx
  4018a5:	e8 96 fc ff ff       	callq  401540 <_Z11print_arrayPii>
  4018aa:	e8 a5 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018af:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018b3:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018b9:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018be:	48 89 c1             	mov    %rax,%rcx
  4018c1:	e8 0f fd ff ff       	callq  4015d5 <_Z12print_array2Piii>
  4018c6:	e8 89 fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018cf:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4018d5:	ba 0a 00 00 00       	mov    $0xa,%edx
  4018da:	48 89 c1             	mov    %rax,%rcx
  4018dd:	e8 b4 fd ff ff       	callq  401696 <_Z14print_array_2dPA5_iii>
  4018e2:	e8 6d fe ff ff       	callq  401754 <_Z15print_separatorv>
  4018e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ec:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
  4018f3:	5d                   	pop    %rbp
  4018f4:	c3                   	retq   

00000000004018f5 <__tcf_0>:
  4018f5:	55                   	push   %rbp
  4018f6:	48 89 e5             	mov    %rsp,%rbp
  4018f9:	48 83 ec 20          	sub    $0x20,%rsp
  4018fd:	48 8d 0d 3c 57 00 00 	lea    0x573c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401904:	e8 7f 00 00 00       	callq  401988 <_ZNSt8ios_base4InitD1Ev>
  401909:	90                   	nop
  40190a:	48 83 c4 20          	add    $0x20,%rsp
  40190e:	5d                   	pop    %rbp
  40190f:	c3                   	retq   

0000000000401910 <_Z41__static_initialization_and_destruction_0ii>:
  401910:	55                   	push   %rbp
  401911:	48 89 e5             	mov    %rsp,%rbp
  401914:	48 83 ec 20          	sub    $0x20,%rsp
  401918:	89 4d 10             	mov    %ecx,0x10(%rbp)
  40191b:	89 55 18             	mov    %edx,0x18(%rbp)
  40191e:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  401922:	75 21                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  401924:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  40192b:	75 18                	jne    401945 <_Z41__static_initialization_and_destruction_0ii+0x35>
  40192d:	48 8d 0d 0c 57 00 00 	lea    0x570c(%rip),%rcx        # 407040 <_ZStL8__ioinit>
  401934:	e8 57 00 00 00       	callq  401990 <_ZNSt8ios_base4InitC1Ev>
  401939:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 4018f5 <__tcf_0>
  401940:	e8 bb fb ff ff       	callq  401500 <atexit>
  401945:	90                   	nop
  401946:	48 83 c4 20          	add    $0x20,%rsp
  40194a:	5d                   	pop    %rbp
  40194b:	c3                   	retq   

000000000040194c <_GLOBAL__sub_I__Z11print_arrayPii>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 20          	sub    $0x20,%rsp
  401954:	ba ff ff 00 00       	mov    $0xffff,%edx
  401959:	b9 01 00 00 00       	mov    $0x1,%ecx
  40195e:	e8 ad ff ff ff       	callq  401910 <_Z41__static_initialization_and_destruction_0ii>
  401963:	90                   	nop
  401964:	48 83 c4 20          	add    $0x20,%rsp
  401968:	5d                   	pop    %rbp
  401969:	c3                   	retq   
  40196a:	90                   	nop
  40196b:	90                   	nop
  40196c:	90                   	nop
  40196d:	90                   	nop
  40196e:	90                   	nop
  40196f:	90                   	nop

0000000000401970 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>:
  401970:	ff 25 ca 69 00 00    	jmpq   *0x69ca(%rip)        # 408340 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
  401976:	90                   	nop
  401977:	90                   	nop

0000000000401978 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
  401978:	ff 25 ba 69 00 00    	jmpq   *0x69ba(%rip)        # 408338 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
  40197e:	90                   	nop
  40197f:	90                   	nop

0000000000401980 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  401980:	ff 25 aa 69 00 00    	jmpq   *0x69aa(%rip)        # 408330 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  401986:	90                   	nop
  401987:	90                   	nop

0000000000401988 <_ZNSt8ios_base4InitD1Ev>:
  401988:	ff 25 92 69 00 00    	jmpq   *0x6992(%rip)        # 408320 <__imp__ZNSt8ios_base4InitD1Ev>
  40198e:	90                   	nop
  40198f:	90                   	nop

0000000000401990 <_ZNSt8ios_base4InitC1Ev>:
  401990:	ff 25 82 69 00 00    	jmpq   *0x6982(%rip)        # 408318 <__imp__ZNSt8ios_base4InitC1Ev>
  401996:	90                   	nop
  401997:	90                   	nop

0000000000401998 <_ZNSolsEi>:
  401998:	ff 25 72 69 00 00    	jmpq   *0x6972(%rip)        # 408310 <__imp__ZNSolsEi>
  40199e:	90                   	nop
  40199f:	90                   	nop

00000000004019a0 <_ZNSolsEPFRSoS_E>:
  4019a0:	ff 25 62 69 00 00    	jmpq   *0x6962(%rip)        # 408308 <__imp__ZNSolsEPFRSoS_E>
  4019a6:	90                   	nop
  4019a7:	90                   	nop
  4019a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4019af:	00 

00000000004019b0 <__do_global_dtors>:
  4019b0:	48 83 ec 28          	sub    $0x28,%rsp
  4019b4:	48 8b 05 55 16 00 00 	mov    0x1655(%rip),%rax        # 403010 <p.0>
  4019bb:	48 8b 00             	mov    (%rax),%rax
  4019be:	48 85 c0             	test   %rax,%rax
  4019c1:	74 22                	je     4019e5 <__do_global_dtors+0x35>
  4019c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019c8:	ff d0                	callq  *%rax
  4019ca:	48 8b 05 3f 16 00 00 	mov    0x163f(%rip),%rax        # 403010 <p.0>
  4019d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4019d5:	48 8b 40 08          	mov    0x8(%rax),%rax
  4019d9:	48 89 15 30 16 00 00 	mov    %rdx,0x1630(%rip)        # 403010 <p.0>
  4019e0:	48 85 c0             	test   %rax,%rax
  4019e3:	75 e3                	jne    4019c8 <__do_global_dtors+0x18>
  4019e5:	48 83 c4 28          	add    $0x28,%rsp
  4019e9:	c3                   	retq   
  4019ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004019f0 <__do_global_ctors>:
  4019f0:	56                   	push   %rsi
  4019f1:	53                   	push   %rbx
  4019f2:	48 83 ec 28          	sub    $0x28,%rsp
  4019f6:	48 8b 15 73 29 00 00 	mov    0x2973(%rip),%rdx        # 404370 <.refptr.__CTOR_LIST__>
  4019fd:	48 8b 02             	mov    (%rdx),%rax
  401a00:	89 c1                	mov    %eax,%ecx
  401a02:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a05:	74 39                	je     401a40 <__do_global_ctors+0x50>
  401a07:	85 c9                	test   %ecx,%ecx
  401a09:	74 20                	je     401a2b <__do_global_ctors+0x3b>
  401a0b:	89 c8                	mov    %ecx,%eax
  401a0d:	83 e9 01             	sub    $0x1,%ecx
  401a10:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
  401a14:	48 29 c8             	sub    %rcx,%rax
  401a17:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401a20:	ff 13                	callq  *(%rbx)
  401a22:	48 83 eb 08          	sub    $0x8,%rbx
  401a26:	48 39 f3             	cmp    %rsi,%rbx
  401a29:	75 f5                	jne    401a20 <__do_global_ctors+0x30>
  401a2b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 4019b0 <__do_global_dtors>
  401a32:	48 83 c4 28          	add    $0x28,%rsp
  401a36:	5b                   	pop    %rbx
  401a37:	5e                   	pop    %rsi
  401a38:	e9 c3 fa ff ff       	jmpq   401500 <atexit>
  401a3d:	0f 1f 00             	nopl   (%rax)
  401a40:	31 c0                	xor    %eax,%eax
  401a42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a48:	44 8d 40 01          	lea    0x1(%rax),%r8d
  401a4c:	89 c1                	mov    %eax,%ecx
  401a4e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
  401a53:	4c 89 c0             	mov    %r8,%rax
  401a56:	75 f0                	jne    401a48 <__do_global_ctors+0x58>
  401a58:	eb ad                	jmp    401a07 <__do_global_ctors+0x17>
  401a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401a60 <__main>:
  401a60:	8b 05 ea 55 00 00    	mov    0x55ea(%rip),%eax        # 407050 <initialized>
  401a66:	85 c0                	test   %eax,%eax
  401a68:	74 06                	je     401a70 <__main+0x10>
  401a6a:	c3                   	retq   
  401a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a70:	c7 05 d6 55 00 00 01 	movl   $0x1,0x55d6(%rip)        # 407050 <initialized>
  401a77:	00 00 00 
  401a7a:	e9 71 ff ff ff       	jmpq   4019f0 <__do_global_ctors>
  401a7f:	90                   	nop

0000000000401a80 <my_lconv_init>:
  401a80:	48 ff 25 c9 67 00 00 	rex.W jmpq *0x67c9(%rip)        # 408250 <__imp___lconv_init>
  401a87:	90                   	nop
  401a88:	90                   	nop
  401a89:	90                   	nop
  401a8a:	90                   	nop
  401a8b:	90                   	nop
  401a8c:	90                   	nop
  401a8d:	90                   	nop
  401a8e:	90                   	nop
  401a8f:	90                   	nop

0000000000401a90 <_setargv>:
  401a90:	31 c0                	xor    %eax,%eax
  401a92:	c3                   	retq   
  401a93:	90                   	nop
  401a94:	90                   	nop
  401a95:	90                   	nop
  401a96:	90                   	nop
  401a97:	90                   	nop
  401a98:	90                   	nop
  401a99:	90                   	nop
  401a9a:	90                   	nop
  401a9b:	90                   	nop
  401a9c:	90                   	nop
  401a9d:	90                   	nop
  401a9e:	90                   	nop
  401a9f:	90                   	nop

0000000000401aa0 <__dyn_tls_dtor>:
  401aa0:	48 83 ec 28          	sub    $0x28,%rsp
  401aa4:	83 fa 03             	cmp    $0x3,%edx
  401aa7:	74 17                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aa9:	85 d2                	test   %edx,%edx
  401aab:	74 13                	je     401ac0 <__dyn_tls_dtor+0x20>
  401aad:	b8 01 00 00 00       	mov    $0x1,%eax
  401ab2:	48 83 c4 28          	add    $0x28,%rsp
  401ab6:	c3                   	retq   
  401ab7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401abe:	00 00 
  401ac0:	e8 cb 09 00 00       	callq  402490 <__mingw_TLScallback>
  401ac5:	b8 01 00 00 00       	mov    $0x1,%eax
  401aca:	48 83 c4 28          	add    $0x28,%rsp
  401ace:	c3                   	retq   
  401acf:	90                   	nop

0000000000401ad0 <__dyn_tls_init>:
  401ad0:	56                   	push   %rsi
  401ad1:	53                   	push   %rbx
  401ad2:	48 83 ec 28          	sub    $0x28,%rsp
  401ad6:	48 8b 05 53 28 00 00 	mov    0x2853(%rip),%rax        # 404330 <.refptr._CRT_MT>
  401add:	83 38 02             	cmpl   $0x2,(%rax)
  401ae0:	74 06                	je     401ae8 <__dyn_tls_init+0x18>
  401ae2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  401ae8:	83 fa 02             	cmp    $0x2,%edx
  401aeb:	74 13                	je     401b00 <__dyn_tls_init+0x30>
  401aed:	83 fa 01             	cmp    $0x1,%edx
  401af0:	74 4e                	je     401b40 <__dyn_tls_init+0x70>
  401af2:	b8 01 00 00 00       	mov    $0x1,%eax
  401af7:	48 83 c4 28          	add    $0x28,%rsp
  401afb:	5b                   	pop    %rbx
  401afc:	5e                   	pop    %rsi
  401afd:	c3                   	retq   
  401afe:	66 90                	xchg   %ax,%ax
  401b00:	48 8d 1d 59 75 00 00 	lea    0x7559(%rip),%rbx        # 409060 <__xd_z>
  401b07:	48 8d 35 52 75 00 00 	lea    0x7552(%rip),%rsi        # 409060 <__xd_z>
  401b0e:	48 39 de             	cmp    %rbx,%rsi
  401b11:	74 df                	je     401af2 <__dyn_tls_init+0x22>
  401b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401b18:	48 8b 03             	mov    (%rbx),%rax
  401b1b:	48 85 c0             	test   %rax,%rax
  401b1e:	74 02                	je     401b22 <__dyn_tls_init+0x52>
  401b20:	ff d0                	callq  *%rax
  401b22:	48 83 c3 08          	add    $0x8,%rbx
  401b26:	48 39 de             	cmp    %rbx,%rsi
  401b29:	75 ed                	jne    401b18 <__dyn_tls_init+0x48>
  401b2b:	b8 01 00 00 00       	mov    $0x1,%eax
  401b30:	48 83 c4 28          	add    $0x28,%rsp
  401b34:	5b                   	pop    %rbx
  401b35:	5e                   	pop    %rsi
  401b36:	c3                   	retq   
  401b37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401b3e:	00 00 
  401b40:	e8 4b 09 00 00       	callq  402490 <__mingw_TLScallback>
  401b45:	b8 01 00 00 00       	mov    $0x1,%eax
  401b4a:	48 83 c4 28          	add    $0x28,%rsp
  401b4e:	5b                   	pop    %rbx
  401b4f:	5e                   	pop    %rsi
  401b50:	c3                   	retq   
  401b51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401b58:	00 00 00 00 
  401b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b60 <__tlregdtor>:
  401b60:	31 c0                	xor    %eax,%eax
  401b62:	c3                   	retq   
  401b63:	90                   	nop
  401b64:	90                   	nop
  401b65:	90                   	nop
  401b66:	90                   	nop
  401b67:	90                   	nop
  401b68:	90                   	nop
  401b69:	90                   	nop
  401b6a:	90                   	nop
  401b6b:	90                   	nop
  401b6c:	90                   	nop
  401b6d:	90                   	nop
  401b6e:	90                   	nop
  401b6f:	90                   	nop

0000000000401b70 <_matherr>:
  401b70:	56                   	push   %rsi
  401b71:	53                   	push   %rbx
  401b72:	48 83 ec 78          	sub    $0x78,%rsp
  401b76:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  401b7b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  401b80:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  401b86:	83 39 06             	cmpl   $0x6,(%rcx)
  401b89:	0f 87 cd 00 00 00    	ja     401c5c <_matherr+0xec>
  401b8f:	8b 01                	mov    (%rcx),%eax
  401b91:	48 8d 15 2c 26 00 00 	lea    0x262c(%rip),%rdx        # 4041c4 <.rdata+0x124>
  401b98:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401b9c:	48 01 d0             	add    %rdx,%rax
  401b9f:	ff e0                	jmpq   *%rax
  401ba1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ba8:	48 8d 1d c7 25 00 00 	lea    0x25c7(%rip),%rbx        # 404176 <.rdata+0xd6>
  401baf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  401bb5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  401bba:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  401bbf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  401bc3:	b9 02 00 00 00       	mov    $0x2,%ecx
  401bc8:	e8 83 0e 00 00       	callq  402a50 <__acrt_iob_func>
  401bcd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  401bd4:	49 89 d8             	mov    %rbx,%r8
  401bd7:	48 8d 15 ba 25 00 00 	lea    0x25ba(%rip),%rdx        # 404198 <.rdata+0xf8>
  401bde:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  401be4:	48 89 c1             	mov    %rax,%rcx
  401be7:	49 89 f1             	mov    %rsi,%r9
  401bea:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  401bf0:	e8 eb 0d 00 00       	callq  4029e0 <fprintf>
  401bf5:	90                   	nop
  401bf6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  401bfb:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  401c00:	31 c0                	xor    %eax,%eax
  401c02:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  401c08:	48 83 c4 78          	add    $0x78,%rsp
  401c0c:	5b                   	pop    %rbx
  401c0d:	5e                   	pop    %rsi
  401c0e:	c3                   	retq   
  401c0f:	90                   	nop
  401c10:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040b0 <.rdata+0x10>
  401c17:	eb 96                	jmp    401baf <_matherr+0x3f>
  401c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c20:	48 8d 1d c9 24 00 00 	lea    0x24c9(%rip),%rbx        # 4040f0 <.rdata+0x50>
  401c27:	eb 86                	jmp    401baf <_matherr+0x3f>
  401c29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c30:	48 8d 1d 99 24 00 00 	lea    0x2499(%rip),%rbx        # 4040d0 <.rdata+0x30>
  401c37:	e9 73 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c40:	48 8d 1d f9 24 00 00 	lea    0x24f9(%rip),%rbx        # 404140 <.rdata+0xa0>
  401c47:	e9 63 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c4c:	0f 1f 40 00          	nopl   0x0(%rax)
  401c50:	48 8d 1d c1 24 00 00 	lea    0x24c1(%rip),%rbx        # 404118 <.rdata+0x78>
  401c57:	e9 53 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c5c:	48 8d 1d 3d 24 00 00 	lea    0x243d(%rip),%rbx        # 4040a0 <.rdata>
  401c63:	e9 47 ff ff ff       	jmpq   401baf <_matherr+0x3f>
  401c68:	90                   	nop
  401c69:	90                   	nop
  401c6a:	90                   	nop
  401c6b:	90                   	nop
  401c6c:	90                   	nop
  401c6d:	90                   	nop
  401c6e:	90                   	nop
  401c6f:	90                   	nop

0000000000401c70 <_fpreset>:
  401c70:	db e3                	fninit 
  401c72:	c3                   	retq   
  401c73:	90                   	nop
  401c74:	90                   	nop
  401c75:	90                   	nop
  401c76:	90                   	nop
  401c77:	90                   	nop
  401c78:	90                   	nop
  401c79:	90                   	nop
  401c7a:	90                   	nop
  401c7b:	90                   	nop
  401c7c:	90                   	nop
  401c7d:	90                   	nop
  401c7e:	90                   	nop
  401c7f:	90                   	nop

0000000000401c80 <__report_error>:
  401c80:	41 54                	push   %r12
  401c82:	53                   	push   %rbx
  401c83:	48 83 ec 38          	sub    $0x38,%rsp
  401c87:	49 89 cc             	mov    %rcx,%r12
  401c8a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  401c8f:	b9 02 00 00 00       	mov    $0x2,%ecx
  401c94:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  401c99:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  401c9e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  401ca3:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  401ca8:	e8 a3 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cad:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  401cb3:	ba 01 00 00 00       	mov    $0x1,%edx
  401cb8:	48 8d 0d 21 25 00 00 	lea    0x2521(%rip),%rcx        # 4041e0 <.rdata>
  401cbf:	49 89 c1             	mov    %rax,%r9
  401cc2:	e8 09 0d 00 00       	callq  4029d0 <fwrite>
  401cc7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
  401ccc:	b9 02 00 00 00       	mov    $0x2,%ecx
  401cd1:	e8 7a 0d 00 00       	callq  402a50 <__acrt_iob_func>
  401cd6:	4c 89 e2             	mov    %r12,%rdx
  401cd9:	48 89 c1             	mov    %rax,%rcx
  401cdc:	49 89 d8             	mov    %rbx,%r8
  401cdf:	e8 bc 0c 00 00       	callq  4029a0 <vfprintf>
  401ce4:	e8 0f 0d 00 00       	callq  4029f8 <abort>
  401ce9:	90                   	nop
  401cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401cf0 <mark_section_writable>:
  401cf0:	41 54                	push   %r12
  401cf2:	56                   	push   %rsi
  401cf3:	53                   	push   %rbx
  401cf4:	48 83 ec 50          	sub    $0x50,%rsp
  401cf8:	48 63 1d c5 53 00 00 	movslq 0x53c5(%rip),%rbx        # 4070c4 <maxSections>
  401cff:	49 89 cc             	mov    %rcx,%r12
  401d02:	85 db                	test   %ebx,%ebx
  401d04:	0f 8e 16 01 00 00    	jle    401e20 <mark_section_writable+0x130>
  401d0a:	48 8b 05 b7 53 00 00 	mov    0x53b7(%rip),%rax        # 4070c8 <the_secs>
  401d11:	31 c9                	xor    %ecx,%ecx
  401d13:	48 83 c0 18          	add    $0x18,%rax
  401d17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401d1e:	00 00 
  401d20:	48 8b 10             	mov    (%rax),%rdx
  401d23:	4c 39 e2             	cmp    %r12,%rdx
  401d26:	77 14                	ja     401d3c <mark_section_writable+0x4c>
  401d28:	4c 8b 40 08          	mov    0x8(%rax),%r8
  401d2c:	45 8b 40 08          	mov    0x8(%r8),%r8d
  401d30:	4c 01 c2             	add    %r8,%rdx
  401d33:	49 39 d4             	cmp    %rdx,%r12
  401d36:	0f 82 87 00 00 00    	jb     401dc3 <mark_section_writable+0xd3>
  401d3c:	83 c1 01             	add    $0x1,%ecx
  401d3f:	48 83 c0 28          	add    $0x28,%rax
  401d43:	39 d9                	cmp    %ebx,%ecx
  401d45:	75 d9                	jne    401d20 <mark_section_writable+0x30>
  401d47:	4c 89 e1             	mov    %r12,%rcx
  401d4a:	e8 51 09 00 00       	callq  4026a0 <__mingw_GetSectionForAddress>
  401d4f:	48 89 c6             	mov    %rax,%rsi
  401d52:	48 85 c0             	test   %rax,%rax
  401d55:	0f 84 e7 00 00 00    	je     401e42 <mark_section_writable+0x152>
  401d5b:	48 8b 05 66 53 00 00 	mov    0x5366(%rip),%rax        # 4070c8 <the_secs>
  401d62:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
  401d66:	48 c1 e3 03          	shl    $0x3,%rbx
  401d6a:	48 01 d8             	add    %rbx,%rax
  401d6d:	48 89 70 20          	mov    %rsi,0x20(%rax)
  401d71:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  401d77:	e8 54 0a 00 00       	callq  4027d0 <_GetPEImageBase>
  401d7c:	8b 4e 0c             	mov    0xc(%rsi),%ecx
  401d7f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401d84:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  401d8a:	48 01 c1             	add    %rax,%rcx
  401d8d:	48 8b 05 34 53 00 00 	mov    0x5334(%rip),%rax        # 4070c8 <the_secs>
  401d94:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
  401d99:	ff 15 81 64 00 00    	callq  *0x6481(%rip)        # 408220 <__imp_VirtualQuery>
  401d9f:	48 85 c0             	test   %rax,%rax
  401da2:	0f 84 7f 00 00 00    	je     401e27 <mark_section_writable+0x137>
  401da8:	8b 44 24 44          	mov    0x44(%rsp),%eax
  401dac:	8d 50 c0             	lea    -0x40(%rax),%edx
  401daf:	83 e2 bf             	and    $0xffffffbf,%edx
  401db2:	74 08                	je     401dbc <mark_section_writable+0xcc>
  401db4:	8d 50 fc             	lea    -0x4(%rax),%edx
  401db7:	83 e2 fb             	and    $0xfffffffb,%edx
  401dba:	75 14                	jne    401dd0 <mark_section_writable+0xe0>
  401dbc:	83 05 01 53 00 00 01 	addl   $0x1,0x5301(%rip)        # 4070c4 <maxSections>
  401dc3:	48 83 c4 50          	add    $0x50,%rsp
  401dc7:	5b                   	pop    %rbx
  401dc8:	5e                   	pop    %rsi
  401dc9:	41 5c                	pop    %r12
  401dcb:	c3                   	retq   
  401dcc:	0f 1f 40 00          	nopl   0x0(%rax)
  401dd0:	83 f8 02             	cmp    $0x2,%eax
  401dd3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  401dd8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  401ddd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  401de3:	b8 40 00 00 00       	mov    $0x40,%eax
  401de8:	44 0f 45 c0          	cmovne %eax,%r8d
  401dec:	48 03 1d d5 52 00 00 	add    0x52d5(%rip),%rbx        # 4070c8 <the_secs>
  401df3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
  401df7:	49 89 d9             	mov    %rbx,%r9
  401dfa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
  401dfe:	ff 15 14 64 00 00    	callq  *0x6414(%rip)        # 408218 <__imp_VirtualProtect>
  401e04:	85 c0                	test   %eax,%eax
  401e06:	75 b4                	jne    401dbc <mark_section_writable+0xcc>
  401e08:	ff 15 d2 63 00 00    	callq  *0x63d2(%rip)        # 4081e0 <__imp_GetLastError>
  401e0e:	48 8d 0d 43 24 00 00 	lea    0x2443(%rip),%rcx        # 404258 <.rdata+0x78>
  401e15:	89 c2                	mov    %eax,%edx
  401e17:	e8 64 fe ff ff       	callq  401c80 <__report_error>
  401e1c:	0f 1f 40 00          	nopl   0x0(%rax)
  401e20:	31 db                	xor    %ebx,%ebx
  401e22:	e9 20 ff ff ff       	jmpq   401d47 <mark_section_writable+0x57>
  401e27:	48 8b 05 9a 52 00 00 	mov    0x529a(%rip),%rax        # 4070c8 <the_secs>
  401e2e:	8b 56 08             	mov    0x8(%rsi),%edx
  401e31:	48 8d 0d e8 23 00 00 	lea    0x23e8(%rip),%rcx        # 404220 <.rdata+0x40>
  401e38:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
  401e3d:	e8 3e fe ff ff       	callq  401c80 <__report_error>
  401e42:	4c 89 e2             	mov    %r12,%rdx
  401e45:	48 8d 0d b4 23 00 00 	lea    0x23b4(%rip),%rcx        # 404200 <.rdata+0x20>
  401e4c:	e8 2f fe ff ff       	callq  401c80 <__report_error>
  401e51:	90                   	nop
  401e52:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401e59:	00 00 00 00 
  401e5d:	0f 1f 00             	nopl   (%rax)

0000000000401e60 <_pei386_runtime_relocator>:
  401e60:	55                   	push   %rbp
  401e61:	41 57                	push   %r15
  401e63:	41 56                	push   %r14
  401e65:	41 55                	push   %r13
  401e67:	41 54                	push   %r12
  401e69:	57                   	push   %rdi
  401e6a:	56                   	push   %rsi
  401e6b:	53                   	push   %rbx
  401e6c:	48 83 ec 38          	sub    $0x38,%rsp
  401e70:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401e77:	00 
  401e78:	8b 3d 42 52 00 00    	mov    0x5242(%rip),%edi        # 4070c0 <was_init.0>
  401e7e:	85 ff                	test   %edi,%edi
  401e80:	74 16                	je     401e98 <_pei386_runtime_relocator+0x38>
  401e82:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  401e86:	5b                   	pop    %rbx
  401e87:	5e                   	pop    %rsi
  401e88:	5f                   	pop    %rdi
  401e89:	41 5c                	pop    %r12
  401e8b:	41 5d                	pop    %r13
  401e8d:	41 5e                	pop    %r14
  401e8f:	41 5f                	pop    %r15
  401e91:	5d                   	pop    %rbp
  401e92:	c3                   	retq   
  401e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401e98:	c7 05 1e 52 00 00 01 	movl   $0x1,0x521e(%rip)        # 4070c0 <was_init.0>
  401e9f:	00 00 00 
  401ea2:	e8 79 08 00 00       	callq  402720 <__mingw_GetSectionCount>
  401ea7:	48 98                	cltq   
  401ea9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401ead:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
  401eb4:	00 
  401eb5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401eb9:	e8 a2 0a 00 00       	callq  402960 <___chkstk_ms>
  401ebe:	4c 8b 25 bb 24 00 00 	mov    0x24bb(%rip),%r12        # 404380 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  401ec5:	48 8b 1d c4 24 00 00 	mov    0x24c4(%rip),%rbx        # 404390 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  401ecc:	c7 05 ee 51 00 00 00 	movl   $0x0,0x51ee(%rip)        # 4070c4 <maxSections>
  401ed3:	00 00 00 
  401ed6:	48 29 c4             	sub    %rax,%rsp
  401ed9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  401ede:	48 89 05 e3 51 00 00 	mov    %rax,0x51e3(%rip)        # 4070c8 <the_secs>
  401ee5:	4c 89 e0             	mov    %r12,%rax
  401ee8:	48 29 d8             	sub    %rbx,%rax
  401eeb:	48 83 f8 07          	cmp    $0x7,%rax
  401eef:	7e 91                	jle    401e82 <_pei386_runtime_relocator+0x22>
  401ef1:	8b 13                	mov    (%rbx),%edx
  401ef3:	48 83 f8 0b          	cmp    $0xb,%rax
  401ef7:	0f 8f 2b 01 00 00    	jg     402028 <_pei386_runtime_relocator+0x1c8>
  401efd:	85 d2                	test   %edx,%edx
  401eff:	0f 85 9b 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f05:	8b 43 04             	mov    0x4(%rbx),%eax
  401f08:	85 c0                	test   %eax,%eax
  401f0a:	0f 85 90 01 00 00    	jne    4020a0 <_pei386_runtime_relocator+0x240>
  401f10:	8b 53 08             	mov    0x8(%rbx),%edx
  401f13:	83 fa 01             	cmp    $0x1,%edx
  401f16:	0f 85 c5 01 00 00    	jne    4020e1 <_pei386_runtime_relocator+0x281>
  401f1c:	48 83 c3 0c          	add    $0xc,%rbx
  401f20:	4c 39 e3             	cmp    %r12,%rbx
  401f23:	0f 83 59 ff ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  401f29:	4c 8b 2d 80 24 00 00 	mov    0x2480(%rip),%r13        # 4043b0 <.refptr.__image_base__>
  401f30:	49 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%r14
  401f37:	ff ff ff 
  401f3a:	eb 31                	jmp    401f6d <_pei386_runtime_relocator+0x10d>
  401f3c:	0f 1f 40 00          	nopl   0x0(%rax)
  401f40:	0f b6 16             	movzbl (%rsi),%edx
  401f43:	48 89 f1             	mov    %rsi,%rcx
  401f46:	49 89 d0             	mov    %rdx,%r8
  401f49:	49 81 c8 00 ff ff ff 	or     $0xffffffffffffff00,%r8
  401f50:	84 d2                	test   %dl,%dl
  401f52:	49 0f 48 d0          	cmovs  %r8,%rdx
  401f56:	48 29 c2             	sub    %rax,%rdx
  401f59:	49 01 d7             	add    %rdx,%r15
  401f5c:	e8 8f fd ff ff       	callq  401cf0 <mark_section_writable>
  401f61:	44 88 3e             	mov    %r15b,(%rsi)
  401f64:	48 83 c3 0c          	add    $0xc,%rbx
  401f68:	4c 39 e3             	cmp    %r12,%rbx
  401f6b:	73 63                	jae    401fd0 <_pei386_runtime_relocator+0x170>
  401f6d:	8b 03                	mov    (%rbx),%eax
  401f6f:	8b 73 04             	mov    0x4(%rbx),%esi
  401f72:	0f b6 53 08          	movzbl 0x8(%rbx),%edx
  401f76:	4c 01 e8             	add    %r13,%rax
  401f79:	4c 01 ee             	add    %r13,%rsi
  401f7c:	4c 8b 38             	mov    (%rax),%r15
  401f7f:	83 fa 20             	cmp    $0x20,%edx
  401f82:	0f 84 f0 00 00 00    	je     402078 <_pei386_runtime_relocator+0x218>
  401f88:	0f 87 c2 00 00 00    	ja     402050 <_pei386_runtime_relocator+0x1f0>
  401f8e:	83 fa 08             	cmp    $0x8,%edx
  401f91:	74 ad                	je     401f40 <_pei386_runtime_relocator+0xe0>
  401f93:	83 fa 10             	cmp    $0x10,%edx
  401f96:	0f 85 39 01 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  401f9c:	0f b7 16             	movzwl (%rsi),%edx
  401f9f:	48 89 f1             	mov    %rsi,%rcx
  401fa2:	49 89 d0             	mov    %rdx,%r8
  401fa5:	49 81 c8 00 00 ff ff 	or     $0xffffffffffff0000,%r8
  401fac:	66 85 d2             	test   %dx,%dx
  401faf:	49 0f 48 d0          	cmovs  %r8,%rdx
  401fb3:	48 83 c3 0c          	add    $0xc,%rbx
  401fb7:	48 29 c2             	sub    %rax,%rdx
  401fba:	49 01 d7             	add    %rdx,%r15
  401fbd:	e8 2e fd ff ff       	callq  401cf0 <mark_section_writable>
  401fc2:	66 44 89 3e          	mov    %r15w,(%rsi)
  401fc6:	4c 39 e3             	cmp    %r12,%rbx
  401fc9:	72 a2                	jb     401f6d <_pei386_runtime_relocator+0x10d>
  401fcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401fd0:	8b 05 ee 50 00 00    	mov    0x50ee(%rip),%eax        # 4070c4 <maxSections>
  401fd6:	85 c0                	test   %eax,%eax
  401fd8:	0f 8e a4 fe ff ff    	jle    401e82 <_pei386_runtime_relocator+0x22>
  401fde:	48 8b 35 33 62 00 00 	mov    0x6233(%rip),%rsi        # 408218 <__imp_VirtualProtect>
  401fe5:	31 db                	xor    %ebx,%ebx
  401fe7:	4c 8d 65 ac          	lea    -0x54(%rbp),%r12
  401feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ff0:	48 8b 05 d1 50 00 00 	mov    0x50d1(%rip),%rax        # 4070c8 <the_secs>
  401ff7:	48 01 d8             	add    %rbx,%rax
  401ffa:	44 8b 00             	mov    (%rax),%r8d
  401ffd:	45 85 c0             	test   %r8d,%r8d
  402000:	74 0d                	je     40200f <_pei386_runtime_relocator+0x1af>
  402002:	48 8b 50 10          	mov    0x10(%rax),%rdx
  402006:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40200a:	4d 89 e1             	mov    %r12,%r9
  40200d:	ff d6                	callq  *%rsi
  40200f:	83 c7 01             	add    $0x1,%edi
  402012:	48 83 c3 28          	add    $0x28,%rbx
  402016:	3b 3d a8 50 00 00    	cmp    0x50a8(%rip),%edi        # 4070c4 <maxSections>
  40201c:	7c d2                	jl     401ff0 <_pei386_runtime_relocator+0x190>
  40201e:	e9 5f fe ff ff       	jmpq   401e82 <_pei386_runtime_relocator+0x22>
  402023:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402028:	85 d2                	test   %edx,%edx
  40202a:	75 74                	jne    4020a0 <_pei386_runtime_relocator+0x240>
  40202c:	8b 43 04             	mov    0x4(%rbx),%eax
  40202f:	89 c1                	mov    %eax,%ecx
  402031:	0b 4b 08             	or     0x8(%rbx),%ecx
  402034:	0f 85 ce fe ff ff    	jne    401f08 <_pei386_runtime_relocator+0xa8>
  40203a:	8b 53 0c             	mov    0xc(%rbx),%edx
  40203d:	48 83 c3 0c          	add    $0xc,%rbx
  402041:	e9 b7 fe ff ff       	jmpq   401efd <_pei386_runtime_relocator+0x9d>
  402046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40204d:	00 00 00 
  402050:	83 fa 40             	cmp    $0x40,%edx
  402053:	0f 85 7c 00 00 00    	jne    4020d5 <_pei386_runtime_relocator+0x275>
  402059:	48 8b 16             	mov    (%rsi),%rdx
  40205c:	48 89 f1             	mov    %rsi,%rcx
  40205f:	48 29 c2             	sub    %rax,%rdx
  402062:	49 01 d7             	add    %rdx,%r15
  402065:	e8 86 fc ff ff       	callq  401cf0 <mark_section_writable>
  40206a:	4c 89 3e             	mov    %r15,(%rsi)
  40206d:	e9 f2 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  402072:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402078:	8b 16                	mov    (%rsi),%edx
  40207a:	48 89 d1             	mov    %rdx,%rcx
  40207d:	4c 09 f2             	or     %r14,%rdx
  402080:	85 c9                	test   %ecx,%ecx
  402082:	48 0f 49 d1          	cmovns %rcx,%rdx
  402086:	48 89 f1             	mov    %rsi,%rcx
  402089:	48 29 c2             	sub    %rax,%rdx
  40208c:	49 01 d7             	add    %rdx,%r15
  40208f:	e8 5c fc ff ff       	callq  401cf0 <mark_section_writable>
  402094:	44 89 3e             	mov    %r15d,(%rsi)
  402097:	e9 c8 fe ff ff       	jmpq   401f64 <_pei386_runtime_relocator+0x104>
  40209c:	0f 1f 40 00          	nopl   0x0(%rax)
  4020a0:	4c 39 e3             	cmp    %r12,%rbx
  4020a3:	0f 83 d9 fd ff ff    	jae    401e82 <_pei386_runtime_relocator+0x22>
  4020a9:	4c 8b 35 00 23 00 00 	mov    0x2300(%rip),%r14        # 4043b0 <.refptr.__image_base__>
  4020b0:	8b 73 04             	mov    0x4(%rbx),%esi
  4020b3:	44 8b 2b             	mov    (%rbx),%r13d
  4020b6:	48 83 c3 08          	add    $0x8,%rbx
  4020ba:	4c 01 f6             	add    %r14,%rsi
  4020bd:	44 03 2e             	add    (%rsi),%r13d
  4020c0:	48 89 f1             	mov    %rsi,%rcx
  4020c3:	e8 28 fc ff ff       	callq  401cf0 <mark_section_writable>
  4020c8:	44 89 2e             	mov    %r13d,(%rsi)
  4020cb:	4c 39 e3             	cmp    %r12,%rbx
  4020ce:	72 e0                	jb     4020b0 <_pei386_runtime_relocator+0x250>
  4020d0:	e9 fb fe ff ff       	jmpq   401fd0 <_pei386_runtime_relocator+0x170>
  4020d5:	48 8d 0d dc 21 00 00 	lea    0x21dc(%rip),%rcx        # 4042b8 <.rdata+0xd8>
  4020dc:	e8 9f fb ff ff       	callq  401c80 <__report_error>
  4020e1:	48 8d 0d 98 21 00 00 	lea    0x2198(%rip),%rcx        # 404280 <.rdata+0xa0>
  4020e8:	e8 93 fb ff ff       	callq  401c80 <__report_error>
  4020ed:	90                   	nop
  4020ee:	90                   	nop
  4020ef:	90                   	nop

00000000004020f0 <__mingw_raise_matherr>:
  4020f0:	48 83 ec 58          	sub    $0x58,%rsp
  4020f4:	48 8b 05 d5 4f 00 00 	mov    0x4fd5(%rip),%rax        # 4070d0 <stUserMathErr>
  4020fb:	48 85 c0             	test   %rax,%rax
  4020fe:	74 2c                	je     40212c <__mingw_raise_matherr+0x3c>
  402100:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  402107:	00 00 
  402109:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40210d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402112:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  402117:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40211d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  402123:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  402129:	ff d0                	callq  *%rax
  40212b:	90                   	nop
  40212c:	48 83 c4 58          	add    $0x58,%rsp
  402130:	c3                   	retq   
  402131:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402138:	00 00 00 00 
  40213c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402140 <__mingw_setusermatherr>:
  402140:	48 89 0d 89 4f 00 00 	mov    %rcx,0x4f89(%rip)        # 4070d0 <stUserMathErr>
  402147:	e9 d4 08 00 00       	jmpq   402a20 <__setusermatherr>
  40214c:	90                   	nop
  40214d:	90                   	nop
  40214e:	90                   	nop
  40214f:	90                   	nop

0000000000402150 <_gnu_exception_handler>:
  402150:	41 54                	push   %r12
  402152:	48 83 ec 20          	sub    $0x20,%rsp
  402156:	48 8b 11             	mov    (%rcx),%rdx
  402159:	8b 02                	mov    (%rdx),%eax
  40215b:	49 89 cc             	mov    %rcx,%r12
  40215e:	89 c1                	mov    %eax,%ecx
  402160:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  402166:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  40216c:	0f 84 be 00 00 00    	je     402230 <_gnu_exception_handler+0xe0>
  402172:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  402177:	0f 87 9a 00 00 00    	ja     402217 <_gnu_exception_handler+0xc7>
  40217d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
  402182:	76 44                	jbe    4021c8 <_gnu_exception_handler+0x78>
  402184:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
  402189:	83 f8 09             	cmp    $0x9,%eax
  40218c:	77 2a                	ja     4021b8 <_gnu_exception_handler+0x68>
  40218e:	48 8d 15 5b 21 00 00 	lea    0x215b(%rip),%rdx        # 4042f0 <.rdata>
  402195:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  402199:	48 01 d0             	add    %rdx,%rax
  40219c:	ff e0                	jmpq   *%rax
  40219e:	66 90                	xchg   %ax,%ax
  4021a0:	ba 01 00 00 00       	mov    $0x1,%edx
  4021a5:	b9 08 00 00 00       	mov    $0x8,%ecx
  4021aa:	e8 09 08 00 00       	callq  4029b8 <signal>
  4021af:	e8 bc fa ff ff       	callq  401c70 <_fpreset>
  4021b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021bd:	48 83 c4 20          	add    $0x20,%rsp
  4021c1:	41 5c                	pop    %r12
  4021c3:	c3                   	retq   
  4021c4:	0f 1f 40 00          	nopl   0x0(%rax)
  4021c8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  4021cd:	0f 84 dd 00 00 00    	je     4022b0 <_gnu_exception_handler+0x160>
  4021d3:	76 3b                	jbe    402210 <_gnu_exception_handler+0xc0>
  4021d5:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  4021da:	74 dc                	je     4021b8 <_gnu_exception_handler+0x68>
  4021dc:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  4021e1:	75 34                	jne    402217 <_gnu_exception_handler+0xc7>
  4021e3:	31 d2                	xor    %edx,%edx
  4021e5:	b9 04 00 00 00       	mov    $0x4,%ecx
  4021ea:	e8 c9 07 00 00       	callq  4029b8 <signal>
  4021ef:	48 83 f8 01          	cmp    $0x1,%rax
  4021f3:	0f 84 e3 00 00 00    	je     4022dc <_gnu_exception_handler+0x18c>
  4021f9:	48 85 c0             	test   %rax,%rax
  4021fc:	74 19                	je     402217 <_gnu_exception_handler+0xc7>
  4021fe:	b9 04 00 00 00       	mov    $0x4,%ecx
  402203:	ff d0                	callq  *%rax
  402205:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40220a:	eb b1                	jmp    4021bd <_gnu_exception_handler+0x6d>
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)
  402210:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  402215:	74 a1                	je     4021b8 <_gnu_exception_handler+0x68>
  402217:	48 8b 05 d2 4e 00 00 	mov    0x4ed2(%rip),%rax        # 4070f0 <__mingw_oldexcpt_handler>
  40221e:	48 85 c0             	test   %rax,%rax
  402221:	74 1d                	je     402240 <_gnu_exception_handler+0xf0>
  402223:	4c 89 e1             	mov    %r12,%rcx
  402226:	48 83 c4 20          	add    $0x20,%rsp
  40222a:	41 5c                	pop    %r12
  40222c:	48 ff e0             	rex.W jmpq *%rax
  40222f:	90                   	nop
  402230:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  402234:	0f 85 38 ff ff ff    	jne    402172 <_gnu_exception_handler+0x22>
  40223a:	e9 79 ff ff ff       	jmpq   4021b8 <_gnu_exception_handler+0x68>
  40223f:	90                   	nop
  402240:	31 c0                	xor    %eax,%eax
  402242:	48 83 c4 20          	add    $0x20,%rsp
  402246:	41 5c                	pop    %r12
  402248:	c3                   	retq   
  402249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402250:	31 d2                	xor    %edx,%edx
  402252:	b9 08 00 00 00       	mov    $0x8,%ecx
  402257:	e8 5c 07 00 00       	callq  4029b8 <signal>
  40225c:	48 83 f8 01          	cmp    $0x1,%rax
  402260:	0f 84 3a ff ff ff    	je     4021a0 <_gnu_exception_handler+0x50>
  402266:	48 85 c0             	test   %rax,%rax
  402269:	74 ac                	je     402217 <_gnu_exception_handler+0xc7>
  40226b:	b9 08 00 00 00       	mov    $0x8,%ecx
  402270:	ff d0                	callq  *%rax
  402272:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402277:	e9 41 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40227c:	0f 1f 40 00          	nopl   0x0(%rax)
  402280:	31 d2                	xor    %edx,%edx
  402282:	b9 08 00 00 00       	mov    $0x8,%ecx
  402287:	e8 2c 07 00 00       	callq  4029b8 <signal>
  40228c:	48 83 f8 01          	cmp    $0x1,%rax
  402290:	75 d4                	jne    402266 <_gnu_exception_handler+0x116>
  402292:	ba 01 00 00 00       	mov    $0x1,%edx
  402297:	b9 08 00 00 00       	mov    $0x8,%ecx
  40229c:	e8 17 07 00 00       	callq  4029b8 <signal>
  4022a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022a6:	e9 12 ff ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4022b0:	31 d2                	xor    %edx,%edx
  4022b2:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022b7:	e8 fc 06 00 00       	callq  4029b8 <signal>
  4022bc:	48 83 f8 01          	cmp    $0x1,%rax
  4022c0:	74 31                	je     4022f3 <_gnu_exception_handler+0x1a3>
  4022c2:	48 85 c0             	test   %rax,%rax
  4022c5:	0f 84 4c ff ff ff    	je     402217 <_gnu_exception_handler+0xc7>
  4022cb:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022d0:	ff d0                	callq  *%rax
  4022d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d7:	e9 e1 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022dc:	ba 01 00 00 00       	mov    $0x1,%edx
  4022e1:	b9 04 00 00 00       	mov    $0x4,%ecx
  4022e6:	e8 cd 06 00 00       	callq  4029b8 <signal>
  4022eb:	83 c8 ff             	or     $0xffffffff,%eax
  4022ee:	e9 ca fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  4022f3:	ba 01 00 00 00       	mov    $0x1,%edx
  4022f8:	b9 0b 00 00 00       	mov    $0xb,%ecx
  4022fd:	e8 b6 06 00 00       	callq  4029b8 <signal>
  402302:	83 c8 ff             	or     $0xffffffff,%eax
  402305:	e9 b3 fe ff ff       	jmpq   4021bd <_gnu_exception_handler+0x6d>
  40230a:	90                   	nop
  40230b:	90                   	nop
  40230c:	90                   	nop
  40230d:	90                   	nop
  40230e:	90                   	nop
  40230f:	90                   	nop

0000000000402310 <__mingwthr_run_key_dtors.part.0>:
  402310:	41 54                	push   %r12
  402312:	57                   	push   %rdi
  402313:	56                   	push   %rsi
  402314:	53                   	push   %rbx
  402315:	48 83 ec 28          	sub    $0x28,%rsp
  402319:	48 8d 0d 00 4e 00 00 	lea    0x4e00(%rip),%rcx        # 407120 <__mingwthr_cs>
  402320:	ff 15 b2 5e 00 00    	callq  *0x5eb2(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402326:	48 8b 1d d3 4d 00 00 	mov    0x4dd3(%rip),%rbx        # 407100 <key_dtor_list>
  40232d:	48 85 db             	test   %rbx,%rbx
  402330:	74 32                	je     402364 <__mingwthr_run_key_dtors.part.0+0x54>
  402332:	48 8b 3d d7 5e 00 00 	mov    0x5ed7(%rip),%rdi        # 408210 <__imp_TlsGetValue>
  402339:	48 8b 35 a0 5e 00 00 	mov    0x5ea0(%rip),%rsi        # 4081e0 <__imp_GetLastError>
  402340:	8b 0b                	mov    (%rbx),%ecx
  402342:	ff d7                	callq  *%rdi
  402344:	49 89 c4             	mov    %rax,%r12
  402347:	ff d6                	callq  *%rsi
  402349:	85 c0                	test   %eax,%eax
  40234b:	75 0e                	jne    40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  40234d:	4d 85 e4             	test   %r12,%r12
  402350:	74 09                	je     40235b <__mingwthr_run_key_dtors.part.0+0x4b>
  402352:	48 8b 43 08          	mov    0x8(%rbx),%rax
  402356:	4c 89 e1             	mov    %r12,%rcx
  402359:	ff d0                	callq  *%rax
  40235b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40235f:	48 85 db             	test   %rbx,%rbx
  402362:	75 dc                	jne    402340 <__mingwthr_run_key_dtors.part.0+0x30>
  402364:	48 8d 0d b5 4d 00 00 	lea    0x4db5(%rip),%rcx        # 407120 <__mingwthr_cs>
  40236b:	48 83 c4 28          	add    $0x28,%rsp
  40236f:	5b                   	pop    %rbx
  402370:	5e                   	pop    %rsi
  402371:	5f                   	pop    %rdi
  402372:	41 5c                	pop    %r12
  402374:	48 ff 25 7d 5e 00 00 	rex.W jmpq *0x5e7d(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  40237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402380 <___w64_mingwthr_add_key_dtor>:
  402380:	57                   	push   %rdi
  402381:	56                   	push   %rsi
  402382:	53                   	push   %rbx
  402383:	48 83 ec 20          	sub    $0x20,%rsp
  402387:	8b 05 7b 4d 00 00    	mov    0x4d7b(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40238d:	89 cf                	mov    %ecx,%edi
  40238f:	48 89 d6             	mov    %rdx,%rsi
  402392:	85 c0                	test   %eax,%eax
  402394:	75 0a                	jne    4023a0 <___w64_mingwthr_add_key_dtor+0x20>
  402396:	48 83 c4 20          	add    $0x20,%rsp
  40239a:	5b                   	pop    %rbx
  40239b:	5e                   	pop    %rsi
  40239c:	5f                   	pop    %rdi
  40239d:	c3                   	retq   
  40239e:	66 90                	xchg   %ax,%ax
  4023a0:	ba 18 00 00 00       	mov    $0x18,%edx
  4023a5:	b9 01 00 00 00       	mov    $0x1,%ecx
  4023aa:	e8 41 06 00 00       	callq  4029f0 <calloc>
  4023af:	48 89 c3             	mov    %rax,%rbx
  4023b2:	48 85 c0             	test   %rax,%rax
  4023b5:	74 3c                	je     4023f3 <___w64_mingwthr_add_key_dtor+0x73>
  4023b7:	89 38                	mov    %edi,(%rax)
  4023b9:	48 8d 0d 60 4d 00 00 	lea    0x4d60(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023c0:	48 89 70 08          	mov    %rsi,0x8(%rax)
  4023c4:	ff 15 0e 5e 00 00    	callq  *0x5e0e(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  4023ca:	48 8b 05 2f 4d 00 00 	mov    0x4d2f(%rip),%rax        # 407100 <key_dtor_list>
  4023d1:	48 8d 0d 48 4d 00 00 	lea    0x4d48(%rip),%rcx        # 407120 <__mingwthr_cs>
  4023d8:	48 89 1d 21 4d 00 00 	mov    %rbx,0x4d21(%rip)        # 407100 <key_dtor_list>
  4023df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023e3:	ff 15 0f 5e 00 00    	callq  *0x5e0f(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  4023e9:	31 c0                	xor    %eax,%eax
  4023eb:	48 83 c4 20          	add    $0x20,%rsp
  4023ef:	5b                   	pop    %rbx
  4023f0:	5e                   	pop    %rsi
  4023f1:	5f                   	pop    %rdi
  4023f2:	c3                   	retq   
  4023f3:	83 c8 ff             	or     $0xffffffff,%eax
  4023f6:	eb 9e                	jmp    402396 <___w64_mingwthr_add_key_dtor+0x16>
  4023f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023ff:	00 

0000000000402400 <___w64_mingwthr_remove_key_dtor>:
  402400:	53                   	push   %rbx
  402401:	48 83 ec 20          	sub    $0x20,%rsp
  402405:	8b 05 fd 4c 00 00    	mov    0x4cfd(%rip),%eax        # 407108 <__mingwthr_cs_init>
  40240b:	89 cb                	mov    %ecx,%ebx
  40240d:	85 c0                	test   %eax,%eax
  40240f:	75 0f                	jne    402420 <___w64_mingwthr_remove_key_dtor+0x20>
  402411:	31 c0                	xor    %eax,%eax
  402413:	48 83 c4 20          	add    $0x20,%rsp
  402417:	5b                   	pop    %rbx
  402418:	c3                   	retq   
  402419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402420:	48 8d 0d f9 4c 00 00 	lea    0x4cf9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402427:	ff 15 ab 5d 00 00    	callq  *0x5dab(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  40242d:	48 8b 0d cc 4c 00 00 	mov    0x4ccc(%rip),%rcx        # 407100 <key_dtor_list>
  402434:	48 85 c9             	test   %rcx,%rcx
  402437:	74 2a                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402439:	31 d2                	xor    %edx,%edx
  40243b:	eb 0e                	jmp    40244b <___w64_mingwthr_remove_key_dtor+0x4b>
  40243d:	0f 1f 00             	nopl   (%rax)
  402440:	48 89 ca             	mov    %rcx,%rdx
  402443:	48 85 c0             	test   %rax,%rax
  402446:	74 1b                	je     402463 <___w64_mingwthr_remove_key_dtor+0x63>
  402448:	48 89 c1             	mov    %rax,%rcx
  40244b:	8b 01                	mov    (%rcx),%eax
  40244d:	39 d8                	cmp    %ebx,%eax
  40244f:	48 8b 41 10          	mov    0x10(%rcx),%rax
  402453:	75 eb                	jne    402440 <___w64_mingwthr_remove_key_dtor+0x40>
  402455:	48 85 d2             	test   %rdx,%rdx
  402458:	74 26                	je     402480 <___w64_mingwthr_remove_key_dtor+0x80>
  40245a:	48 89 42 10          	mov    %rax,0x10(%rdx)
  40245e:	e8 75 05 00 00       	callq  4029d8 <free>
  402463:	48 8d 0d b6 4c 00 00 	lea    0x4cb6(%rip),%rcx        # 407120 <__mingwthr_cs>
  40246a:	ff 15 88 5d 00 00    	callq  *0x5d88(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402470:	31 c0                	xor    %eax,%eax
  402472:	48 83 c4 20          	add    $0x20,%rsp
  402476:	5b                   	pop    %rbx
  402477:	c3                   	retq   
  402478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40247f:	00 
  402480:	48 89 05 79 4c 00 00 	mov    %rax,0x4c79(%rip)        # 407100 <key_dtor_list>
  402487:	eb d5                	jmp    40245e <___w64_mingwthr_remove_key_dtor+0x5e>
  402489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402490 <__mingw_TLScallback>:
  402490:	53                   	push   %rbx
  402491:	48 83 ec 20          	sub    $0x20,%rsp
  402495:	83 fa 02             	cmp    $0x2,%edx
  402498:	74 46                	je     4024e0 <__mingw_TLScallback+0x50>
  40249a:	77 2c                	ja     4024c8 <__mingw_TLScallback+0x38>
  40249c:	85 d2                	test   %edx,%edx
  40249e:	74 50                	je     4024f0 <__mingw_TLScallback+0x60>
  4024a0:	8b 05 62 4c 00 00    	mov    0x4c62(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024a6:	85 c0                	test   %eax,%eax
  4024a8:	0f 84 b2 00 00 00    	je     402560 <__mingw_TLScallback+0xd0>
  4024ae:	c7 05 50 4c 00 00 01 	movl   $0x1,0x4c50(%rip)        # 407108 <__mingwthr_cs_init>
  4024b5:	00 00 00 
  4024b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4024bd:	48 83 c4 20          	add    $0x20,%rsp
  4024c1:	5b                   	pop    %rbx
  4024c2:	c3                   	retq   
  4024c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024c8:	83 fa 03             	cmp    $0x3,%edx
  4024cb:	75 eb                	jne    4024b8 <__mingw_TLScallback+0x28>
  4024cd:	8b 05 35 4c 00 00    	mov    0x4c35(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024d3:	85 c0                	test   %eax,%eax
  4024d5:	74 e1                	je     4024b8 <__mingw_TLScallback+0x28>
  4024d7:	e8 34 fe ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  4024dc:	eb da                	jmp    4024b8 <__mingw_TLScallback+0x28>
  4024de:	66 90                	xchg   %ax,%ax
  4024e0:	e8 8b f7 ff ff       	callq  401c70 <_fpreset>
  4024e5:	b8 01 00 00 00       	mov    $0x1,%eax
  4024ea:	48 83 c4 20          	add    $0x20,%rsp
  4024ee:	5b                   	pop    %rbx
  4024ef:	c3                   	retq   
  4024f0:	8b 05 12 4c 00 00    	mov    0x4c12(%rip),%eax        # 407108 <__mingwthr_cs_init>
  4024f6:	85 c0                	test   %eax,%eax
  4024f8:	75 56                	jne    402550 <__mingw_TLScallback+0xc0>
  4024fa:	8b 05 08 4c 00 00    	mov    0x4c08(%rip),%eax        # 407108 <__mingwthr_cs_init>
  402500:	83 f8 01             	cmp    $0x1,%eax
  402503:	75 b3                	jne    4024b8 <__mingw_TLScallback+0x28>
  402505:	48 8b 1d f4 4b 00 00 	mov    0x4bf4(%rip),%rbx        # 407100 <key_dtor_list>
  40250c:	48 85 db             	test   %rbx,%rbx
  40250f:	74 18                	je     402529 <__mingw_TLScallback+0x99>
  402511:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402518:	48 89 d9             	mov    %rbx,%rcx
  40251b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  40251f:	e8 b4 04 00 00       	callq  4029d8 <free>
  402524:	48 85 db             	test   %rbx,%rbx
  402527:	75 ef                	jne    402518 <__mingw_TLScallback+0x88>
  402529:	48 8d 0d f0 4b 00 00 	lea    0x4bf0(%rip),%rcx        # 407120 <__mingwthr_cs>
  402530:	48 c7 05 c5 4b 00 00 	movq   $0x0,0x4bc5(%rip)        # 407100 <key_dtor_list>
  402537:	00 00 00 00 
  40253b:	c7 05 c3 4b 00 00 00 	movl   $0x0,0x4bc3(%rip)        # 407108 <__mingwthr_cs_init>
  402542:	00 00 00 
  402545:	ff 15 85 5c 00 00    	callq  *0x5c85(%rip)        # 4081d0 <__IAT_start__>
  40254b:	e9 68 ff ff ff       	jmpq   4024b8 <__mingw_TLScallback+0x28>
  402550:	e8 bb fd ff ff       	callq  402310 <__mingwthr_run_key_dtors.part.0>
  402555:	eb a3                	jmp    4024fa <__mingw_TLScallback+0x6a>
  402557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40255e:	00 00 
  402560:	48 8d 0d b9 4b 00 00 	lea    0x4bb9(%rip),%rcx        # 407120 <__mingwthr_cs>
  402567:	ff 15 83 5c 00 00    	callq  *0x5c83(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  40256d:	e9 3c ff ff ff       	jmpq   4024ae <__mingw_TLScallback+0x1e>
  402572:	90                   	nop
  402573:	90                   	nop
  402574:	90                   	nop
  402575:	90                   	nop
  402576:	90                   	nop
  402577:	90                   	nop
  402578:	90                   	nop
  402579:	90                   	nop
  40257a:	90                   	nop
  40257b:	90                   	nop
  40257c:	90                   	nop
  40257d:	90                   	nop
  40257e:	90                   	nop
  40257f:	90                   	nop

0000000000402580 <_ValidateImageBase>:
  402580:	31 c0                	xor    %eax,%eax
  402582:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  402587:	75 0f                	jne    402598 <_ValidateImageBase+0x18>
  402589:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
  40258d:	48 01 d1             	add    %rdx,%rcx
  402590:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  402596:	74 08                	je     4025a0 <_ValidateImageBase+0x20>
  402598:	c3                   	retq   
  402599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4025a0:	31 c0                	xor    %eax,%eax
  4025a2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  4025a8:	0f 94 c0             	sete   %al
  4025ab:	c3                   	retq   
  4025ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004025b0 <_FindPESection>:
  4025b0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  4025b4:	49 89 d0             	mov    %rdx,%r8
  4025b7:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  4025bb:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  4025bf:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  4025c4:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  4025c8:	85 d2                	test   %edx,%edx
  4025ca:	74 30                	je     4025fc <_FindPESection+0x4c>
  4025cc:	83 ea 01             	sub    $0x1,%edx
  4025cf:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4025d3:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4025d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4025df:	00 
  4025e0:	8b 48 0c             	mov    0xc(%rax),%ecx
  4025e3:	48 89 ca             	mov    %rcx,%rdx
  4025e6:	4c 39 c1             	cmp    %r8,%rcx
  4025e9:	77 08                	ja     4025f3 <_FindPESection+0x43>
  4025eb:	03 50 08             	add    0x8(%rax),%edx
  4025ee:	4c 39 c2             	cmp    %r8,%rdx
  4025f1:	77 0b                	ja     4025fe <_FindPESection+0x4e>
  4025f3:	48 83 c0 28          	add    $0x28,%rax
  4025f7:	4c 39 c8             	cmp    %r9,%rax
  4025fa:	75 e4                	jne    4025e0 <_FindPESection+0x30>
  4025fc:	31 c0                	xor    %eax,%eax
  4025fe:	c3                   	retq   
  4025ff:	90                   	nop

0000000000402600 <_FindPESectionByName>:
  402600:	41 54                	push   %r12
  402602:	56                   	push   %rsi
  402603:	53                   	push   %rbx
  402604:	48 83 ec 20          	sub    $0x20,%rsp
  402608:	48 89 cb             	mov    %rcx,%rbx
  40260b:	e8 a0 03 00 00       	callq  4029b0 <strlen>
  402610:	48 83 f8 08          	cmp    $0x8,%rax
  402614:	77 7a                	ja     402690 <_FindPESectionByName+0x90>
  402616:	48 8b 15 93 1d 00 00 	mov    0x1d93(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  40261d:	45 31 e4             	xor    %r12d,%r12d
  402620:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  402625:	75 57                	jne    40267e <_FindPESectionByName+0x7e>
  402627:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  40262b:	48 01 d0             	add    %rdx,%rax
  40262e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  402634:	75 48                	jne    40267e <_FindPESectionByName+0x7e>
  402636:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40263c:	75 40                	jne    40267e <_FindPESectionByName+0x7e>
  40263e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
  402642:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
  402647:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  40264b:	85 c0                	test   %eax,%eax
  40264d:	74 41                	je     402690 <_FindPESectionByName+0x90>
  40264f:	83 e8 01             	sub    $0x1,%eax
  402652:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  402656:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
  40265b:	eb 0c                	jmp    402669 <_FindPESectionByName+0x69>
  40265d:	0f 1f 00             	nopl   (%rax)
  402660:	49 83 c4 28          	add    $0x28,%r12
  402664:	49 39 f4             	cmp    %rsi,%r12
  402667:	74 27                	je     402690 <_FindPESectionByName+0x90>
  402669:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  40266f:	48 89 da             	mov    %rbx,%rdx
  402672:	4c 89 e1             	mov    %r12,%rcx
  402675:	e8 2e 03 00 00       	callq  4029a8 <strncmp>
  40267a:	85 c0                	test   %eax,%eax
  40267c:	75 e2                	jne    402660 <_FindPESectionByName+0x60>
  40267e:	4c 89 e0             	mov    %r12,%rax
  402681:	48 83 c4 20          	add    $0x20,%rsp
  402685:	5b                   	pop    %rbx
  402686:	5e                   	pop    %rsi
  402687:	41 5c                	pop    %r12
  402689:	c3                   	retq   
  40268a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402690:	45 31 e4             	xor    %r12d,%r12d
  402693:	4c 89 e0             	mov    %r12,%rax
  402696:	48 83 c4 20          	add    $0x20,%rsp
  40269a:	5b                   	pop    %rbx
  40269b:	5e                   	pop    %rsi
  40269c:	41 5c                	pop    %r12
  40269e:	c3                   	retq   
  40269f:	90                   	nop

00000000004026a0 <__mingw_GetSectionForAddress>:
  4026a0:	48 8b 15 09 1d 00 00 	mov    0x1d09(%rip),%rdx        # 4043b0 <.refptr.__image_base__>
  4026a7:	31 c0                	xor    %eax,%eax
  4026a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4026ae:	75 10                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
  4026b4:	49 01 d0             	add    %rdx,%r8
  4026b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4026be:	74 08                	je     4026c8 <__mingw_GetSectionForAddress+0x28>
  4026c0:	c3                   	retq   
  4026c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4026c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4026cf:	75 ef                	jne    4026c0 <__mingw_GetSectionForAddress+0x20>
  4026d1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4026d6:	48 29 d1             	sub    %rdx,%rcx
  4026d9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4026de:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4026e3:	85 d2                	test   %edx,%edx
  4026e5:	74 2e                	je     402715 <__mingw_GetSectionForAddress+0x75>
  4026e7:	83 ea 01             	sub    $0x1,%edx
  4026ea:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4026ee:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  4026f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4026f8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  4026fc:	4c 89 c2             	mov    %r8,%rdx
  4026ff:	4c 39 c1             	cmp    %r8,%rcx
  402702:	72 08                	jb     40270c <__mingw_GetSectionForAddress+0x6c>
  402704:	03 50 08             	add    0x8(%rax),%edx
  402707:	48 39 d1             	cmp    %rdx,%rcx
  40270a:	72 b4                	jb     4026c0 <__mingw_GetSectionForAddress+0x20>
  40270c:	48 83 c0 28          	add    $0x28,%rax
  402710:	4c 39 c8             	cmp    %r9,%rax
  402713:	75 e3                	jne    4026f8 <__mingw_GetSectionForAddress+0x58>
  402715:	31 c0                	xor    %eax,%eax
  402717:	c3                   	retq   
  402718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40271f:	00 

0000000000402720 <__mingw_GetSectionCount>:
  402720:	48 8b 05 89 1c 00 00 	mov    0x1c89(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402727:	45 31 c0             	xor    %r8d,%r8d
  40272a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40272f:	75 0f                	jne    402740 <__mingw_GetSectionCount+0x20>
  402731:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402735:	48 01 d0             	add    %rdx,%rax
  402738:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  40273e:	74 08                	je     402748 <__mingw_GetSectionCount+0x28>
  402740:	44 89 c0             	mov    %r8d,%eax
  402743:	c3                   	retq   
  402744:	0f 1f 40 00          	nopl   0x0(%rax)
  402748:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
  40274e:	75 f0                	jne    402740 <__mingw_GetSectionCount+0x20>
  402750:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
  402755:	44 89 c0             	mov    %r8d,%eax
  402758:	c3                   	retq   
  402759:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402760 <_FindPESectionExec>:
  402760:	4c 8b 05 49 1c 00 00 	mov    0x1c49(%rip),%r8        # 4043b0 <.refptr.__image_base__>
  402767:	31 c0                	xor    %eax,%eax
  402769:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  40276f:	75 0f                	jne    402780 <_FindPESectionExec+0x20>
  402771:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
  402775:	4c 01 c2             	add    %r8,%rdx
  402778:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40277e:	74 08                	je     402788 <_FindPESectionExec+0x28>
  402780:	c3                   	retq   
  402781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402788:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40278e:	75 f0                	jne    402780 <_FindPESectionExec+0x20>
  402790:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402794:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  402799:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  40279d:	85 d2                	test   %edx,%edx
  40279f:	74 27                	je     4027c8 <_FindPESectionExec+0x68>
  4027a1:	83 ea 01             	sub    $0x1,%edx
  4027a4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  4027a8:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
  4027ad:	0f 1f 00             	nopl   (%rax)
  4027b0:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  4027b4:	74 09                	je     4027bf <_FindPESectionExec+0x5f>
  4027b6:	48 85 c9             	test   %rcx,%rcx
  4027b9:	74 c5                	je     402780 <_FindPESectionExec+0x20>
  4027bb:	48 83 e9 01          	sub    $0x1,%rcx
  4027bf:	48 83 c0 28          	add    $0x28,%rax
  4027c3:	48 39 d0             	cmp    %rdx,%rax
  4027c6:	75 e8                	jne    4027b0 <_FindPESectionExec+0x50>
  4027c8:	31 c0                	xor    %eax,%eax
  4027ca:	c3                   	retq   
  4027cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004027d0 <_GetPEImageBase>:
  4027d0:	48 8b 05 d9 1b 00 00 	mov    0x1bd9(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  4027d7:	45 31 c0             	xor    %r8d,%r8d
  4027da:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  4027df:	75 0f                	jne    4027f0 <_GetPEImageBase+0x20>
  4027e1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  4027e5:	48 01 c2             	add    %rax,%rdx
  4027e8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  4027ee:	74 08                	je     4027f8 <_GetPEImageBase+0x28>
  4027f0:	4c 89 c0             	mov    %r8,%rax
  4027f3:	c3                   	retq   
  4027f4:	0f 1f 40 00          	nopl   0x0(%rax)
  4027f8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  4027fe:	4c 0f 44 c0          	cmove  %rax,%r8
  402802:	4c 89 c0             	mov    %r8,%rax
  402805:	c3                   	retq   
  402806:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40280d:	00 00 00 

0000000000402810 <_IsNonwritableInCurrentImage>:
  402810:	48 8b 05 99 1b 00 00 	mov    0x1b99(%rip),%rax        # 4043b0 <.refptr.__image_base__>
  402817:	45 31 c0             	xor    %r8d,%r8d
  40281a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  40281f:	75 0f                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402821:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
  402825:	48 01 c2             	add    %rax,%rdx
  402828:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
  40282e:	74 08                	je     402838 <_IsNonwritableInCurrentImage+0x28>
  402830:	44 89 c0             	mov    %r8d,%eax
  402833:	c3                   	retq   
  402834:	0f 1f 40 00          	nopl   0x0(%rax)
  402838:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
  40283e:	75 f0                	jne    402830 <_IsNonwritableInCurrentImage+0x20>
  402840:	48 29 c1             	sub    %rax,%rcx
  402843:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
  402847:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
  40284c:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
  402850:	85 d2                	test   %edx,%edx
  402852:	74 dc                	je     402830 <_IsNonwritableInCurrentImage+0x20>
  402854:	83 ea 01             	sub    $0x1,%edx
  402857:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  40285b:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  402860:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  402864:	4c 89 c2             	mov    %r8,%rdx
  402867:	4c 39 c1             	cmp    %r8,%rcx
  40286a:	72 08                	jb     402874 <_IsNonwritableInCurrentImage+0x64>
  40286c:	03 50 08             	add    0x8(%rax),%edx
  40286f:	48 39 d1             	cmp    %rdx,%rcx
  402872:	72 14                	jb     402888 <_IsNonwritableInCurrentImage+0x78>
  402874:	48 83 c0 28          	add    $0x28,%rax
  402878:	49 39 c1             	cmp    %rax,%r9
  40287b:	75 e3                	jne    402860 <_IsNonwritableInCurrentImage+0x50>
  40287d:	45 31 c0             	xor    %r8d,%r8d
  402880:	44 89 c0             	mov    %r8d,%eax
  402883:	c3                   	retq   
  402884:	0f 1f 40 00          	nopl   0x0(%rax)
  402888:	44 8b 40 24          	mov    0x24(%rax),%r8d
  40288c:	41 f7 d0             	not    %r8d
  40288f:	41 c1 e8 1f          	shr    $0x1f,%r8d
  402893:	44 89 c0             	mov    %r8d,%eax
  402896:	c3                   	retq   
  402897:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40289e:	00 00 

00000000004028a0 <__mingw_enum_import_library_names>:
  4028a0:	4c 8b 1d 09 1b 00 00 	mov    0x1b09(%rip),%r11        # 4043b0 <.refptr.__image_base__>
  4028a7:	45 31 c9             	xor    %r9d,%r9d
  4028aa:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  4028b0:	75 10                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028b2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
  4028b6:	4d 01 d8             	add    %r11,%r8
  4028b9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
  4028c0:	74 0e                	je     4028d0 <__mingw_enum_import_library_names+0x30>
  4028c2:	4c 89 c8             	mov    %r9,%rax
  4028c5:	c3                   	retq   
  4028c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028cd:	00 00 00 
  4028d0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
  4028d7:	75 e9                	jne    4028c2 <__mingw_enum_import_library_names+0x22>
  4028d9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
  4028e0:	85 c0                	test   %eax,%eax
  4028e2:	74 de                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028e4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
  4028e9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
  4028ee:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
  4028f3:	45 85 c0             	test   %r8d,%r8d
  4028f6:	74 ca                	je     4028c2 <__mingw_enum_import_library_names+0x22>
  4028f8:	41 83 e8 01          	sub    $0x1,%r8d
  4028fc:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
  402900:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
  402905:	0f 1f 00             	nopl   (%rax)
  402908:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
  40290c:	4d 89 c8             	mov    %r9,%r8
  40290f:	4c 39 c8             	cmp    %r9,%rax
  402912:	72 09                	jb     40291d <__mingw_enum_import_library_names+0x7d>
  402914:	44 03 42 08          	add    0x8(%rdx),%r8d
  402918:	4c 39 c0             	cmp    %r8,%rax
  40291b:	72 13                	jb     402930 <__mingw_enum_import_library_names+0x90>
  40291d:	48 83 c2 28          	add    $0x28,%rdx
  402921:	49 39 d2             	cmp    %rdx,%r10
  402924:	75 e2                	jne    402908 <__mingw_enum_import_library_names+0x68>
  402926:	45 31 c9             	xor    %r9d,%r9d
  402929:	4c 89 c8             	mov    %r9,%rax
  40292c:	c3                   	retq   
  40292d:	0f 1f 00             	nopl   (%rax)
  402930:	4c 01 d8             	add    %r11,%rax
  402933:	eb 0a                	jmp    40293f <__mingw_enum_import_library_names+0x9f>
  402935:	0f 1f 00             	nopl   (%rax)
  402938:	83 e9 01             	sub    $0x1,%ecx
  40293b:	48 83 c0 14          	add    $0x14,%rax
  40293f:	44 8b 40 04          	mov    0x4(%rax),%r8d
  402943:	45 85 c0             	test   %r8d,%r8d
  402946:	75 07                	jne    40294f <__mingw_enum_import_library_names+0xaf>
  402948:	8b 50 0c             	mov    0xc(%rax),%edx
  40294b:	85 d2                	test   %edx,%edx
  40294d:	74 d7                	je     402926 <__mingw_enum_import_library_names+0x86>
  40294f:	85 c9                	test   %ecx,%ecx
  402951:	7f e5                	jg     402938 <__mingw_enum_import_library_names+0x98>
  402953:	44 8b 48 0c          	mov    0xc(%rax),%r9d
  402957:	4d 01 d9             	add    %r11,%r9
  40295a:	4c 89 c8             	mov    %r9,%rax
  40295d:	c3                   	retq   
  40295e:	90                   	nop
  40295f:	90                   	nop

0000000000402960 <___chkstk_ms>:
  402960:	51                   	push   %rcx
  402961:	50                   	push   %rax
  402962:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402968:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40296d:	72 19                	jb     402988 <___chkstk_ms+0x28>
  40296f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  402976:	48 83 09 00          	orq    $0x0,(%rcx)
  40297a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  402980:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  402986:	77 e7                	ja     40296f <___chkstk_ms+0xf>
  402988:	48 29 c1             	sub    %rax,%rcx
  40298b:	48 83 09 00          	orq    $0x0,(%rcx)
  40298f:	58                   	pop    %rax
  402990:	59                   	pop    %rcx
  402991:	c3                   	retq   
  402992:	90                   	nop
  402993:	90                   	nop
  402994:	90                   	nop
  402995:	90                   	nop
  402996:	90                   	nop
  402997:	90                   	nop
  402998:	90                   	nop
  402999:	90                   	nop
  40299a:	90                   	nop
  40299b:	90                   	nop
  40299c:	90                   	nop
  40299d:	90                   	nop
  40299e:	90                   	nop
  40299f:	90                   	nop

00000000004029a0 <vfprintf>:
  4029a0:	ff 25 52 59 00 00    	jmpq   *0x5952(%rip)        # 4082f8 <__imp_vfprintf>
  4029a6:	90                   	nop
  4029a7:	90                   	nop

00000000004029a8 <strncmp>:
  4029a8:	ff 25 42 59 00 00    	jmpq   *0x5942(%rip)        # 4082f0 <__imp_strncmp>
  4029ae:	90                   	nop
  4029af:	90                   	nop

00000000004029b0 <strlen>:
  4029b0:	ff 25 32 59 00 00    	jmpq   *0x5932(%rip)        # 4082e8 <__imp_strlen>
  4029b6:	90                   	nop
  4029b7:	90                   	nop

00000000004029b8 <signal>:
  4029b8:	ff 25 22 59 00 00    	jmpq   *0x5922(%rip)        # 4082e0 <__imp_signal>
  4029be:	90                   	nop
  4029bf:	90                   	nop

00000000004029c0 <memcpy>:
  4029c0:	ff 25 12 59 00 00    	jmpq   *0x5912(%rip)        # 4082d8 <__imp_memcpy>
  4029c6:	90                   	nop
  4029c7:	90                   	nop

00000000004029c8 <malloc>:
  4029c8:	ff 25 02 59 00 00    	jmpq   *0x5902(%rip)        # 4082d0 <__imp_malloc>
  4029ce:	90                   	nop
  4029cf:	90                   	nop

00000000004029d0 <fwrite>:
  4029d0:	ff 25 f2 58 00 00    	jmpq   *0x58f2(%rip)        # 4082c8 <__imp_fwrite>
  4029d6:	90                   	nop
  4029d7:	90                   	nop

00000000004029d8 <free>:
  4029d8:	ff 25 e2 58 00 00    	jmpq   *0x58e2(%rip)        # 4082c0 <__imp_free>
  4029de:	90                   	nop
  4029df:	90                   	nop

00000000004029e0 <fprintf>:
  4029e0:	ff 25 d2 58 00 00    	jmpq   *0x58d2(%rip)        # 4082b8 <__imp_fprintf>
  4029e6:	90                   	nop
  4029e7:	90                   	nop

00000000004029e8 <exit>:
  4029e8:	ff 25 c2 58 00 00    	jmpq   *0x58c2(%rip)        # 4082b0 <__imp_exit>
  4029ee:	90                   	nop
  4029ef:	90                   	nop

00000000004029f0 <calloc>:
  4029f0:	ff 25 b2 58 00 00    	jmpq   *0x58b2(%rip)        # 4082a8 <__imp_calloc>
  4029f6:	90                   	nop
  4029f7:	90                   	nop

00000000004029f8 <abort>:
  4029f8:	ff 25 a2 58 00 00    	jmpq   *0x58a2(%rip)        # 4082a0 <__imp_abort>
  4029fe:	90                   	nop
  4029ff:	90                   	nop

0000000000402a00 <_onexit>:
  402a00:	ff 25 92 58 00 00    	jmpq   *0x5892(%rip)        # 408298 <__imp__onexit>
  402a06:	90                   	nop
  402a07:	90                   	nop

0000000000402a08 <_initterm>:
  402a08:	ff 25 82 58 00 00    	jmpq   *0x5882(%rip)        # 408290 <__imp__initterm>
  402a0e:	90                   	nop
  402a0f:	90                   	nop

0000000000402a10 <_cexit>:
  402a10:	ff 25 62 58 00 00    	jmpq   *0x5862(%rip)        # 408278 <__imp__cexit>
  402a16:	90                   	nop
  402a17:	90                   	nop

0000000000402a18 <_amsg_exit>:
  402a18:	ff 25 52 58 00 00    	jmpq   *0x5852(%rip)        # 408270 <__imp__amsg_exit>
  402a1e:	90                   	nop
  402a1f:	90                   	nop

0000000000402a20 <__setusermatherr>:
  402a20:	ff 25 3a 58 00 00    	jmpq   *0x583a(%rip)        # 408260 <__imp___setusermatherr>
  402a26:	90                   	nop
  402a27:	90                   	nop

0000000000402a28 <__set_app_type>:
  402a28:	ff 25 2a 58 00 00    	jmpq   *0x582a(%rip)        # 408258 <__imp___set_app_type>
  402a2e:	90                   	nop
  402a2f:	90                   	nop

0000000000402a30 <__lconv_init>:
  402a30:	ff 25 1a 58 00 00    	jmpq   *0x581a(%rip)        # 408250 <__imp___lconv_init>
  402a36:	90                   	nop
  402a37:	90                   	nop

0000000000402a38 <__getmainargs>:
  402a38:	ff 25 fa 57 00 00    	jmpq   *0x57fa(%rip)        # 408238 <__imp___getmainargs>
  402a3e:	90                   	nop
  402a3f:	90                   	nop

0000000000402a40 <__C_specific_handler>:
  402a40:	ff 25 ea 57 00 00    	jmpq   *0x57ea(%rip)        # 408230 <__imp___C_specific_handler>
  402a46:	90                   	nop
  402a47:	90                   	nop
  402a48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a4f:	00 

0000000000402a50 <__acrt_iob_func>:
  402a50:	53                   	push   %rbx
  402a51:	48 83 ec 20          	sub    $0x20,%rsp
  402a55:	89 cb                	mov    %ecx,%ebx
  402a57:	e8 64 00 00 00       	callq  402ac0 <__iob_func>
  402a5c:	89 d9                	mov    %ebx,%ecx
  402a5e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  402a62:	48 c1 e2 04          	shl    $0x4,%rdx
  402a66:	48 01 d0             	add    %rdx,%rax
  402a69:	48 83 c4 20          	add    $0x20,%rsp
  402a6d:	5b                   	pop    %rbx
  402a6e:	c3                   	retq   
  402a6f:	90                   	nop

0000000000402a70 <_get_invalid_parameter_handler>:
  402a70:	48 8b 05 19 47 00 00 	mov    0x4719(%rip),%rax        # 407190 <handler>
  402a77:	c3                   	retq   
  402a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402a7f:	00 

0000000000402a80 <_set_invalid_parameter_handler>:
  402a80:	48 89 c8             	mov    %rcx,%rax
  402a83:	48 87 05 06 47 00 00 	xchg   %rax,0x4706(%rip)        # 407190 <handler>
  402a8a:	c3                   	retq   
  402a8b:	90                   	nop
  402a8c:	90                   	nop
  402a8d:	90                   	nop
  402a8e:	90                   	nop
  402a8f:	90                   	nop

0000000000402a90 <__p__acmdln>:
  402a90:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043d0 <.refptr.__imp__acmdln>
  402a97:	48 8b 00             	mov    (%rax),%rax
  402a9a:	c3                   	retq   
  402a9b:	90                   	nop
  402a9c:	90                   	nop
  402a9d:	90                   	nop
  402a9e:	90                   	nop
  402a9f:	90                   	nop

0000000000402aa0 <__p__commode>:
  402aa0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043e0 <.refptr.__imp__commode>
  402aa7:	48 8b 00             	mov    (%rax),%rax
  402aaa:	c3                   	retq   
  402aab:	90                   	nop
  402aac:	90                   	nop
  402aad:	90                   	nop
  402aae:	90                   	nop
  402aaf:	90                   	nop

0000000000402ab0 <__p__fmode>:
  402ab0:	48 8b 05 39 19 00 00 	mov    0x1939(%rip),%rax        # 4043f0 <.refptr.__imp__fmode>
  402ab7:	48 8b 00             	mov    (%rax),%rax
  402aba:	c3                   	retq   
  402abb:	90                   	nop
  402abc:	90                   	nop
  402abd:	90                   	nop
  402abe:	90                   	nop
  402abf:	90                   	nop

0000000000402ac0 <__iob_func>:
  402ac0:	ff 25 82 57 00 00    	jmpq   *0x5782(%rip)        # 408248 <__imp___iob_func>
  402ac6:	90                   	nop
  402ac7:	90                   	nop
  402ac8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402acf:	00 

0000000000402ad0 <VirtualQuery>:
  402ad0:	ff 25 4a 57 00 00    	jmpq   *0x574a(%rip)        # 408220 <__imp_VirtualQuery>
  402ad6:	90                   	nop
  402ad7:	90                   	nop

0000000000402ad8 <VirtualProtect>:
  402ad8:	ff 25 3a 57 00 00    	jmpq   *0x573a(%rip)        # 408218 <__imp_VirtualProtect>
  402ade:	90                   	nop
  402adf:	90                   	nop

0000000000402ae0 <TlsGetValue>:
  402ae0:	ff 25 2a 57 00 00    	jmpq   *0x572a(%rip)        # 408210 <__imp_TlsGetValue>
  402ae6:	90                   	nop
  402ae7:	90                   	nop

0000000000402ae8 <Sleep>:
  402ae8:	ff 25 1a 57 00 00    	jmpq   *0x571a(%rip)        # 408208 <__imp_Sleep>
  402aee:	90                   	nop
  402aef:	90                   	nop

0000000000402af0 <SetUnhandledExceptionFilter>:
  402af0:	ff 25 0a 57 00 00    	jmpq   *0x570a(%rip)        # 408200 <__imp_SetUnhandledExceptionFilter>
  402af6:	90                   	nop
  402af7:	90                   	nop

0000000000402af8 <LeaveCriticalSection>:
  402af8:	ff 25 fa 56 00 00    	jmpq   *0x56fa(%rip)        # 4081f8 <__imp_LeaveCriticalSection>
  402afe:	90                   	nop
  402aff:	90                   	nop

0000000000402b00 <InitializeCriticalSection>:
  402b00:	ff 25 ea 56 00 00    	jmpq   *0x56ea(%rip)        # 4081f0 <__imp_InitializeCriticalSection>
  402b06:	90                   	nop
  402b07:	90                   	nop

0000000000402b08 <GetStartupInfoA>:
  402b08:	ff 25 da 56 00 00    	jmpq   *0x56da(%rip)        # 4081e8 <__imp_GetStartupInfoA>
  402b0e:	90                   	nop
  402b0f:	90                   	nop

0000000000402b10 <GetLastError>:
  402b10:	ff 25 ca 56 00 00    	jmpq   *0x56ca(%rip)        # 4081e0 <__imp_GetLastError>
  402b16:	90                   	nop
  402b17:	90                   	nop

0000000000402b18 <EnterCriticalSection>:
  402b18:	ff 25 ba 56 00 00    	jmpq   *0x56ba(%rip)        # 4081d8 <__imp_EnterCriticalSection>
  402b1e:	90                   	nop
  402b1f:	90                   	nop

0000000000402b20 <DeleteCriticalSection>:
  402b20:	ff 25 aa 56 00 00    	jmpq   *0x56aa(%rip)        # 4081d0 <__IAT_start__>
  402b26:	90                   	nop
  402b27:	90                   	nop
  402b28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b2f:	00 

0000000000402b30 <register_frame_ctor>:
  402b30:	e9 eb e9 ff ff       	jmpq   401520 <__gcc_register_frame>
  402b35:	90                   	nop
  402b36:	90                   	nop
  402b37:	90                   	nop
  402b38:	90                   	nop
  402b39:	90                   	nop
  402b3a:	90                   	nop
  402b3b:	90                   	nop
  402b3c:	90                   	nop
  402b3d:	90                   	nop
  402b3e:	90                   	nop
  402b3f:	90                   	nop

0000000000402b40 <__CTOR_LIST__>:
  402b40:	ff                   	(bad)  
  402b41:	ff                   	(bad)  
  402b42:	ff                   	(bad)  
  402b43:	ff                   	(bad)  
  402b44:	ff                   	(bad)  
  402b45:	ff                   	(bad)  
  402b46:	ff                   	(bad)  
  402b47:	ff                   	.byte 0xff

0000000000402b48 <.ctors>:
  402b48:	4c 19 40 00          	sbb    %r8,0x0(%rax)
  402b4c:	00 00                	add    %al,(%rax)
	...

0000000000402b50 <.ctors.65535>:
  402b50:	30 2b                	xor    %ch,(%rbx)
  402b52:	40 00 00             	add    %al,(%rax)
	...

0000000000402b60 <__DTOR_LIST__>:
  402b60:	ff                   	(bad)  
  402b61:	ff                   	(bad)  
  402b62:	ff                   	(bad)  
  402b63:	ff                   	(bad)  
  402b64:	ff                   	(bad)  
  402b65:	ff                   	(bad)  
  402b66:	ff                   	(bad)  
  402b67:	ff 00                	incl   (%rax)
  402b69:	00 00                	add    %al,(%rax)
  402b6b:	00 00                	add    %al,(%rax)
  402b6d:	00 00                	add    %al,(%rax)
	...
