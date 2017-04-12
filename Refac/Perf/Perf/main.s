	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$10, %eax
	movl	$5, %ecx
	xorl	%edx, %edx
	movl	$0, -36(%rbp)
	movl	%edi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	__ZN12_GLOBAL__N_110tarai_lazyEiii
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movl	%eax, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdi
	movq	%rax, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	*-32(%rbp)
	movl	$20, %edi
	movl	$10, %esi
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZN12_GLOBAL__N_110tarai_lazyEiii
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movl	%eax, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rdi
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZN12_GLOBAL__N_110tarai_lazyEiii:     ## @_ZN12_GLOBAL__N_110tarai_lazyEiii
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movl	%edx, -220(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -272(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE
	movl	-212(%rbp), %r8d
	movl	%r8d, -240(%rbp)
Ltmp3:
	leaq	-112(%rbp), %rdi
	movl	%r8d, %esi
	movq	-272(%rbp), %rdx        ## 8-byte Reload
	callq	__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
Ltmp4:
	jmp	LBB1_1
LBB1_1:
	movl	-216(%rbp), %eax
	movl	%eax, -256(%rbp)
Ltmp6:
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-160(%rbp), %rdi
	movl	%eax, %esi
	callq	__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
Ltmp7:
	jmp	LBB1_2
LBB1_2:
	movl	-220(%rbp), %eax
	movl	%eax, -264(%rbp)
Ltmp9:
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-208(%rbp), %rdi
	movl	%eax, %esi
	callq	__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
Ltmp10:
	jmp	LBB1_3
LBB1_3:
Ltmp12:
	leaq	-64(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	callq	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
Ltmp13:
	movl	%eax, -276(%rbp)        ## 4-byte Spill
	jmp	LBB1_4
LBB1_4:
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	LBB1_14
## BB#5:
	movl	-276(%rbp), %eax        ## 4-byte Reload
	addq	$288, %rsp              ## imm = 0x120
	popq	%rbp
	retq
LBB1_6:
Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
	jmp	LBB1_12
LBB1_7:
Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
	jmp	LBB1_11
LBB1_8:
Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
	jmp	LBB1_10
LBB1_9:
Ltmp14:
	leaq	-208(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
LBB1_10:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB1_11:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB1_12:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev
## BB#13:
	movq	-248(%rbp), %rdi
	callq	__Unwind_Resume
LBB1_14:
	callq	___stack_chk_fail
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\320"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp3-Lfunc_begin0              ##   Call between Lfunc_begin0 and Ltmp3
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp3-Lfunc_begin0              ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp4-Ltmp3                     ##   Call between Ltmp3 and Ltmp4
	.long	Lset3
Lset4 = Ltmp5-Lfunc_begin0              ##     jumps to Ltmp5
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp6-Lfunc_begin0              ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp7-Ltmp6                     ##   Call between Ltmp6 and Ltmp7
	.long	Lset6
Lset7 = Ltmp8-Lfunc_begin0              ##     jumps to Ltmp8
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp9-Lfunc_begin0              ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp10-Ltmp9                    ##   Call between Ltmp9 and Ltmp10
	.long	Lset9
Lset10 = Ltmp11-Lfunc_begin0            ##     jumps to Ltmp11
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp12-Lfunc_begin0            ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.long	Lset12
Lset13 = Ltmp14-Lfunc_begin0            ##     jumps to Ltmp14
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp13-Lfunc_begin0            ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Lfunc_end0-Ltmp13              ##   Call between Ltmp13 and Lfunc_end0
	.long	Lset15
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rdi, %rax
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
	movq	%rdi, -32(%rbp)
	movb	$10, -33(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%rcx, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -24(%rbp)
Ltmp18:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp19:
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB2_1
LBB2_1:
	movb	-33(%rbp), %al
	movq	-96(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp20:
	movl	%edi, -100(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-100(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -112(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp21:
	movb	%al, -113(%rbp)         ## 1-byte Spill
	jmp	LBB2_3
LBB2_2:
Ltmp22:
	leaq	-48(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
	callq	__ZNSt3__16localeD1Ev
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
LBB2_3:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movb	-113(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-72(%rbp), %rdi
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	movq	%rdi, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table2:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	41                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	39                      ## Call site table length
Lset16 = Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.long	Lset16
Lset17 = Ltmp18-Lfunc_begin1            ##   Call between Lfunc_begin1 and Ltmp18
	.long	Lset17
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset18 = Ltmp18-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset18
Lset19 = Ltmp21-Ltmp18                  ##   Call between Ltmp18 and Ltmp21
	.long	Lset19
Lset20 = Ltmp22-Lfunc_begin1            ##     jumps to Ltmp22
	.long	Lset20
	.byte	0                       ##   On action: cleanup
Lset21 = Ltmp21-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset21
Lset22 = Lfunc_end1-Ltmp21              ##   Call between Ltmp21 and Lfunc_end1
	.long	Lset22
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp26:
	.cfi_def_cfa_offset 16
Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
	.weak_def_can_be_hidden	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
	.align	4, 0x90
__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_: ## @_ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp29:
	.cfi_def_cfa_offset 16
Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	jne	LBB4_2
## BB#1:
	movl	$8, %eax
	movl	%eax, %edi
	callq	___cxa_allocate_exception
	xorl	%esi, %esi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rdi, %r8
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117bad_function_callC1Ev
	movq	__ZTINSt3__117bad_function_callE@GOTPCREL(%rip), %rax
	movq	__ZNSt3__117bad_function_callD1Ev@GOTPCREL(%rip), %rdx
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	___cxa_throw
LBB4_2:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	48(%rdx), %rdx
	movq	-40(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%r8, -8(%rbp)
	movq	-8(%rbp), %r8
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         ## 8-byte Reload
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	-96(%rbp), %r8          ## 8-byte Reload
	callq	*%r8
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %esi
	callq	__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp35:
	.cfi_def_cfa_offset 16
Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %esi
	callq	__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp38:
	.cfi_def_cfa_offset 16
Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%esi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-8(%rbp), %esi
	callq	__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__18functionIFivEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFivEED1Ev
	.align	4, 0x90
__ZNSt3__18functionIFivEED1Ev:          ## @_ZNSt3__18functionIFivEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp41:
	.cfi_def_cfa_offset 16
Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev
	.align	4, 0x90
__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev: ## @_ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp44:
	.cfi_def_cfa_offset 16
Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S6_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp47:
	.cfi_def_cfa_offset 16
Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp49:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp50:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB10_1
	jmp	LBB10_2
LBB10_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB10_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED1Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp51:
	.cfi_def_cfa_offset 16
Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED0Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp54:
	.cfi_def_cfa_offset 16
Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp57:
	.cfi_def_cfa_offset 16
Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp59:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp60:
	.cfi_offset %rbx, -56
Ltmp61:
	.cfi_offset %r12, -48
Ltmp62:
	.cfi_offset %r13, -40
Ltmp63:
	.cfi_offset %r14, -32
Ltmp64:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB13_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB13_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEPNS0_6__baseISB_EE: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEPNS0_6__baseISB_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp65:
	.cfi_def_cfa_offset 16
Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp67:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp68:
	.cfi_offset %rbx, -32
Ltmp69:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7destroyEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp70:
	.cfi_def_cfa_offset 16
Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp72:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp73:
	.cfi_def_cfa_offset 16
Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEclESA_SA_SA_: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEclESA_SA_SA_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp76:
	.cfi_def_cfa_offset 16
Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	-48(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0RKNS_8functionIFivEEESA_SA_EEEiDpOT_
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp79:
	.cfi_def_cfa_offset 16
Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp81:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB18_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB18_3
LBB18_2:
	movq	$0, -40(%rbp)
LBB18_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp82:
	.cfi_def_cfa_offset 16
Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp84:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev
	.globl	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev
	.align	4, 0x90
__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev: ## @_ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp85:
	.cfi_def_cfa_offset 16
Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp87:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev
	.globl	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev
	.align	4, 0x90
__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev: ## @_ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp88:
	.cfi_def_cfa_offset 16
Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	callq	__ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED2Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp91:
	.cfi_def_cfa_offset 16
Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp93:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0RKNS_8functionIFivEEESA_SA_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0RKNS_8functionIFivEEESA_SA_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp94:
	.cfi_def_cfa_offset 16
Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%rcx, -128(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	callq	__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_: ## @"_ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_"
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp106:
	.cfi_def_cfa_offset 16
Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              ## imm = 0x1B0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -176(%rbp)
	movq	%rsi, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rdi
	movq	%rax, -360(%rbp)        ## 8-byte Spill
	callq	__ZNKSt3__18functionIFivEEclEv
	movl	%eax, -204(%rbp)
	movq	-192(%rbp), %rdi
	callq	__ZNKSt3__18functionIFivEEclEv
	movl	%eax, -208(%rbp)
	movl	-204(%rbp), %eax
	cmpl	-208(%rbp), %eax
	jg	LBB25_2
## BB#1:
	movl	-208(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	LBB25_11
LBB25_2:
	movq	-200(%rbp), %rdi
	callq	__ZNKSt3__18functionIFivEEclEv
	movl	%eax, -212(%rbp)
	leaq	-204(%rbp), %rdi
	movq	%rdi, -224(%rbp)
	leaq	-208(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	leaq	-212(%rbp), %rdx
	movq	%rdx, -240(%rbp)
	movq	-360(%rbp), %rdx        ## 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rsi, -272(%rbp)
	movq	%rdi, -264(%rbp)
	leaq	-232(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%rsp, %r9
	movq	%r8, 24(%r9)
	movq	-256(%rbp), %r8
	movq	%r8, 16(%r9)
	movq	-272(%rbp), %r8
	movq	-264(%rbp), %r10
	movq	%r10, 8(%r9)
	movq	%r8, (%r9)
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -368(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -376(%rbp)        ## 8-byte Spill
	movq	%r8, %rsi
	movq	%r8, -384(%rbp)         ## 8-byte Spill
	movq	%rcx, -392(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	movq	-360(%rbp), %rcx        ## 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rdx, -304(%rbp)
	movq	-392(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -296(%rbp)
	movq	-368(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -288(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -280(%rbp)
Ltmp97:
	movq	-280(%rbp), %rdi
	movq	%rsp, %r8
	movq	%rdi, 24(%r8)
	movq	-288(%rbp), %rdi
	movq	%rdi, 16(%r8)
	movq	-304(%rbp), %rdi
	movq	-296(%rbp), %r9
	movq	%r9, 8(%r8)
	movq	%rdi, (%r8)
	leaq	-112(%rbp), %rdi
	movq	-384(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp98:
	jmp	LBB25_3
LBB25_3:
	movq	-360(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -352(%rbp)
	leaq	-212(%rbp), %rcx
	movq	%rcx, -344(%rbp)
	leaq	-224(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	leaq	-232(%rbp), %rcx
	movq	%rcx, -328(%rbp)
Ltmp100:
	movq	-328(%rbp), %rcx
	movq	%rsp, %rdx
	movq	%rcx, 24(%rdx)
	movq	-336(%rbp), %rcx
	movq	%rcx, 16(%rdx)
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %rsi
	movq	%rsi, 8(%rdx)
	movq	%rcx, (%rdx)
	xorl	%edi, %edi
	movl	%edi, %esi
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp101:
	jmp	LBB25_4
LBB25_4:
Ltmp103:
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-376(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
Ltmp104:
	movl	%eax, -396(%rbp)        ## 4-byte Spill
	jmp	LBB25_5
LBB25_5:
	leaq	-160(%rbp), %rdi
	movl	-396(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -164(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	jmp	LBB25_11
LBB25_6:
Ltmp99:
	movl	%edx, %ecx
	movq	%rax, -312(%rbp)
	movl	%ecx, -316(%rbp)
	jmp	LBB25_10
LBB25_7:
Ltmp102:
	movl	%edx, %ecx
	movq	%rax, -312(%rbp)
	movl	%ecx, -316(%rbp)
	jmp	LBB25_9
LBB25_8:
Ltmp105:
	leaq	-160(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -312(%rbp)
	movl	%ecx, -316(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
LBB25_9:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB25_10:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	jmp	LBB25_13
LBB25_11:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movl	-164(%rbp), %ecx
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	movl	%ecx, -400(%rbp)        ## 4-byte Spill
	jne	LBB25_14
## BB#12:
	movl	-400(%rbp), %eax        ## 4-byte Reload
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	retq
LBB25_13:
	movq	-312(%rbp), %rdi
	callq	__Unwind_Resume
LBB25_14:
	callq	___stack_chk_fail
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table25:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset23 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset23
Lset24 = Ltmp97-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp97
	.long	Lset24
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset25 = Ltmp97-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset25
Lset26 = Ltmp98-Ltmp97                  ##   Call between Ltmp97 and Ltmp98
	.long	Lset26
Lset27 = Ltmp99-Lfunc_begin2            ##     jumps to Ltmp99
	.long	Lset27
	.byte	0                       ##   On action: cleanup
Lset28 = Ltmp100-Lfunc_begin2           ## >> Call Site 3 <<
	.long	Lset28
Lset29 = Ltmp101-Ltmp100                ##   Call between Ltmp100 and Ltmp101
	.long	Lset29
Lset30 = Ltmp102-Lfunc_begin2           ##     jumps to Ltmp102
	.long	Lset30
	.byte	0                       ##   On action: cleanup
Lset31 = Ltmp103-Lfunc_begin2           ## >> Call Site 4 <<
	.long	Lset31
Lset32 = Ltmp104-Ltmp103                ##   Call between Ltmp103 and Ltmp104
	.long	Lset32
Lset33 = Ltmp105-Lfunc_begin2           ##     jumps to Ltmp105
	.long	Lset33
	.byte	0                       ##   On action: cleanup
Lset34 = Ltmp104-Lfunc_begin2           ## >> Call Site 5 <<
	.long	Lset34
Lset35 = Lfunc_end2-Ltmp104             ##   Call between Ltmp104 and Lfunc_end2
	.long	Lset35
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNKSt3__18functionIFivEEclEv
	.weak_def_can_be_hidden	__ZNKSt3__18functionIFivEEclEv
	.align	4, 0x90
__ZNKSt3__18functionIFivEEclEv:         ## @_ZNKSt3__18functionIFivEEclEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp109:
	.cfi_def_cfa_offset 16
Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	jne	LBB26_2
## BB#1:
	movl	$8, %eax
	movl	%eax, %edi
	callq	___cxa_allocate_exception
	xorl	%esi, %esi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rdi, %r8
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	_memset
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117bad_function_callC1Ev
	movq	__ZTINSt3__117bad_function_callE@GOTPCREL(%rip), %rax
	movq	__ZNSt3__117bad_function_callD1Ev@GOTPCREL(%rip), %rdx
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	___cxa_throw
LBB26_2:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*48(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp112:
	.cfi_def_cfa_offset 16
Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp115:
	.cfi_def_cfa_offset 16
Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp118:
	.cfi_def_cfa_offset 16
Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 24(%rsp)
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callC1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callC1Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callC1Ev:      ## @_ZNSt3__117bad_function_callC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp121:
	.cfi_def_cfa_offset 16
Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117bad_function_callC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callD1Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD1Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callD1Ev:      ## @_ZNSt3__117bad_function_callD1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp124:
	.cfi_def_cfa_offset 16
Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117bad_function_callD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callC2Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callC2Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callC2Ev:      ## @_ZNSt3__117bad_function_callC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp127:
	.cfi_def_cfa_offset 16
Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp129:
	.cfi_def_cfa_register %rbp
	movq	__ZTVNSt3__117bad_function_callE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	__ZTVSt9exception@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callD0Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD0Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callD0Ev:      ## @_ZNSt3__117bad_function_callD0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp130:
	.cfi_def_cfa_offset 16
Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117bad_function_callD1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__117bad_function_callD2Ev
	.weak_def_can_be_hidden	__ZNSt3__117bad_function_callD2Ev
	.align	4, 0x90
__ZNSt3__117bad_function_callD2Ev:      ## @_ZNSt3__117bad_function_callD2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp133:
	.cfi_def_cfa_offset 16
Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt9exceptionD2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE2_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp136:
	.cfi_def_cfa_offset 16
Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp138:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp139:
	.cfi_offset %rbx, -56
Ltmp140:
	.cfi_offset %r12, -48
Ltmp141:
	.cfi_offset %r13, -40
Ltmp142:
	.cfi_offset %r14, -32
Ltmp143:
	.cfi_offset %r15, -24
	leaq	16(%rbp), %rax
	movb	$1, %cl
	movq	%rdi, -1584(%rbp)
	movq	%rsi, -1592(%rbp)
	movq	-1584(%rbp), %rsi
	movq	$0, 32(%rsi)
	movq	%rax, -1576(%rbp)
	testb	$1, %cl
	movq	%rax, -1672(%rbp)       ## 8-byte Spill
	movq	%rsi, -1680(%rbp)       ## 8-byte Spill
	jne	LBB35_1
	jmp	LBB35_5
LBB35_1:
	leaq	-1600(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	-1408(%rbp), %rcx
	movq	%rcx, -1400(%rbp)
	movq	%rax, -1216(%rbp)
	movq	$1, -1224(%rbp)
	movq	$0, -1232(%rbp)
	imulq	$40, -1224(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rdi
	callq	__Znwm
	leaq	-856(%rbp), %rcx
	leaq	-864(%rbp), %rdi
	leaq	-920(%rbp), %rdx
	leaq	-912(%rbp), %rsi
	leaq	-776(%rbp), %r8
	leaq	-544(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1648(%rbp), %rbx
	leaq	-1600(%rbp), %r14
	leaq	-1624(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1640(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1184(%rbp)
	movq	%r14, -1192(%rbp)
	movq	$1, -1200(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1200(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1168(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1176(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1672(%rbp), %r15       ## 8-byte Reload
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r12
	movq	%rbx, -312(%rbp)
	movq	%r14, -320(%rbp)
	movq	-312(%rbp), %r14
	movq	-320(%rbp), %r13
	movq	%r14, -296(%rbp)
	movq	%r13, -304(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	%r12, -1096(%rbp)
	movq	%rbx, -1104(%rbp)
	movq	-1088(%rbp), %rcx
	movq	-1096(%rbp), %rbx
	movq	-1104(%rbp), %r14
	movq	%rcx, -1024(%rbp)
	movq	%rbx, -1032(%rbp)
	movq	%r14, -1040(%rbp)
	movq	-1024(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1016(%rbp)
	movq	-1016(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1032(%rbp), %r10
	movq	%r10, -328(%rbp)
	movq	-328(%rbp), %r10
	movq	%r10, -552(%rbp)
	movq	-552(%rbp), %r10
	movq	%r10, -536(%rbp)
	movq	-536(%rbp), %r10
	movq	%r9, -520(%rbp)
	movq	%r10, -528(%rbp)
	movq	-520(%rbp), %r9
	movq	-528(%rbp), %r10
	movq	%r9, -472(%rbp)
	movq	%r10, -480(%rbp)
	movq	-472(%rbp), %r9
	movq	-480(%rbp), %r10
	movq	%r10, -464(%rbp)
	movq	-464(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-544(%rbp), %r9
	movq	%r9, -1056(%rbp)
	movq	-1040(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, -784(%rbp)
	movq	-784(%rbp), %r9
	movq	%r9, -768(%rbp)
	movq	-768(%rbp), %r9
	movq	%r8, -752(%rbp)
	movq	%r9, -760(%rbp)
	movq	-752(%rbp), %r8
	movq	-760(%rbp), %r9
	movq	%r8, -704(%rbp)
	movq	%r9, -712(%rbp)
	movq	-704(%rbp), %r8
	movq	-712(%rbp), %r9
	movq	%r9, -696(%rbp)
	movq	-696(%rbp), %r9
	movq	%r8, -680(%rbp)
	movq	%r9, -688(%rbp)
	movq	-680(%rbp), %r8
	movq	-688(%rbp), %r9
	movq	%r8, -632(%rbp)
	movq	%r9, -640(%rbp)
	movq	-632(%rbp), %r8
	movq	-640(%rbp), %r9
	movq	%r9, -592(%rbp)
	movq	-592(%rbp), %r9
	movq	%r8, -576(%rbp)
	movq	%r9, -584(%rbp)
	movq	-576(%rbp), %r8
	movq	-584(%rbp), %r9
	movq	%r9, -568(%rbp)
	movq	-568(%rbp), %r9
	movq	%r9, (%r8)
	movq	-776(%rbp), %r8
	movq	%r8, -1064(%rbp)
	movq	-1056(%rbp), %r8
	movq	-1064(%rbp), %r9
	movq	%r8, -984(%rbp)
	movq	%r9, -992(%rbp)
	movq	%rcx, -1000(%rbp)
	movq	-1000(%rbp), %rcx
	movq	-984(%rbp), %r8
	movq	-992(%rbp), %r9
	movq	%r8, -912(%rbp)
	movq	%r9, -920(%rbp)
	movq	%rcx, -928(%rbp)
	movq	-928(%rbp), %rcx
	movq	%rsi, -896(%rbp)
	movq	-896(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	%rdx, -792(%rbp)
	movq	-792(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -952(%rbp)
	movq	-944(%rbp), %rdx
	movq	-952(%rbp), %rsi
	movq	%rdx, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movq	%rcx, -888(%rbp)
	movq	-888(%rbp), %rcx
	movq	%rdi, -840(%rbp)
	movq	-840(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -800(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	%rsi, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -824(%rbp)
	movq	-824(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#2:
	leaq	-1624(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rcx
	movq	%rcx, -1136(%rbp)
	movq	-1136(%rbp), %rdx
	movq	%rdx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1152(%rbp)
	movq	%rcx, -1120(%rbp)
	movq	-1120(%rbp), %rcx
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1152(%rbp), %rcx
	movq	-1680(%rbp), %rdx       ## 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	%rax, -1392(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1368(%rbp)
	movq	-1360(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	-1352(%rbp), %rcx
	movq	%rcx, -1344(%rbp)
	movq	-1344(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1376(%rbp)
	movq	-1368(%rbp), %rcx
	movq	%rax, -1264(%rbp)
	movq	-1264(%rbp), %rsi
	movq	%rsi, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rcx, (%rsi)
	cmpq	$0, -1376(%rbp)
	movq	%rax, -1880(%rbp)       ## 8-byte Spill
	je	LBB35_4
## BB#3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1248(%rbp)
	movq	-1248(%rbp), %rcx
	movq	%rcx, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	addq	$8, %rcx
	movq	-1376(%rbp), %rdx
	movq	%rcx, -1328(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1328(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1336(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1304(%rbp)
	movq	%rsi, -1312(%rbp)
	movq	%rcx, -1320(%rbp)
	movq	-1304(%rbp), %rcx
	movq	-1312(%rbp), %rdx
	movq	-1320(%rbp), %rsi
	movq	%rcx, -1280(%rbp)
	movq	%rdx, -1288(%rbp)
	movq	%rsi, -1296(%rbp)
	movq	-1288(%rbp), %rcx
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rdi
	callq	__ZdlPv
LBB35_4:
	jmp	LBB35_5
LBB35_5:
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp144:
	.cfi_def_cfa_offset 16
Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp147:
	.cfi_def_cfa_offset 16
Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp150:
	.cfi_def_cfa_offset 16
Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp152:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp153:
	.cfi_offset %rbx, -56
Ltmp154:
	.cfi_offset %r12, -48
Ltmp155:
	.cfi_offset %r13, -40
Ltmp156:
	.cfi_offset %r14, -32
Ltmp157:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	imulq	$40, -1216(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB38_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB38_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp158:
	.cfi_def_cfa_offset 16
Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp160:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp161:
	.cfi_offset %rbx, -32
Ltmp162:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp163:
	.cfi_def_cfa_offset 16
Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp165:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp166:
	.cfi_def_cfa_offset 16
Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp169:
	.cfi_def_cfa_offset 16
Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE2_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp172:
	.cfi_def_cfa_offset 16
Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp174:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB43_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB43_3
LBB43_2:
	movq	$0, -40(%rbp)
LBB43_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp175:
	.cfi_def_cfa_offset 16
Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp177:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__ZNSt3__110__function6__baseIFivEED1Ev
	.globl	__ZNSt3__110__function6__baseIFivEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__baseIFivEED1Ev
	.align	4, 0x90
__ZNSt3__110__function6__baseIFivEED1Ev: ## @_ZNSt3__110__function6__baseIFivEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp178:
	.cfi_def_cfa_offset 16
Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp180:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__ZNSt3__110__function6__baseIFivEED0Ev
	.globl	__ZNSt3__110__function6__baseIFivEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__110__function6__baseIFivEED0Ev
	.align	4, 0x90
__ZNSt3__110__function6__baseIFivEED0Ev: ## @_ZNSt3__110__function6__baseIFivEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp181:
	.cfi_def_cfa_offset 16
Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	callq	__ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp184:
	.cfi_def_cfa_offset 16
Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp186:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE2_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE2_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp187:
	.cfi_def_cfa_offset 16
Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEv"
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp199:
	.cfi_def_cfa_offset 16
Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp201:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%rdi, %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	%rdx, -176(%rbp)
	xorl	%esi, %esi
	movl	%esi, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -216(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%r8, -224(%rbp)         ## 8-byte Spill
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movq	%rcx, -240(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	movq	-216(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -184(%rbp)
Ltmp190:
	leaq	-112(%rbp), %rdi
	movq	%rcx, %rsi
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp191:
	jmp	LBB49_1
LBB49_1:
	movq	-232(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -208(%rbp)
Ltmp193:
	xorl	%edx, %edx
                                        ## 
	leaq	-160(%rbp), %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp194:
	jmp	LBB49_2
LBB49_2:
Ltmp196:
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
Ltmp197:
	movl	%eax, -244(%rbp)        ## 4-byte Spill
	jmp	LBB49_3
LBB49_3:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	LBB49_11
## BB#4:
	movl	-244(%rbp), %eax        ## 4-byte Reload
	addq	$256, %rsp              ## imm = 0x100
	popq	%rbp
	retq
LBB49_5:
Ltmp192:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB49_9
LBB49_6:
Ltmp195:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB49_8
LBB49_7:
Ltmp198:
	leaq	-160(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
LBB49_8:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB49_9:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
## BB#10:
	movq	-192(%rbp), %rdi
	callq	__Unwind_Resume
LBB49_11:
	callq	___stack_chk_fail
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table49:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset36 = Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.long	Lset36
Lset37 = Ltmp190-Lfunc_begin3           ##   Call between Lfunc_begin3 and Ltmp190
	.long	Lset37
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp190-Lfunc_begin3           ## >> Call Site 2 <<
	.long	Lset38
Lset39 = Ltmp191-Ltmp190                ##   Call between Ltmp190 and Ltmp191
	.long	Lset39
Lset40 = Ltmp192-Lfunc_begin3           ##     jumps to Ltmp192
	.long	Lset40
	.byte	0                       ##   On action: cleanup
Lset41 = Ltmp193-Lfunc_begin3           ## >> Call Site 3 <<
	.long	Lset41
Lset42 = Ltmp194-Ltmp193                ##   Call between Ltmp193 and Ltmp194
	.long	Lset42
Lset43 = Ltmp195-Lfunc_begin3           ##     jumps to Ltmp195
	.long	Lset43
	.byte	0                       ##   On action: cleanup
Lset44 = Ltmp196-Lfunc_begin3           ## >> Call Site 4 <<
	.long	Lset44
Lset45 = Ltmp197-Ltmp196                ##   Call between Ltmp196 and Ltmp197
	.long	Lset45
Lset46 = Ltmp198-Lfunc_begin3           ##     jumps to Ltmp198
	.long	Lset46
	.byte	0                       ##   On action: cleanup
Lset47 = Ltmp197-Lfunc_begin3           ## >> Call Site 5 <<
	.long	Lset47
Lset48 = Lfunc_end3-Ltmp197             ##   Call between Ltmp197 and Lfunc_end3
	.long	Lset48
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp202:
	.cfi_def_cfa_offset 16
Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp205:
	.cfi_def_cfa_offset 16
Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp208:
	.cfi_def_cfa_offset 16
Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE2_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp211:
	.cfi_def_cfa_offset 16
Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp213:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp214:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB53_1
	jmp	LBB53_2
LBB53_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB53_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp215:
	.cfi_def_cfa_offset 16
Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp218:
	.cfi_def_cfa_offset 16
Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp220:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp221:
	.cfi_def_cfa_offset 16
Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp223:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp224:
	.cfi_offset %rbx, -56
Ltmp225:
	.cfi_offset %r12, -48
Ltmp226:
	.cfi_offset %r13, -40
Ltmp227:
	.cfi_offset %r14, -32
Ltmp228:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB56_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB56_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp229:
	.cfi_def_cfa_offset 16
Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp231:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp232:
	.cfi_offset %rbx, -32
Ltmp233:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp234:
	.cfi_def_cfa_offset 16
Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp236:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp237:
	.cfi_def_cfa_offset 16
Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp240:
	.cfi_def_cfa_offset 16
Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE2_clEvEUlvE_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp243:
	.cfi_def_cfa_offset 16
Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp245:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB61_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB61_3
LBB61_2:
	movq	$0, -40(%rbp)
LBB61_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp246:
	.cfi_def_cfa_offset 16
Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp248:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp249:
	.cfi_def_cfa_offset 16
Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp251:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE2_clEvEUlvE_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE2_clEvEUlvE_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp252:
	.cfi_def_cfa_offset 16
Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvENKUlvE_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvENKUlvE_clEv: ## @"_ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvENKUlvE_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp255:
	.cfi_def_cfa_offset 16
Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp257:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	subl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp258:
	.cfi_def_cfa_offset 16
Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp260:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp261:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB66_1
	jmp	LBB66_2
LBB66_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB66_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp262:
	.cfi_def_cfa_offset 16
Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp265:
	.cfi_def_cfa_offset 16
Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp268:
	.cfi_def_cfa_offset 16
Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp270:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp271:
	.cfi_offset %rbx, -56
Ltmp272:
	.cfi_offset %r12, -48
Ltmp273:
	.cfi_offset %r13, -40
Ltmp274:
	.cfi_offset %r14, -32
Ltmp275:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB69_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB69_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp276:
	.cfi_def_cfa_offset 16
Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp278:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp279:
	.cfi_offset %rbx, -32
Ltmp280:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp281:
	.cfi_def_cfa_offset 16
Ltmp282:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp283:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp284:
	.cfi_def_cfa_offset 16
Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp286:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp287:
	.cfi_def_cfa_offset 16
Ltmp288:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp289:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE0_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp290:
	.cfi_def_cfa_offset 16
Ltmp291:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp292:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB74_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB74_3
LBB74_2:
	movq	$0, -40(%rbp)
LBB74_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp293:
	.cfi_def_cfa_offset 16
Ltmp294:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp295:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp296:
	.cfi_def_cfa_offset 16
Ltmp297:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp298:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE0_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE0_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp299:
	.cfi_def_cfa_offset 16
Ltmp300:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp301:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE0_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE0_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE0_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp302:
	.cfi_def_cfa_offset 16
Ltmp303:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp304:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp305:
	.cfi_def_cfa_offset 16
Ltmp306:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp307:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp308:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB79_1
	jmp	LBB79_2
LBB79_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB79_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp309:
	.cfi_def_cfa_offset 16
Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp312:
	.cfi_def_cfa_offset 16
Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp315:
	.cfi_def_cfa_offset 16
Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp317:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp318:
	.cfi_offset %rbx, -56
Ltmp319:
	.cfi_offset %r12, -48
Ltmp320:
	.cfi_offset %r13, -40
Ltmp321:
	.cfi_offset %r14, -32
Ltmp322:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB82_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB82_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp323:
	.cfi_def_cfa_offset 16
Ltmp324:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp325:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp326:
	.cfi_offset %rbx, -32
Ltmp327:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp328:
	.cfi_def_cfa_offset 16
Ltmp329:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp330:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp331:
	.cfi_def_cfa_offset 16
Ltmp332:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp333:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp334:
	.cfi_def_cfa_offset 16
Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp336:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE1_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp337:
	.cfi_def_cfa_offset 16
Ltmp338:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp339:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB87_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB87_3
LBB87_2:
	movq	$0, -40(%rbp)
LBB87_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp340:
	.cfi_def_cfa_offset 16
Ltmp341:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp342:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp343:
	.cfi_def_cfa_offset 16
Ltmp344:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp345:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE1_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE1_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp346:
	.cfi_def_cfa_offset 16
Ltmp347:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp348:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE1_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE1_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE1_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp349:
	.cfi_def_cfa_offset 16
Ltmp350:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp351:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE3_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp352:
	.cfi_def_cfa_offset 16
Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp354:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp355:
	.cfi_offset %rbx, -56
Ltmp356:
	.cfi_offset %r12, -48
Ltmp357:
	.cfi_offset %r13, -40
Ltmp358:
	.cfi_offset %r14, -32
Ltmp359:
	.cfi_offset %r15, -24
	leaq	16(%rbp), %rax
	movb	$1, %cl
	movq	%rdi, -1584(%rbp)
	movq	%rsi, -1592(%rbp)
	movq	-1584(%rbp), %rsi
	movq	$0, 32(%rsi)
	movq	%rax, -1576(%rbp)
	testb	$1, %cl
	movq	%rax, -1672(%rbp)       ## 8-byte Spill
	movq	%rsi, -1680(%rbp)       ## 8-byte Spill
	jne	LBB92_1
	jmp	LBB92_5
LBB92_1:
	leaq	-1600(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	-1408(%rbp), %rcx
	movq	%rcx, -1400(%rbp)
	movq	%rax, -1216(%rbp)
	movq	$1, -1224(%rbp)
	movq	$0, -1232(%rbp)
	imulq	$40, -1224(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rdi
	callq	__Znwm
	leaq	-856(%rbp), %rcx
	leaq	-864(%rbp), %rdi
	leaq	-920(%rbp), %rdx
	leaq	-912(%rbp), %rsi
	leaq	-776(%rbp), %r8
	leaq	-544(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1648(%rbp), %rbx
	leaq	-1600(%rbp), %r14
	leaq	-1624(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1640(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1184(%rbp)
	movq	%r14, -1192(%rbp)
	movq	$1, -1200(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1200(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1168(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1176(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1672(%rbp), %r15       ## 8-byte Reload
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r12
	movq	%rbx, -312(%rbp)
	movq	%r14, -320(%rbp)
	movq	-312(%rbp), %r14
	movq	-320(%rbp), %r13
	movq	%r14, -296(%rbp)
	movq	%r13, -304(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	%r12, -1096(%rbp)
	movq	%rbx, -1104(%rbp)
	movq	-1088(%rbp), %rcx
	movq	-1096(%rbp), %rbx
	movq	-1104(%rbp), %r14
	movq	%rcx, -1024(%rbp)
	movq	%rbx, -1032(%rbp)
	movq	%r14, -1040(%rbp)
	movq	-1024(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1016(%rbp)
	movq	-1016(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1032(%rbp), %r10
	movq	%r10, -328(%rbp)
	movq	-328(%rbp), %r10
	movq	%r10, -552(%rbp)
	movq	-552(%rbp), %r10
	movq	%r10, -536(%rbp)
	movq	-536(%rbp), %r10
	movq	%r9, -520(%rbp)
	movq	%r10, -528(%rbp)
	movq	-520(%rbp), %r9
	movq	-528(%rbp), %r10
	movq	%r9, -472(%rbp)
	movq	%r10, -480(%rbp)
	movq	-472(%rbp), %r9
	movq	-480(%rbp), %r10
	movq	%r10, -464(%rbp)
	movq	-464(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-544(%rbp), %r9
	movq	%r9, -1056(%rbp)
	movq	-1040(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, -784(%rbp)
	movq	-784(%rbp), %r9
	movq	%r9, -768(%rbp)
	movq	-768(%rbp), %r9
	movq	%r8, -752(%rbp)
	movq	%r9, -760(%rbp)
	movq	-752(%rbp), %r8
	movq	-760(%rbp), %r9
	movq	%r8, -704(%rbp)
	movq	%r9, -712(%rbp)
	movq	-704(%rbp), %r8
	movq	-712(%rbp), %r9
	movq	%r9, -696(%rbp)
	movq	-696(%rbp), %r9
	movq	%r8, -680(%rbp)
	movq	%r9, -688(%rbp)
	movq	-680(%rbp), %r8
	movq	-688(%rbp), %r9
	movq	%r8, -632(%rbp)
	movq	%r9, -640(%rbp)
	movq	-632(%rbp), %r8
	movq	-640(%rbp), %r9
	movq	%r9, -592(%rbp)
	movq	-592(%rbp), %r9
	movq	%r8, -576(%rbp)
	movq	%r9, -584(%rbp)
	movq	-576(%rbp), %r8
	movq	-584(%rbp), %r9
	movq	%r9, -568(%rbp)
	movq	-568(%rbp), %r9
	movq	%r9, (%r8)
	movq	-776(%rbp), %r8
	movq	%r8, -1064(%rbp)
	movq	-1056(%rbp), %r8
	movq	-1064(%rbp), %r9
	movq	%r8, -984(%rbp)
	movq	%r9, -992(%rbp)
	movq	%rcx, -1000(%rbp)
	movq	-1000(%rbp), %rcx
	movq	-984(%rbp), %r8
	movq	-992(%rbp), %r9
	movq	%r8, -912(%rbp)
	movq	%r9, -920(%rbp)
	movq	%rcx, -928(%rbp)
	movq	-928(%rbp), %rcx
	movq	%rsi, -896(%rbp)
	movq	-896(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	%rdx, -792(%rbp)
	movq	-792(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -952(%rbp)
	movq	-944(%rbp), %rdx
	movq	-952(%rbp), %rsi
	movq	%rdx, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movq	%rcx, -888(%rbp)
	movq	-888(%rbp), %rcx
	movq	%rdi, -840(%rbp)
	movq	-840(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -800(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	%rsi, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -824(%rbp)
	movq	-824(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#2:
	leaq	-1624(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rcx
	movq	%rcx, -1136(%rbp)
	movq	-1136(%rbp), %rdx
	movq	%rdx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1152(%rbp)
	movq	%rcx, -1120(%rbp)
	movq	-1120(%rbp), %rcx
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1152(%rbp), %rcx
	movq	-1680(%rbp), %rdx       ## 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	%rax, -1392(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1368(%rbp)
	movq	-1360(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	-1352(%rbp), %rcx
	movq	%rcx, -1344(%rbp)
	movq	-1344(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1376(%rbp)
	movq	-1368(%rbp), %rcx
	movq	%rax, -1264(%rbp)
	movq	-1264(%rbp), %rsi
	movq	%rsi, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rcx, (%rsi)
	cmpq	$0, -1376(%rbp)
	movq	%rax, -1880(%rbp)       ## 8-byte Spill
	je	LBB92_4
## BB#3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1248(%rbp)
	movq	-1248(%rbp), %rcx
	movq	%rcx, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	addq	$8, %rcx
	movq	-1376(%rbp), %rdx
	movq	%rcx, -1328(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1328(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1336(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1304(%rbp)
	movq	%rsi, -1312(%rbp)
	movq	%rcx, -1320(%rbp)
	movq	-1304(%rbp), %rcx
	movq	-1312(%rbp), %rdx
	movq	-1320(%rbp), %rsi
	movq	%rcx, -1280(%rbp)
	movq	%rdx, -1288(%rbp)
	movq	%rsi, -1296(%rbp)
	movq	-1288(%rbp), %rcx
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rdi
	callq	__ZdlPv
LBB92_4:
	jmp	LBB92_5
LBB92_5:
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp360:
	.cfi_def_cfa_offset 16
Ltmp361:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp362:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp363:
	.cfi_def_cfa_offset 16
Ltmp364:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp365:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp366:
	.cfi_def_cfa_offset 16
Ltmp367:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp368:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp369:
	.cfi_offset %rbx, -56
Ltmp370:
	.cfi_offset %r12, -48
Ltmp371:
	.cfi_offset %r13, -40
Ltmp372:
	.cfi_offset %r14, -32
Ltmp373:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	imulq	$40, -1216(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB95_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB95_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp374:
	.cfi_def_cfa_offset 16
Ltmp375:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp376:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp377:
	.cfi_offset %rbx, -32
Ltmp378:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp379:
	.cfi_def_cfa_offset 16
Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp381:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp382:
	.cfi_def_cfa_offset 16
Ltmp383:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp384:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp385:
	.cfi_def_cfa_offset 16
Ltmp386:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp387:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE3_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp388:
	.cfi_def_cfa_offset 16
Ltmp389:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp390:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB100_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB100_3
LBB100_2:
	movq	$0, -40(%rbp)
LBB100_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp391:
	.cfi_def_cfa_offset 16
Ltmp392:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp393:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp394:
	.cfi_def_cfa_offset 16
Ltmp395:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp396:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE3_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE3_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp397:
	.cfi_def_cfa_offset 16
Ltmp398:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp399:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEv"
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp409:
	.cfi_def_cfa_offset 16
Ltmp410:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp411:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%rdi, %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	%rdx, -176(%rbp)
	xorl	%esi, %esi
	movl	%esi, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -216(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%r8, -224(%rbp)         ## 8-byte Spill
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movq	%rcx, -240(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	movq	-216(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -184(%rbp)
Ltmp400:
	leaq	-112(%rbp), %rdi
	movq	%rcx, %rsi
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE1_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp401:
	jmp	LBB104_1
LBB104_1:
	movq	-232(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -208(%rbp)
Ltmp403:
	xorl	%edx, %edx
                                        ## 
	leaq	-160(%rbp), %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp404:
	jmp	LBB104_2
LBB104_2:
Ltmp406:
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
Ltmp407:
	movl	%eax, -244(%rbp)        ## 4-byte Spill
	jmp	LBB104_3
LBB104_3:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	LBB104_11
## BB#4:
	movl	-244(%rbp), %eax        ## 4-byte Reload
	addq	$256, %rsp              ## imm = 0x100
	popq	%rbp
	retq
LBB104_5:
Ltmp402:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB104_9
LBB104_6:
Ltmp405:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB104_8
LBB104_7:
Ltmp408:
	leaq	-160(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
LBB104_8:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB104_9:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
## BB#10:
	movq	-192(%rbp), %rdi
	callq	__Unwind_Resume
LBB104_11:
	callq	___stack_chk_fail
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table104:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset49 = Lfunc_begin4-Lfunc_begin4      ## >> Call Site 1 <<
	.long	Lset49
Lset50 = Ltmp400-Lfunc_begin4           ##   Call between Lfunc_begin4 and Ltmp400
	.long	Lset50
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset51 = Ltmp400-Lfunc_begin4           ## >> Call Site 2 <<
	.long	Lset51
Lset52 = Ltmp401-Ltmp400                ##   Call between Ltmp400 and Ltmp401
	.long	Lset52
Lset53 = Ltmp402-Lfunc_begin4           ##     jumps to Ltmp402
	.long	Lset53
	.byte	0                       ##   On action: cleanup
Lset54 = Ltmp403-Lfunc_begin4           ## >> Call Site 3 <<
	.long	Lset54
Lset55 = Ltmp404-Ltmp403                ##   Call between Ltmp403 and Ltmp404
	.long	Lset55
Lset56 = Ltmp405-Lfunc_begin4           ##     jumps to Ltmp405
	.long	Lset56
	.byte	0                       ##   On action: cleanup
Lset57 = Ltmp406-Lfunc_begin4           ## >> Call Site 4 <<
	.long	Lset57
Lset58 = Ltmp407-Ltmp406                ##   Call between Ltmp406 and Ltmp407
	.long	Lset58
Lset59 = Ltmp408-Lfunc_begin4           ##     jumps to Ltmp408
	.long	Lset59
	.byte	0                       ##   On action: cleanup
Lset60 = Ltmp407-Lfunc_begin4           ## >> Call Site 5 <<
	.long	Lset60
Lset61 = Lfunc_end4-Ltmp407             ##   Call between Ltmp407 and Lfunc_end4
	.long	Lset61
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp412:
	.cfi_def_cfa_offset 16
Ltmp413:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp414:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp415:
	.cfi_def_cfa_offset 16
Ltmp416:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp417:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE3_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp418:
	.cfi_def_cfa_offset 16
Ltmp419:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp420:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp421:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB107_1
	jmp	LBB107_2
LBB107_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB107_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp422:
	.cfi_def_cfa_offset 16
Ltmp423:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp424:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp425:
	.cfi_def_cfa_offset 16
Ltmp426:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp427:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp428:
	.cfi_def_cfa_offset 16
Ltmp429:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp430:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp431:
	.cfi_offset %rbx, -56
Ltmp432:
	.cfi_offset %r12, -48
Ltmp433:
	.cfi_offset %r13, -40
Ltmp434:
	.cfi_offset %r14, -32
Ltmp435:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB110_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB110_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp436:
	.cfi_def_cfa_offset 16
Ltmp437:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp438:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp439:
	.cfi_offset %rbx, -32
Ltmp440:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp441:
	.cfi_def_cfa_offset 16
Ltmp442:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp443:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp444:
	.cfi_def_cfa_offset 16
Ltmp445:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp446:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp447:
	.cfi_def_cfa_offset 16
Ltmp448:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp449:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE3_clEvEUlvE_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp450:
	.cfi_def_cfa_offset 16
Ltmp451:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp452:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB115_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB115_3
LBB115_2:
	movq	$0, -40(%rbp)
LBB115_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp453:
	.cfi_def_cfa_offset 16
Ltmp454:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp455:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp456:
	.cfi_def_cfa_offset 16
Ltmp457:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp458:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE3_clEvEUlvE_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE3_clEvEUlvE_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp459:
	.cfi_def_cfa_offset 16
Ltmp460:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp461:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvENKUlvE_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvENKUlvE_clEv: ## @"_ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvENKUlvE_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp462:
	.cfi_def_cfa_offset 16
Ltmp463:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp464:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	subl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp465:
	.cfi_def_cfa_offset 16
Ltmp466:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp467:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp468:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB120_1
	jmp	LBB120_2
LBB120_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB120_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp469:
	.cfi_def_cfa_offset 16
Ltmp470:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp471:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp472:
	.cfi_def_cfa_offset 16
Ltmp473:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp474:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp475:
	.cfi_def_cfa_offset 16
Ltmp476:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp477:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp478:
	.cfi_offset %rbx, -56
Ltmp479:
	.cfi_offset %r12, -48
Ltmp480:
	.cfi_offset %r13, -40
Ltmp481:
	.cfi_offset %r14, -32
Ltmp482:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB123_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB123_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp483:
	.cfi_def_cfa_offset 16
Ltmp484:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp485:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp486:
	.cfi_offset %rbx, -32
Ltmp487:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp488:
	.cfi_def_cfa_offset 16
Ltmp489:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp490:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp491:
	.cfi_def_cfa_offset 16
Ltmp492:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp493:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp494:
	.cfi_def_cfa_offset 16
Ltmp495:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp496:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp497:
	.cfi_def_cfa_offset 16
Ltmp498:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp499:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB128_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB128_3
LBB128_2:
	movq	$0, -40(%rbp)
LBB128_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp500:
	.cfi_def_cfa_offset 16
Ltmp501:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp502:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp503:
	.cfi_def_cfa_offset 16
Ltmp504:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp505:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp506:
	.cfi_def_cfa_offset 16
Ltmp507:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp508:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp509:
	.cfi_def_cfa_offset 16
Ltmp510:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp511:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE4_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp512:
	.cfi_def_cfa_offset 16
Ltmp513:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp514:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp515:
	.cfi_offset %rbx, -56
Ltmp516:
	.cfi_offset %r12, -48
Ltmp517:
	.cfi_offset %r13, -40
Ltmp518:
	.cfi_offset %r14, -32
Ltmp519:
	.cfi_offset %r15, -24
	leaq	16(%rbp), %rax
	movb	$1, %cl
	movq	%rdi, -1584(%rbp)
	movq	%rsi, -1592(%rbp)
	movq	-1584(%rbp), %rsi
	movq	$0, 32(%rsi)
	movq	%rax, -1576(%rbp)
	testb	$1, %cl
	movq	%rax, -1672(%rbp)       ## 8-byte Spill
	movq	%rsi, -1680(%rbp)       ## 8-byte Spill
	jne	LBB133_1
	jmp	LBB133_5
LBB133_1:
	leaq	-1600(%rbp), %rax
	movq	%rax, -1408(%rbp)
	movq	-1408(%rbp), %rcx
	movq	%rcx, -1400(%rbp)
	movq	%rax, -1216(%rbp)
	movq	$1, -1224(%rbp)
	movq	$0, -1232(%rbp)
	imulq	$40, -1224(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movq	-1208(%rbp), %rdi
	callq	__Znwm
	leaq	-856(%rbp), %rcx
	leaq	-864(%rbp), %rdi
	leaq	-920(%rbp), %rdx
	leaq	-912(%rbp), %rsi
	leaq	-776(%rbp), %r8
	leaq	-544(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1648(%rbp), %rbx
	leaq	-1600(%rbp), %r14
	leaq	-1624(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1640(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1184(%rbp)
	movq	%r14, -1192(%rbp)
	movq	$1, -1200(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1200(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1168(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1176(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1672(%rbp), %r15       ## 8-byte Reload
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r12
	movq	%rbx, -312(%rbp)
	movq	%r14, -320(%rbp)
	movq	-312(%rbp), %r14
	movq	-320(%rbp), %r13
	movq	%r14, -296(%rbp)
	movq	%r13, -304(%rbp)
	movq	%rcx, -1088(%rbp)
	movq	%r12, -1096(%rbp)
	movq	%rbx, -1104(%rbp)
	movq	-1088(%rbp), %rcx
	movq	-1096(%rbp), %rbx
	movq	-1104(%rbp), %r14
	movq	%rcx, -1024(%rbp)
	movq	%rbx, -1032(%rbp)
	movq	%r14, -1040(%rbp)
	movq	-1024(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1016(%rbp)
	movq	-1016(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1032(%rbp), %r10
	movq	%r10, -328(%rbp)
	movq	-328(%rbp), %r10
	movq	%r10, -552(%rbp)
	movq	-552(%rbp), %r10
	movq	%r10, -536(%rbp)
	movq	-536(%rbp), %r10
	movq	%r9, -520(%rbp)
	movq	%r10, -528(%rbp)
	movq	-520(%rbp), %r9
	movq	-528(%rbp), %r10
	movq	%r9, -472(%rbp)
	movq	%r10, -480(%rbp)
	movq	-472(%rbp), %r9
	movq	-480(%rbp), %r10
	movq	%r10, -464(%rbp)
	movq	-464(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-544(%rbp), %r9
	movq	%r9, -1056(%rbp)
	movq	-1040(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, -784(%rbp)
	movq	-784(%rbp), %r9
	movq	%r9, -768(%rbp)
	movq	-768(%rbp), %r9
	movq	%r8, -752(%rbp)
	movq	%r9, -760(%rbp)
	movq	-752(%rbp), %r8
	movq	-760(%rbp), %r9
	movq	%r8, -704(%rbp)
	movq	%r9, -712(%rbp)
	movq	-704(%rbp), %r8
	movq	-712(%rbp), %r9
	movq	%r9, -696(%rbp)
	movq	-696(%rbp), %r9
	movq	%r8, -680(%rbp)
	movq	%r9, -688(%rbp)
	movq	-680(%rbp), %r8
	movq	-688(%rbp), %r9
	movq	%r8, -632(%rbp)
	movq	%r9, -640(%rbp)
	movq	-632(%rbp), %r8
	movq	-640(%rbp), %r9
	movq	%r9, -592(%rbp)
	movq	-592(%rbp), %r9
	movq	%r8, -576(%rbp)
	movq	%r9, -584(%rbp)
	movq	-576(%rbp), %r8
	movq	-584(%rbp), %r9
	movq	%r9, -568(%rbp)
	movq	-568(%rbp), %r9
	movq	%r9, (%r8)
	movq	-776(%rbp), %r8
	movq	%r8, -1064(%rbp)
	movq	-1056(%rbp), %r8
	movq	-1064(%rbp), %r9
	movq	%r8, -984(%rbp)
	movq	%r9, -992(%rbp)
	movq	%rcx, -1000(%rbp)
	movq	-1000(%rbp), %rcx
	movq	-984(%rbp), %r8
	movq	-992(%rbp), %r9
	movq	%r8, -912(%rbp)
	movq	%r9, -920(%rbp)
	movq	%rcx, -928(%rbp)
	movq	-928(%rbp), %rcx
	movq	%rsi, -896(%rbp)
	movq	-896(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	%rdx, -792(%rbp)
	movq	-792(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -952(%rbp)
	movq	-944(%rbp), %rdx
	movq	-952(%rbp), %rsi
	movq	%rdx, -856(%rbp)
	movq	%rsi, -864(%rbp)
	movq	%rcx, -888(%rbp)
	movq	-888(%rbp), %rcx
	movq	%rdi, -840(%rbp)
	movq	-840(%rbp), %rdx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -800(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	%rsi, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -824(%rbp)
	movq	-824(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#2:
	leaq	-1624(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	-1144(%rbp), %rcx
	movq	%rcx, -1136(%rbp)
	movq	-1136(%rbp), %rdx
	movq	%rdx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1152(%rbp)
	movq	%rcx, -1120(%rbp)
	movq	-1120(%rbp), %rcx
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1152(%rbp), %rcx
	movq	-1680(%rbp), %rdx       ## 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	%rax, -1392(%rbp)
	movq	-1392(%rbp), %rax
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1360(%rbp)
	movq	$0, -1368(%rbp)
	movq	-1360(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	-1352(%rbp), %rcx
	movq	%rcx, -1344(%rbp)
	movq	-1344(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -1376(%rbp)
	movq	-1368(%rbp), %rcx
	movq	%rax, -1264(%rbp)
	movq	-1264(%rbp), %rsi
	movq	%rsi, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rcx, (%rsi)
	cmpq	$0, -1376(%rbp)
	movq	%rax, -1880(%rbp)       ## 8-byte Spill
	je	LBB133_4
## BB#3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1248(%rbp)
	movq	-1248(%rbp), %rcx
	movq	%rcx, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	addq	$8, %rcx
	movq	-1376(%rbp), %rdx
	movq	%rcx, -1328(%rbp)
	movq	%rdx, -1336(%rbp)
	movq	-1328(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1336(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1304(%rbp)
	movq	%rsi, -1312(%rbp)
	movq	%rcx, -1320(%rbp)
	movq	-1304(%rbp), %rcx
	movq	-1312(%rbp), %rdx
	movq	-1320(%rbp), %rsi
	movq	%rcx, -1280(%rbp)
	movq	%rdx, -1288(%rbp)
	movq	%rsi, -1296(%rbp)
	movq	-1288(%rbp), %rcx
	movq	%rcx, -1272(%rbp)
	movq	-1272(%rbp), %rdi
	callq	__ZdlPv
LBB133_4:
	jmp	LBB133_5
LBB133_5:
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp520:
	.cfi_def_cfa_offset 16
Ltmp521:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp522:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp523:
	.cfi_def_cfa_offset 16
Ltmp524:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp525:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp526:
	.cfi_def_cfa_offset 16
Ltmp527:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp528:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp529:
	.cfi_offset %rbx, -56
Ltmp530:
	.cfi_offset %r12, -48
Ltmp531:
	.cfi_offset %r13, -40
Ltmp532:
	.cfi_offset %r14, -32
Ltmp533:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	imulq	$40, -1216(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, (%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 8(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 16(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 24(%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB136_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB136_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp534:
	.cfi_def_cfa_offset 16
Ltmp535:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp536:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp537:
	.cfi_offset %rbx, -32
Ltmp538:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp539:
	.cfi_def_cfa_offset 16
Ltmp540:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp541:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp542:
	.cfi_def_cfa_offset 16
Ltmp543:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp544:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp545:
	.cfi_def_cfa_offset 16
Ltmp546:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp547:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE4_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp548:
	.cfi_def_cfa_offset 16
Ltmp549:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp550:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB141_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB141_3
LBB141_2:
	movq	$0, -40(%rbp)
LBB141_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp551:
	.cfi_def_cfa_offset 16
Ltmp552:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp553:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp554:
	.cfi_def_cfa_offset 16
Ltmp555:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp556:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE4_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_EUlvE4_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp557:
	.cfi_def_cfa_offset 16
Ltmp558:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp559:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEv: ## @"_ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEv"
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp569:
	.cfi_def_cfa_offset 16
Ltmp570:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp571:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              ## imm = 0x100
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%rdi, %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	%rdx, -176(%rbp)
	xorl	%esi, %esi
	movl	%esi, %r8d
	leaq	-64(%rbp), %r9
	movq	%rdi, -216(%rbp)        ## 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%r8, -224(%rbp)         ## 8-byte Spill
	movq	%rax, -232(%rbp)        ## 8-byte Spill
	movq	%rcx, -240(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	movq	-216(%rbp), %rax        ## 8-byte Reload
	movq	16(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -184(%rbp)
Ltmp560:
	leaq	-112(%rbp), %rdi
	movq	%rcx, %rsi
	movq	-224(%rbp), %rdx        ## 8-byte Reload
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp561:
	jmp	LBB145_1
LBB145_1:
	movq	-232(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -208(%rbp)
Ltmp563:
	xorl	%edx, %edx
                                        ## 
	leaq	-160(%rbp), %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__18functionIFivEEC1IZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_EUlvE0_EET_PNS_9enable_ifIXaasr10__callableIS9_EE5valuentsr7is_sameIS9_S2_EE5valueEvE4typeE
Ltmp564:
	jmp	LBB145_2
LBB145_2:
Ltmp566:
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-160(%rbp), %rcx
	movq	-240(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__18functionIFiRKNS0_IFivEEES4_S4_EEclES4_S4_S4_
Ltmp567:
	movl	%eax, -244(%rbp)        ## 4-byte Spill
	jmp	LBB145_3
LBB145_3:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	LBB145_11
## BB#4:
	movl	-244(%rbp), %eax        ## 4-byte Reload
	addq	$256, %rsp              ## imm = 0x100
	popq	%rbp
	retq
LBB145_5:
Ltmp562:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB145_9
LBB145_6:
Ltmp565:
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	jmp	LBB145_8
LBB145_7:
Ltmp568:
	leaq	-160(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -192(%rbp)
	movl	%ecx, -196(%rbp)
	callq	__ZNSt3__18functionIFivEED1Ev
LBB145_8:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
LBB145_9:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__18functionIFivEED1Ev
## BB#10:
	movq	-192(%rbp), %rdi
	callq	__Unwind_Resume
LBB145_11:
	callq	___stack_chk_fail
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table145:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\303\200"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset62 = Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.long	Lset62
Lset63 = Ltmp560-Lfunc_begin5           ##   Call between Lfunc_begin5 and Ltmp560
	.long	Lset63
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset64 = Ltmp560-Lfunc_begin5           ## >> Call Site 2 <<
	.long	Lset64
Lset65 = Ltmp561-Ltmp560                ##   Call between Ltmp560 and Ltmp561
	.long	Lset65
Lset66 = Ltmp562-Lfunc_begin5           ##     jumps to Ltmp562
	.long	Lset66
	.byte	0                       ##   On action: cleanup
Lset67 = Ltmp563-Lfunc_begin5           ## >> Call Site 3 <<
	.long	Lset67
Lset68 = Ltmp564-Ltmp563                ##   Call between Ltmp563 and Ltmp564
	.long	Lset68
Lset69 = Ltmp565-Lfunc_begin5           ##     jumps to Ltmp565
	.long	Lset69
	.byte	0                       ##   On action: cleanup
Lset70 = Ltmp566-Lfunc_begin5           ## >> Call Site 4 <<
	.long	Lset70
Lset71 = Ltmp567-Ltmp566                ##   Call between Ltmp566 and Ltmp567
	.long	Lset71
Lset72 = Ltmp568-Lfunc_begin5           ##     jumps to Ltmp568
	.long	Lset72
	.byte	0                       ##   On action: cleanup
Lset73 = Ltmp567-Lfunc_begin5           ## >> Call Site 5 <<
	.long	Lset73
Lset74 = Lfunc_end5-Ltmp567             ##   Call between Ltmp567 and Lfunc_end5
	.long	Lset74
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
__ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC1IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp572:
	.cfi_def_cfa_offset 16
Ltmp573:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp574:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	callq	__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKS2_S7_S7_ENKUlvE4_clEvEUlvE_EET_PNS_9enable_ifIXaasr10__callableISA_EE5valuentsr7is_sameISA_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp575:
	.cfi_def_cfa_offset 16
Ltmp576:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp577:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp578:
	.cfi_offset %rbx, -24
	movb	$1, %al
	leaq	-584(%rbp), %rcx
	movq	%rsi, -584(%rbp)
	movq	%rdi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	-592(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -576(%rbp)
	testb	$1, %al
	movq	%rdx, -608(%rbp)        ## 8-byte Spill
	jne	LBB147_1
	jmp	LBB147_2
LBB147_1:
	leaq	-328(%rbp), %rax
	leaq	-392(%rbp), %rcx
	leaq	-384(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-240(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-584(%rbp), %r10
	movq	-608(%rbp), %r11        ## 8-byte Reload
	movq	-608(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -16(%rbp)
	movq	-16(%rbp), %r10
	movq	%r11, -560(%rbp)
	movq	%r10, -568(%rbp)
	movq	-560(%rbp), %r10
	movq	-568(%rbp), %r11
	movq	%r10, -496(%rbp)
	movq	%r11, -504(%rbp)
	movq	-496(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -488(%rbp)
	movq	-488(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-504(%rbp), %r8
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %r8
	movq	%r8, -248(%rbp)
	movq	-248(%rbp), %r8
	movq	%r8, -232(%rbp)
	movq	-232(%rbp), %r8
	movq	%rdi, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r8
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r8
	movq	%r8, -160(%rbp)
	movq	-160(%rbp), %r8
	movq	%rdi, -144(%rbp)
	movq	%r8, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %r8
	movq	%rdi, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	movq	%rdi, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -520(%rbp)
	movq	%rsi, -264(%rbp)
	movq	-264(%rbp), %rsi
	movq	%rsi, -256(%rbp)
	movq	-520(%rbp), %rsi
	movq	%rsi, -456(%rbp)
	movq	%r10, -472(%rbp)
	movq	-472(%rbp), %rsi
	movq	-456(%rbp), %rdi
	movq	%rdi, -384(%rbp)
	movq	%rsi, -400(%rbp)
	movq	-400(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	movq	-368(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -416(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -328(%rbp)
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -312(%rbp)
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rcx)
LBB147_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp579:
	.cfi_def_cfa_offset 16
Ltmp580:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp581:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp582:
	.cfi_def_cfa_offset 16
Ltmp583:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp584:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp585:
	.cfi_def_cfa_offset 16
Ltmp586:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp587:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp588:
	.cfi_offset %rbx, -56
Ltmp589:
	.cfi_offset %r12, -48
Ltmp590:
	.cfi_offset %r13, -40
Ltmp591:
	.cfi_offset %r14, -32
Ltmp592:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB150_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB150_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp593:
	.cfi_def_cfa_offset 16
Ltmp594:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp595:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp596:
	.cfi_offset %rbx, -32
Ltmp597:
	.cfi_offset %r14, -24
	leaq	-536(%rbp), %rax
	leaq	-544(%rbp), %rcx
	leaq	-600(%rbp), %rdx
	leaq	-592(%rbp), %r8
	leaq	-456(%rbp), %r9
	leaq	-240(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	-808(%rbp), %rsi
	movq	-816(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	movq	%r14, -792(%rbp)
	movq	-792(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rdi, -768(%rbp)
	movq	%r14, -776(%rbp)
	movq	%rsi, -784(%rbp)
	movq	-768(%rbp), %rsi
	movq	-776(%rbp), %rdi
	movq	-784(%rbp), %r14
	movq	%rsi, -704(%rbp)
	movq	%rdi, -712(%rbp)
	movq	%r14, -720(%rbp)
	movq	-704(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -696(%rbp)
	movq	-696(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-712(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	%r10, -216(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %r10
	movq	%rdi, -168(%rbp)
	movq	%r10, -176(%rbp)
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %r10
	movq	%rdi, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	%rdi, -104(%rbp)
	movq	%r10, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r10
	movq	%r10, -64(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r10
	movq	%r10, -40(%rbp)
	movq	-40(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-240(%rbp), %rdi
	movq	%rdi, -736(%rbp)
	movq	-720(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	-464(%rbp), %rdi
	movq	%rdi, -448(%rbp)
	movq	-448(%rbp), %rdi
	movq	%r9, -432(%rbp)
	movq	%rdi, -440(%rbp)
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %r9
	movq	%rdi, -384(%rbp)
	movq	%r9, -392(%rbp)
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r9
	movq	%rdi, -368(%rbp)
	movq	%r9, -376(%rbp)
	movq	-368(%rbp), %rdi
	movq	-376(%rbp), %r9
	movq	%rdi, -320(%rbp)
	movq	%r9, -328(%rbp)
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %r9
	movq	%r9, -280(%rbp)
	movq	-280(%rbp), %r9
	movq	%rdi, -264(%rbp)
	movq	%r9, -272(%rbp)
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %r9
	movq	%r9, -256(%rbp)
	movq	-256(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-456(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-736(%rbp), %rdi
	movq	-744(%rbp), %r9
	movq	%rdi, -664(%rbp)
	movq	%r9, -672(%rbp)
	movq	%rsi, -680(%rbp)
	movq	-680(%rbp), %rsi
	movq	-664(%rbp), %rdi
	movq	-672(%rbp), %r9
	movq	%rdi, -592(%rbp)
	movq	%r9, -600(%rbp)
	movq	%rsi, -608(%rbp)
	movq	-608(%rbp), %rsi
	movq	%r8, -576(%rbp)
	movq	-576(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -624(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -632(%rbp)
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rdi
	movq	%rdx, -536(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -568(%rbp)
	movq	-568(%rbp), %rdx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	%rcx, -512(%rbp)
	movq	-512(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -480(%rbp)
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp598:
	.cfi_def_cfa_offset 16
Ltmp599:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp600:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp601:
	.cfi_def_cfa_offset 16
Ltmp602:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp603:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EclEv: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp604:
	.cfi_def_cfa_offset 16
Ltmp605:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp606:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE4_clEvEUlvE_EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp607:
	.cfi_def_cfa_offset 16
Ltmp608:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp609:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB155_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB155_3
LBB155_2:
	movq	$0, -40(%rbp)
LBB155_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp610:
	.cfi_def_cfa_offset 16
Ltmp611:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp612:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev: ## @"_ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp613:
	.cfi_def_cfa_offset 16
Ltmp614:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp615:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE4_clEvEUlvE_EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES9_S9_ENKUlvE4_clEvEUlvE_EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp616:
	.cfi_def_cfa_offset 16
Ltmp617:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp618:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvENKUlvE_clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvENKUlvE_clEv: ## @"_ZZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvENKUlvE_clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp619:
	.cfi_def_cfa_offset 16
Ltmp620:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp621:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	(%rdi), %eax
	subl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp622:
	.cfi_def_cfa_offset 16
Ltmp623:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp624:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp625:
	.cfi_offset %rbx, -32
Ltmp626:
	.cfi_offset %r14, -24
	movb	$1, %al
	leaq	-592(%rbp), %rcx
	movl	%esi, -592(%rbp)
	movq	%rdi, -600(%rbp)
	movq	%rdx, -608(%rbp)
	movq	-600(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -584(%rbp)
	testb	$1, %al
	movq	%rdx, -616(%rbp)        ## 8-byte Spill
	jne	LBB160_1
	jmp	LBB160_2
LBB160_1:
	leaq	-336(%rbp), %rax
	leaq	-400(%rbp), %rcx
	leaq	-392(%rbp), %rdx
	leaq	-280(%rbp), %rsi
	leaq	-248(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-592(%rbp), %r10
	movq	-616(%rbp), %r11        ## 8-byte Reload
	movq	-616(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -24(%rbp)
	movq	-24(%rbp), %r10
	movq	%r11, -568(%rbp)
	movq	%r10, -576(%rbp)
	movq	-568(%rbp), %r10
	movq	-576(%rbp), %r11
	movq	%r10, -504(%rbp)
	movq	%r11, -512(%rbp)
	movq	-504(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -496(%rbp)
	movq	-496(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-512(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, -256(%rbp)
	movq	-256(%rbp), %r8
	movq	%r8, -240(%rbp)
	movq	-240(%rbp), %r8
	movq	%rdi, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	%rdi, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r8
	movq	%r8, -168(%rbp)
	movq	-168(%rbp), %r8
	movq	%rdi, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rdi, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r8
	movq	%r8, -64(%rbp)
	movq	-64(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -528(%rbp)
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	%r10, -480(%rbp)
	movq	-480(%rbp), %rsi
	movq	-464(%rbp), %rdi
	movq	%rdi, -392(%rbp)
	movq	%rsi, -408(%rbp)
	movq	-408(%rbp), %rsi
	movq	%rdx, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -424(%rbp)
	movq	%rcx, -288(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	%rsi, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -320(%rbp)
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %r14d
	movl	%r14d, (%rcx)
LBB160_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED1Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp627:
	.cfi_def_cfa_offset 16
Ltmp628:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp629:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED0Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp630:
	.cfi_def_cfa_offset 16
Ltmp631:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp632:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp633:
	.cfi_def_cfa_offset 16
Ltmp634:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp635:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp636:
	.cfi_offset %rbx, -56
Ltmp637:
	.cfi_offset %r12, -48
Ltmp638:
	.cfi_offset %r13, -40
Ltmp639:
	.cfi_offset %r14, -32
Ltmp640:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB163_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB163_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp641:
	.cfi_def_cfa_offset 16
Ltmp642:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp643:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp644:
	.cfi_offset %rbx, -40
Ltmp645:
	.cfi_offset %r14, -32
Ltmp646:
	.cfi_offset %r15, -24
	leaq	-544(%rbp), %rax
	leaq	-552(%rbp), %rcx
	leaq	-608(%rbp), %rdx
	leaq	-600(%rbp), %r8
	leaq	-464(%rbp), %r9
	leaq	-248(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -816(%rbp)
	movq	%rsi, -824(%rbp)
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -808(%rbp)
	movq	-808(%rbp), %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rdi, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	%rsi, -792(%rbp)
	movq	-776(%rbp), %rsi
	movq	-784(%rbp), %rdi
	movq	-792(%rbp), %r14
	movq	%rsi, -712(%rbp)
	movq	%rdi, -720(%rbp)
	movq	%r14, -728(%rbp)
	movq	-712(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -704(%rbp)
	movq	-704(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-720(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	%r10, -224(%rbp)
	movq	%rdi, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r10
	movq	%rdi, -176(%rbp)
	movq	%r10, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r10
	movq	%rdi, -160(%rbp)
	movq	%r10, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %r10
	movq	%rdi, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %r10
	movq	%r10, -72(%rbp)
	movq	-72(%rbp), %r10
	movq	%rdi, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-728(%rbp), %rdi
	movq	%rdi, -472(%rbp)
	movq	-472(%rbp), %rdi
	movq	%rdi, -456(%rbp)
	movq	-456(%rbp), %rdi
	movq	%r9, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %r9
	movq	%rdi, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %r9
	movq	%rdi, -376(%rbp)
	movq	%r9, -384(%rbp)
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %r9
	movq	%rdi, -328(%rbp)
	movq	%r9, -336(%rbp)
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %r9
	movq	%r9, -288(%rbp)
	movq	-288(%rbp), %r9
	movq	%rdi, -272(%rbp)
	movq	%r9, -280(%rbp)
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %r9
	movq	%r9, -264(%rbp)
	movq	-264(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-464(%rbp), %rdi
	movq	%rdi, -752(%rbp)
	movq	-744(%rbp), %rdi
	movq	-752(%rbp), %r9
	movq	%rdi, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	-688(%rbp), %rsi
	movq	-672(%rbp), %rdi
	movq	-680(%rbp), %r9
	movq	%rdi, -600(%rbp)
	movq	%r9, -608(%rbp)
	movq	%rsi, -616(%rbp)
	movq	-616(%rbp), %rsi
	movq	%r8, -584(%rbp)
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -632(%rbp)
	movq	%rdx, -480(%rbp)
	movq	-480(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -640(%rbp)
	movq	-632(%rbp), %rdx
	movq	-640(%rbp), %rdi
	movq	%rdx, -544(%rbp)
	movq	%rdi, -552(%rbp)
	movq	%rsi, -576(%rbp)
	movq	-576(%rbp), %rdx
	movq	%rcx, -528(%rbp)
	movq	-528(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -488(%rbp)
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movl	(%rax), %r15d
	movl	%r15d, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7destroyEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp647:
	.cfi_def_cfa_offset 16
Ltmp648:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp649:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp650:
	.cfi_def_cfa_offset 16
Ltmp651:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp652:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEclEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp653:
	.cfi_def_cfa_offset 16
Ltmp654:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp655:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp656:
	.cfi_def_cfa_offset 16
Ltmp657:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp658:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB168_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB168_3
LBB168_2:
	movq	$0, -40(%rbp)
LBB168_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp659:
	.cfi_def_cfa_offset 16
Ltmp660:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp661:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED2Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp662:
	.cfi_def_cfa_offset 16
Ltmp663:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp664:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp665:
	.cfi_def_cfa_offset 16
Ltmp666:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp667:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_1clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_1clEv: ## @"_ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_1clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp668:
	.cfi_def_cfa_offset 16
Ltmp669:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp670:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp671:
	.cfi_def_cfa_offset 16
Ltmp672:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp673:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp674:
	.cfi_offset %rbx, -32
Ltmp675:
	.cfi_offset %r14, -24
	movb	$1, %al
	leaq	-592(%rbp), %rcx
	movl	%esi, -592(%rbp)
	movq	%rdi, -600(%rbp)
	movq	%rdx, -608(%rbp)
	movq	-600(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -584(%rbp)
	testb	$1, %al
	movq	%rdx, -616(%rbp)        ## 8-byte Spill
	jne	LBB173_1
	jmp	LBB173_2
LBB173_1:
	leaq	-336(%rbp), %rax
	leaq	-400(%rbp), %rcx
	leaq	-392(%rbp), %rdx
	leaq	-280(%rbp), %rsi
	leaq	-248(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-592(%rbp), %r10
	movq	-616(%rbp), %r11        ## 8-byte Reload
	movq	-616(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -24(%rbp)
	movq	-24(%rbp), %r10
	movq	%r11, -568(%rbp)
	movq	%r10, -576(%rbp)
	movq	-568(%rbp), %r10
	movq	-576(%rbp), %r11
	movq	%r10, -504(%rbp)
	movq	%r11, -512(%rbp)
	movq	-504(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -496(%rbp)
	movq	-496(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-512(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, -256(%rbp)
	movq	-256(%rbp), %r8
	movq	%r8, -240(%rbp)
	movq	-240(%rbp), %r8
	movq	%rdi, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	%rdi, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r8
	movq	%r8, -168(%rbp)
	movq	-168(%rbp), %r8
	movq	%rdi, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rdi, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r8
	movq	%r8, -64(%rbp)
	movq	-64(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -528(%rbp)
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	%r10, -480(%rbp)
	movq	-480(%rbp), %rsi
	movq	-464(%rbp), %rdi
	movq	%rdi, -392(%rbp)
	movq	%rsi, -408(%rbp)
	movq	-408(%rbp), %rsi
	movq	%rdx, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -424(%rbp)
	movq	%rcx, -288(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	%rsi, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -320(%rbp)
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %r14d
	movl	%r14d, (%rcx)
LBB173_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED1Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp676:
	.cfi_def_cfa_offset 16
Ltmp677:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp678:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED0Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp679:
	.cfi_def_cfa_offset 16
Ltmp680:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp681:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp682:
	.cfi_def_cfa_offset 16
Ltmp683:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp684:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp685:
	.cfi_offset %rbx, -56
Ltmp686:
	.cfi_offset %r12, -48
Ltmp687:
	.cfi_offset %r13, -40
Ltmp688:
	.cfi_offset %r14, -32
Ltmp689:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB176_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB176_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp690:
	.cfi_def_cfa_offset 16
Ltmp691:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp692:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp693:
	.cfi_offset %rbx, -40
Ltmp694:
	.cfi_offset %r14, -32
Ltmp695:
	.cfi_offset %r15, -24
	leaq	-544(%rbp), %rax
	leaq	-552(%rbp), %rcx
	leaq	-608(%rbp), %rdx
	leaq	-600(%rbp), %r8
	leaq	-464(%rbp), %r9
	leaq	-248(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -816(%rbp)
	movq	%rsi, -824(%rbp)
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -808(%rbp)
	movq	-808(%rbp), %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rdi, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	%rsi, -792(%rbp)
	movq	-776(%rbp), %rsi
	movq	-784(%rbp), %rdi
	movq	-792(%rbp), %r14
	movq	%rsi, -712(%rbp)
	movq	%rdi, -720(%rbp)
	movq	%r14, -728(%rbp)
	movq	-712(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -704(%rbp)
	movq	-704(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-720(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	%r10, -224(%rbp)
	movq	%rdi, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r10
	movq	%rdi, -176(%rbp)
	movq	%r10, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r10
	movq	%rdi, -160(%rbp)
	movq	%r10, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %r10
	movq	%rdi, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %r10
	movq	%r10, -72(%rbp)
	movq	-72(%rbp), %r10
	movq	%rdi, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-728(%rbp), %rdi
	movq	%rdi, -472(%rbp)
	movq	-472(%rbp), %rdi
	movq	%rdi, -456(%rbp)
	movq	-456(%rbp), %rdi
	movq	%r9, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %r9
	movq	%rdi, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %r9
	movq	%rdi, -376(%rbp)
	movq	%r9, -384(%rbp)
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %r9
	movq	%rdi, -328(%rbp)
	movq	%r9, -336(%rbp)
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %r9
	movq	%r9, -288(%rbp)
	movq	-288(%rbp), %r9
	movq	%rdi, -272(%rbp)
	movq	%r9, -280(%rbp)
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %r9
	movq	%r9, -264(%rbp)
	movq	-264(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-464(%rbp), %rdi
	movq	%rdi, -752(%rbp)
	movq	-744(%rbp), %rdi
	movq	-752(%rbp), %r9
	movq	%rdi, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	-688(%rbp), %rsi
	movq	-672(%rbp), %rdi
	movq	-680(%rbp), %r9
	movq	%rdi, -600(%rbp)
	movq	%r9, -608(%rbp)
	movq	%rsi, -616(%rbp)
	movq	-616(%rbp), %rsi
	movq	%r8, -584(%rbp)
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -632(%rbp)
	movq	%rdx, -480(%rbp)
	movq	-480(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -640(%rbp)
	movq	-632(%rbp), %rdx
	movq	-640(%rbp), %rdi
	movq	%rdx, -544(%rbp)
	movq	%rdi, -552(%rbp)
	movq	%rsi, -576(%rbp)
	movq	-576(%rbp), %rdx
	movq	%rcx, -528(%rbp)
	movq	-528(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -488(%rbp)
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movl	(%rax), %r15d
	movl	%r15d, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7destroyEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp696:
	.cfi_def_cfa_offset 16
Ltmp697:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp698:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp699:
	.cfi_def_cfa_offset 16
Ltmp700:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp701:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEclEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp702:
	.cfi_def_cfa_offset 16
Ltmp703:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp704:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp705:
	.cfi_def_cfa_offset 16
Ltmp706:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp707:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB181_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB181_3
LBB181_2:
	movq	$0, -40(%rbp)
LBB181_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp708:
	.cfi_def_cfa_offset 16
Ltmp709:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp710:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED2Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp711:
	.cfi_def_cfa_offset 16
Ltmp712:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp713:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp714:
	.cfi_def_cfa_offset 16
Ltmp715:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp716:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_2clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_2clEv: ## @"_ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_2clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp717:
	.cfi_def_cfa_offset 16
Ltmp718:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp719:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE: ## @"_ZNSt3__18functionIFivEEC2IZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EET_PNS_9enable_ifIXaasr10__callableIS6_EE5valuentsr7is_sameIS6_S2_EE5valueEvE4typeE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp720:
	.cfi_def_cfa_offset 16
Ltmp721:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp722:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              ## imm = 0x1D8
Ltmp723:
	.cfi_offset %rbx, -32
Ltmp724:
	.cfi_offset %r14, -24
	movb	$1, %al
	leaq	-592(%rbp), %rcx
	movl	%esi, -592(%rbp)
	movq	%rdi, -600(%rbp)
	movq	%rdx, -608(%rbp)
	movq	-600(%rbp), %rdx
	movq	$0, 32(%rdx)
	movq	%rcx, -584(%rbp)
	testb	$1, %al
	movq	%rdx, -616(%rbp)        ## 8-byte Spill
	jne	LBB186_1
	jmp	LBB186_2
LBB186_1:
	leaq	-336(%rbp), %rax
	leaq	-400(%rbp), %rcx
	leaq	-392(%rbp), %rdx
	leaq	-280(%rbp), %rsi
	leaq	-248(%rbp), %rdi
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE(%rip), %r8
	addq	$16, %r8
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r9
	addq	$16, %r9
	leaq	-592(%rbp), %r10
	movq	-616(%rbp), %r11        ## 8-byte Reload
	movq	-616(%rbp), %rbx        ## 8-byte Reload
	movq	%r11, 32(%rbx)
	movq	32(%rbx), %r11
	movq	%r10, -24(%rbp)
	movq	-24(%rbp), %r10
	movq	%r11, -568(%rbp)
	movq	%r10, -576(%rbp)
	movq	-568(%rbp), %r10
	movq	-576(%rbp), %r11
	movq	%r10, -504(%rbp)
	movq	%r11, -512(%rbp)
	movq	-504(%rbp), %r10
	movq	%r10, %r11
	movq	%r11, -496(%rbp)
	movq	-496(%rbp), %r11
	movq	%r9, (%r11)
	movq	%r8, (%r10)
	addq	$8, %r10
	movq	-512(%rbp), %r8
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %r8
	movq	%r8, -256(%rbp)
	movq	-256(%rbp), %r8
	movq	%r8, -240(%rbp)
	movq	-240(%rbp), %r8
	movq	%rdi, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r8
	movq	%rdi, -176(%rbp)
	movq	%r8, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r8
	movq	%r8, -168(%rbp)
	movq	-168(%rbp), %r8
	movq	%rdi, -152(%rbp)
	movq	%r8, -160(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rdi, -104(%rbp)
	movq	%r8, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %r8
	movq	%r8, -64(%rbp)
	movq	-64(%rbp), %r8
	movq	%rdi, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r8
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -528(%rbp)
	movq	%rsi, -272(%rbp)
	movq	-272(%rbp), %rsi
	movq	%rsi, -264(%rbp)
	movq	-528(%rbp), %rsi
	movq	%rsi, -464(%rbp)
	movq	%r10, -480(%rbp)
	movq	-480(%rbp), %rsi
	movq	-464(%rbp), %rdi
	movq	%rdi, -392(%rbp)
	movq	%rsi, -408(%rbp)
	movq	-408(%rbp), %rsi
	movq	%rdx, -376(%rbp)
	movq	-376(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -424(%rbp)
	movq	%rcx, -288(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -336(%rbp)
	movq	%rsi, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, -320(%rbp)
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	movl	(%rax), %r14d
	movl	%r14d, (%rcx)
LBB186_2:
	addq	$472, %rsp              ## imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED1Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED1Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp725:
	.cfi_def_cfa_offset 16
Ltmp726:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp727:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED0Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED0Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp728:
	.cfi_def_cfa_offset 16
Ltmp729:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp730:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED1Ev
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp731:
	.cfi_def_cfa_offset 16
Ltmp732:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp733:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1848, %rsp             ## imm = 0x738
Ltmp734:
	.cfi_offset %rbx, -56
Ltmp735:
	.cfi_offset %r12, -48
Ltmp736:
	.cfi_offset %r13, -40
Ltmp737:
	.cfi_offset %r14, -32
Ltmp738:
	.cfi_offset %r15, -24
	leaq	-1608(%rbp), %rax
	movq	%rdi, -1600(%rbp)
	movq	-1600(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -1592(%rbp)
	movq	-1592(%rbp), %rcx
	movq	%rcx, -1584(%rbp)
	movq	-1584(%rbp), %rcx
	movq	%rax, -1408(%rbp)
	movq	%rcx, -1416(%rbp)
	movq	-1408(%rbp), %rcx
	movq	-1416(%rbp), %rdx
	movq	%rcx, -1392(%rbp)
	movq	%rdx, -1400(%rbp)
	movq	%rax, -1208(%rbp)
	movq	$1, -1216(%rbp)
	movq	$0, -1224(%rbp)
	movq	-1216(%rbp), %rax
	shlq	$4, %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	movq	%rdi, -1680(%rbp)       ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Znwm
	leaq	-848(%rbp), %rcx
	leaq	-856(%rbp), %rdx
	leaq	-912(%rbp), %rdi
	leaq	-904(%rbp), %rsi
	leaq	-768(%rbp), %r8
	leaq	-536(%rbp), %r9
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE(%rip), %r10
	addq	$16, %r10
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %r11
	addq	$16, %r11
	leaq	-1656(%rbp), %rbx
	leaq	-1608(%rbp), %r14
	leaq	-1632(%rbp), %r15
	leaq	-80(%rbp), %r12
	leaq	-96(%rbp), %r13
	movq	%rax, -1688(%rbp)       ## 8-byte Spill
	leaq	-120(%rbp), %rax
	movq	%rax, -1696(%rbp)       ## 8-byte Spill
	leaq	-136(%rbp), %rax
	movq	%rax, -1704(%rbp)       ## 8-byte Spill
	leaq	-1648(%rbp), %rax
	movq	%rax, -1712(%rbp)       ## 8-byte Spill
	movq	-1688(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1720(%rbp)       ## 8-byte Spill
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1176(%rbp)
	movq	%r14, -1184(%rbp)
	movq	$1, -1192(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -1728(%rbp)       ## 8-byte Spill
	movq	-1192(%rbp), %rax
	movq	%rax, -1736(%rbp)       ## 8-byte Spill
	movq	-1184(%rbp), %rax
	movq	%rax, -1744(%rbp)       ## 8-byte Spill
	movq	-1728(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1152(%rbp)
	movq	-1744(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1160(%rbp)
	movq	-1736(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1168(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1752(%rbp)       ## 8-byte Spill
	movq	-1160(%rbp), %rax
	movq	%rax, -1760(%rbp)       ## 8-byte Spill
	movq	-1752(%rbp), %rax       ## 8-byte Reload
	movq	%rcx, -1768(%rbp)       ## 8-byte Spill
	movq	-1760(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, (%rax)
	movq	-1168(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	%r15, -240(%rbp)
	movq	-1720(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -248(%rbp)
	movq	-1712(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	%rax, -1776(%rbp)       ## 8-byte Spill
	movq	-256(%rbp), %rax
	movq	%rax, -1784(%rbp)       ## 8-byte Spill
	movq	-1776(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	-1784(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rcx
	movq	%rax, -1792(%rbp)       ## 8-byte Spill
	movq	-216(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1800(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-1800(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -1808(%rbp)       ## 8-byte Spill
	movq	-224(%rbp), %rax
	movq	%rax, -1816(%rbp)       ## 8-byte Spill
	movq	-1808(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-1816(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -160(%rbp)
	movq	-1792(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rax, -1824(%rbp)       ## 8-byte Spill
	movq	-168(%rbp), %rax
	movq	%rax, -1832(%rbp)       ## 8-byte Spill
	movq	-160(%rbp), %rax
	movq	%rax, -1840(%rbp)       ## 8-byte Spill
	movq	-1832(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-1840(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-1824(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	-1704(%rbp), %rcx       ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -1848(%rbp)       ## 8-byte Spill
	movq	-1696(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1856(%rbp)       ## 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-1856(%rbp), %rax       ## 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -1864(%rbp)       ## 8-byte Spill
	movq	-144(%rbp), %rax
	movq	%rax, -1872(%rbp)       ## 8-byte Spill
	movq	-1864(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	-1872(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-1848(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-88(%rbp), %rcx
	movq	%r13, -64(%rbp)
	movq	-64(%rbp), %r13
	movq	(%r13), %r13
	movq	%r13, (%rcx)
	movq	%r12, -56(%rbp)
	movq	-56(%rbp), %r12
	movq	(%r12), %r13
	movq	%r13, 8(%rcx)
	movq	8(%r12), %r12
	movq	%r12, 16(%rcx)
	movq	%r15, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movq	%rcx, -264(%rbp)
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-1680(%rbp), %r15       ## 8-byte Reload
	addq	$8, %r15
	movq	%r15, -296(%rbp)
	movq	-296(%rbp), %r15
	movq	%r15, -288(%rbp)
	movq	-288(%rbp), %r15
	movq	%rbx, -320(%rbp)
	movq	%r14, -328(%rbp)
	movq	-320(%rbp), %r14
	movq	-328(%rbp), %r12
	movq	%r14, -304(%rbp)
	movq	%r12, -312(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%r15, -1088(%rbp)
	movq	%rbx, -1096(%rbp)
	movq	-1080(%rbp), %rcx
	movq	-1088(%rbp), %rbx
	movq	-1096(%rbp), %r14
	movq	%rcx, -1016(%rbp)
	movq	%rbx, -1024(%rbp)
	movq	%r14, -1032(%rbp)
	movq	-1016(%rbp), %rcx
	movq	%rcx, %rbx
	movq	%rbx, -1008(%rbp)
	movq	-1008(%rbp), %rbx
	movq	%r11, (%rbx)
	movq	%r10, (%rcx)
	addq	$8, %rcx
	movq	-1024(%rbp), %r10
	movq	%r10, -544(%rbp)
	movq	-544(%rbp), %r10
	movq	%r10, -528(%rbp)
	movq	-528(%rbp), %r10
	movq	%r9, -512(%rbp)
	movq	%r10, -520(%rbp)
	movq	-512(%rbp), %r9
	movq	-520(%rbp), %r10
	movq	%r9, -464(%rbp)
	movq	%r10, -472(%rbp)
	movq	-464(%rbp), %r9
	movq	-472(%rbp), %r10
	movq	%r9, -448(%rbp)
	movq	%r10, -456(%rbp)
	movq	-448(%rbp), %r9
	movq	-456(%rbp), %r10
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	%r10, -360(%rbp)
	movq	-360(%rbp), %r10
	movq	%r9, -344(%rbp)
	movq	%r10, -352(%rbp)
	movq	-344(%rbp), %r9
	movq	-352(%rbp), %r10
	movq	%r10, -336(%rbp)
	movq	-336(%rbp), %r10
	movq	%r10, (%r9)
	movq	-536(%rbp), %r9
	movq	%r9, -1048(%rbp)
	movq	-1032(%rbp), %r9
	movq	%r9, -552(%rbp)
	movq	-552(%rbp), %r9
	movq	%r9, -776(%rbp)
	movq	-776(%rbp), %r9
	movq	%r9, -760(%rbp)
	movq	-760(%rbp), %r9
	movq	%r8, -744(%rbp)
	movq	%r9, -752(%rbp)
	movq	-744(%rbp), %r8
	movq	-752(%rbp), %r9
	movq	%r8, -696(%rbp)
	movq	%r9, -704(%rbp)
	movq	-696(%rbp), %r8
	movq	-704(%rbp), %r9
	movq	%r9, -688(%rbp)
	movq	-688(%rbp), %r9
	movq	%r8, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	-672(%rbp), %r8
	movq	-680(%rbp), %r9
	movq	%r8, -624(%rbp)
	movq	%r9, -632(%rbp)
	movq	-624(%rbp), %r8
	movq	-632(%rbp), %r9
	movq	%r9, -584(%rbp)
	movq	-584(%rbp), %r9
	movq	%r8, -568(%rbp)
	movq	%r9, -576(%rbp)
	movq	-568(%rbp), %r8
	movq	-576(%rbp), %r9
	movq	%r9, -560(%rbp)
	movq	-560(%rbp), %r9
	movq	%r9, (%r8)
	movq	-768(%rbp), %r8
	movq	%r8, -1056(%rbp)
	movq	-1048(%rbp), %r8
	movq	-1056(%rbp), %r9
	movq	%r8, -976(%rbp)
	movq	%r9, -984(%rbp)
	movq	%rcx, -992(%rbp)
	movq	-992(%rbp), %rcx
	movq	-976(%rbp), %r8
	movq	-984(%rbp), %r9
	movq	%r8, -904(%rbp)
	movq	%r9, -912(%rbp)
	movq	%rcx, -920(%rbp)
	movq	-920(%rbp), %rcx
	movq	%rsi, -888(%rbp)
	movq	-888(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -936(%rbp)
	movq	%rdi, -784(%rbp)
	movq	-784(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -944(%rbp)
	movq	-936(%rbp), %rsi
	movq	-944(%rbp), %rdi
	movq	%rsi, -848(%rbp)
	movq	%rdi, -856(%rbp)
	movq	%rcx, -880(%rbp)
	movq	-880(%rbp), %rcx
	movq	%rdx, -832(%rbp)
	movq	-832(%rbp), %rdx
	movq	%rdx, -824(%rbp)
	movq	-824(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -792(%rbp)
	movq	-1768(%rbp), %rdx       ## 8-byte Reload
	movq	%rdx, -808(%rbp)
	movq	-808(%rbp), %rsi
	movq	%rsi, -800(%rbp)
	movq	-800(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -816(%rbp)
	movq	-816(%rbp), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rcx)
## BB#1:
	leaq	-1632(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-1136(%rbp), %rcx
	movq	%rcx, -1128(%rbp)
	movq	-1128(%rbp), %rdx
	movq	%rdx, -1120(%rbp)
	movq	-1120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1144(%rbp)
	movq	%rcx, -1112(%rbp)
	movq	-1112(%rbp), %rcx
	movq	%rcx, -1104(%rbp)
	movq	-1104(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-1144(%rbp), %rcx
	movq	%rax, -1384(%rbp)
	movq	-1384(%rbp), %rax
	movq	%rax, -1376(%rbp)
	movq	-1376(%rbp), %rax
	movq	%rax, -1352(%rbp)
	movq	$0, -1360(%rbp)
	movq	-1352(%rbp), %rax
	movq	%rax, -1344(%rbp)
	movq	-1344(%rbp), %rdx
	movq	%rdx, -1336(%rbp)
	movq	-1336(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -1368(%rbp)
	movq	-1360(%rbp), %rdx
	movq	%rax, -1256(%rbp)
	movq	-1256(%rbp), %rsi
	movq	%rsi, -1248(%rbp)
	movq	-1248(%rbp), %rsi
	movq	%rdx, (%rsi)
	cmpq	$0, -1368(%rbp)
	movq	%rcx, -1880(%rbp)       ## 8-byte Spill
	movq	%rax, -1888(%rbp)       ## 8-byte Spill
	je	LBB189_3
## BB#2:
	movq	-1888(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -1240(%rbp)
	movq	-1240(%rbp), %rcx
	movq	%rcx, -1232(%rbp)
	movq	-1232(%rbp), %rcx
	addq	$8, %rcx
	movq	-1368(%rbp), %rdx
	movq	%rcx, -1320(%rbp)
	movq	%rdx, -1328(%rbp)
	movq	-1320(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-1328(%rbp), %rsi
	movq	8(%rcx), %rcx
	movq	%rdx, -1296(%rbp)
	movq	%rsi, -1304(%rbp)
	movq	%rcx, -1312(%rbp)
	movq	-1296(%rbp), %rcx
	movq	-1304(%rbp), %rdx
	movq	-1312(%rbp), %rsi
	movq	%rcx, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rsi, -1288(%rbp)
	movq	-1280(%rbp), %rcx
	movq	%rcx, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	callq	__ZdlPv
LBB189_3:
	movq	-1880(%rbp), %rax       ## 8-byte Reload
	addq	$1848, %rsp             ## imm = 0x738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp739:
	.cfi_def_cfa_offset 16
Ltmp740:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp741:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              ## imm = 0x2A0
Ltmp742:
	.cfi_offset %rbx, -40
Ltmp743:
	.cfi_offset %r14, -32
Ltmp744:
	.cfi_offset %r15, -24
	leaq	-544(%rbp), %rax
	leaq	-552(%rbp), %rcx
	leaq	-608(%rbp), %rdx
	leaq	-600(%rbp), %r8
	leaq	-464(%rbp), %r9
	leaq	-248(%rbp), %r10
	leaq	__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE(%rip), %r11
	addq	$16, %r11
	movq	__ZTVNSt3__110__function6__baseIFivEEE@GOTPCREL(%rip), %rbx
	addq	$16, %rbx
	movq	%rdi, -816(%rbp)
	movq	%rsi, -824(%rbp)
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rdi
	movq	%rsi, %r14
	addq	$8, %r14
	movq	%r14, -808(%rbp)
	movq	-808(%rbp), %r14
	movq	%r14, -800(%rbp)
	movq	-800(%rbp), %r14
	addq	$8, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rdi, -776(%rbp)
	movq	%r14, -784(%rbp)
	movq	%rsi, -792(%rbp)
	movq	-776(%rbp), %rsi
	movq	-784(%rbp), %rdi
	movq	-792(%rbp), %r14
	movq	%rsi, -712(%rbp)
	movq	%rdi, -720(%rbp)
	movq	%r14, -728(%rbp)
	movq	-712(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rdi, -704(%rbp)
	movq	-704(%rbp), %rdi
	movq	%rbx, (%rdi)
	movq	%r11, (%rsi)
	addq	$8, %rsi
	movq	-720(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, -240(%rbp)
	movq	-240(%rbp), %rdi
	movq	%r10, -224(%rbp)
	movq	%rdi, -232(%rbp)
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %r10
	movq	%rdi, -176(%rbp)
	movq	%r10, -184(%rbp)
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r10
	movq	%rdi, -160(%rbp)
	movq	%r10, -168(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %r10
	movq	%rdi, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %r10
	movq	%r10, -72(%rbp)
	movq	-72(%rbp), %r10
	movq	%rdi, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%r10, -48(%rbp)
	movq	-48(%rbp), %r10
	movq	%r10, (%rdi)
	movq	-248(%rbp), %rdi
	movq	%rdi, -744(%rbp)
	movq	-728(%rbp), %rdi
	movq	%rdi, -472(%rbp)
	movq	-472(%rbp), %rdi
	movq	%rdi, -456(%rbp)
	movq	-456(%rbp), %rdi
	movq	%r9, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	-440(%rbp), %rdi
	movq	-448(%rbp), %r9
	movq	%rdi, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %r9
	movq	%rdi, -376(%rbp)
	movq	%r9, -384(%rbp)
	movq	-376(%rbp), %rdi
	movq	-384(%rbp), %r9
	movq	%rdi, -328(%rbp)
	movq	%r9, -336(%rbp)
	movq	-328(%rbp), %rdi
	movq	-336(%rbp), %r9
	movq	%r9, -288(%rbp)
	movq	-288(%rbp), %r9
	movq	%rdi, -272(%rbp)
	movq	%r9, -280(%rbp)
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %r9
	movq	%r9, -264(%rbp)
	movq	-264(%rbp), %r9
	movq	%r9, (%rdi)
	movq	-464(%rbp), %rdi
	movq	%rdi, -752(%rbp)
	movq	-744(%rbp), %rdi
	movq	-752(%rbp), %r9
	movq	%rdi, -672(%rbp)
	movq	%r9, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	-688(%rbp), %rsi
	movq	-672(%rbp), %rdi
	movq	-680(%rbp), %r9
	movq	%rdi, -600(%rbp)
	movq	%r9, -608(%rbp)
	movq	%rsi, -616(%rbp)
	movq	-616(%rbp), %rsi
	movq	%r8, -584(%rbp)
	movq	-584(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -632(%rbp)
	movq	%rdx, -480(%rbp)
	movq	-480(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -640(%rbp)
	movq	-632(%rbp), %rdx
	movq	-640(%rbp), %rdi
	movq	%rdx, -544(%rbp)
	movq	%rdi, -552(%rbp)
	movq	%rsi, -576(%rbp)
	movq	-576(%rbp), %rdx
	movq	%rcx, -528(%rbp)
	movq	-528(%rbp), %rcx
	movq	%rcx, -520(%rbp)
	movq	-520(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -488(%rbp)
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movl	(%rax), %r15d
	movl	%r15d, (%rdx)
	addq	$672, %rsp              ## imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7destroyEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7destroyEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp745:
	.cfi_def_cfa_offset 16
Ltmp746:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp747:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE18destroy_deallocateEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE18destroy_deallocateEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp748:
	.cfi_def_cfa_offset 16
Ltmp749:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp750:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-96(%rbp), %rax
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	__ZdlPv
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEclEv: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEclEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp751:
	.cfi_def_cfa_offset 16
Ltmp752:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp753:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	addq	$8, %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EEEiDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE6targetERKSt9type_info: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE6targetERKSt9type_info"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp754:
	.cfi_def_cfa_offset 16
Ltmp755:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp756:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3(%rip), %rax
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdi
	cmpq	8(%rdi), %rax
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	jne	LBB194_2
## BB#1:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB194_3
LBB194_2:
	movq	$0, -40(%rbp)
LBB194_3:
	movq	-40(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE11target_typeEv: ## @"_ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE11target_typeEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp757:
	.cfi_def_cfa_offset 16
Ltmp758:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp759:
	.cfi_def_cfa_register %rbp
	leaq	__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3(%rip), %rax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED2Ev: ## @"_ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED2Ev"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp760:
	.cfi_def_cfa_offset 16
Ltmp761:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp762:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EEEiDpOT_: ## @"_ZNSt3__128__invoke_void_return_wrapperIiE6__callIJRZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3EEEiDpOT_"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp763:
	.cfi_def_cfa_offset 16
Ltmp764:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp765:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_3clEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.align	4, 0x90
__ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_3clEv: ## @"_ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_3clEv"
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp766:
	.cfi_def_cfa_offset 16
Ltmp767:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp768:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__18functionIFivEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFivEED2Ev
	.align	4, 0x90
__ZNSt3__18functionIFivEED2Ev:          ## @_ZNSt3__18functionIFivEED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp769:
	.cfi_def_cfa_offset 16
Ltmp770:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp771:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rax
	movq	%rdi, %rcx
	cmpq	%rcx, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	jne	LBB199_2
## BB#1:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*32(%rdx)
	jmp	LBB199_5
LBB199_2:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	cmpq	$0, 32(%rax)
	je	LBB199_4
## BB#3:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*40(%rdx)
LBB199_4:
	jmp	LBB199_5
LBB199_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED2Ev
	.weak_def_can_be_hidden	__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED2Ev
	.align	4, 0x90
__ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED2Ev: ## @_ZNSt3__18functionIFiRKNS0_IFivEEES4_S4_EED2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp772:
	.cfi_def_cfa_offset 16
Ltmp773:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp774:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rax
	movq	%rdi, %rcx
	cmpq	%rcx, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	jne	LBB200_2
## BB#1:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*32(%rdx)
	jmp	LBB200_5
LBB200_2:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	cmpq	$0, 32(%rax)
	je	LBB200_4
## BB#3:
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*40(%rdx)
LBB200_4:
	jmp	LBB200_5
LBB200_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__DATA,__const
	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE"
__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED1Ev
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EED0Ev
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7__cloneEPNS0_6__baseISB_EE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE7destroyEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEclESA_SA_SA_
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EE11target_typeEv

	.section	__TEXT,__const
__ZNSt3__1L19piecewise_constructE:      ## @_ZNSt3__1L19piecewise_constructE
	.space	1

	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE"
__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE:
	.asciz	"NSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE"

	.globl	__ZTSNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE ## @_ZTSNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.weak_definition	__ZTSNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.align	4
__ZTSNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE:
	.asciz	"NSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE ## @_ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.weak_definition	__ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.align	3
__ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE"
__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0NS_9allocatorIS3_EEFiRKNS_8functionIFivEEESA_SA_EEE
	.quad	__ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE

	.section	__DATA,__data
	.globl	__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE ## @_ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.align	3
__ZTVNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EEE
	.quad	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED1Ev
	.quad	__ZNSt3__110__function6__baseIFiRKNS_8functionIFivEEES6_S6_EED0Ev
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__TEXT,__const
	.globl	__ZTSNSt3__117bad_function_callE ## @_ZTSNSt3__117bad_function_callE
	.weak_definition	__ZTSNSt3__117bad_function_callE
	.align	4
__ZTSNSt3__117bad_function_callE:
	.asciz	"NSt3__117bad_function_callE"

	.section	__DATA,__data
	.globl	__ZTINSt3__117bad_function_callE ## @_ZTINSt3__117bad_function_callE
	.weak_definition	__ZTINSt3__117bad_function_callE
	.align	4
__ZTINSt3__117bad_function_callE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__117bad_function_callE
	.quad	__ZTISt9exception

	.globl	__ZTVNSt3__117bad_function_callE ## @_ZTVNSt3__117bad_function_callE
	.weak_def_can_be_hidden	__ZTVNSt3__117bad_function_callE
	.align	3
__ZTVNSt3__117bad_function_callE:
	.quad	0
	.quad	__ZTINSt3__117bad_function_callE
	.quad	__ZNSt3__117bad_function_callD1Ev
	.quad	__ZNSt3__117bad_function_callD0Ev
	.quad	__ZNKSt9exception4whatEv

	.section	__DATA,__const
	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE"

	.globl	__ZTSNSt3__110__function6__baseIFivEEE ## @_ZTSNSt3__110__function6__baseIFivEEE
	.weak_definition	__ZTSNSt3__110__function6__baseIFivEEE
	.align	4
__ZTSNSt3__110__function6__baseIFivEEE:
	.asciz	"NSt3__110__function6__baseIFivEEE"

	.section	__DATA,__data
	.globl	__ZTINSt3__110__function6__baseIFivEEE ## @_ZTINSt3__110__function6__baseIFivEEE
	.weak_definition	__ZTINSt3__110__function6__baseIFivEEE
	.align	3
__ZTINSt3__110__function6__baseIFivEEE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__baseIFivEEE

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE2_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__DATA,__data
	.globl	__ZTVNSt3__110__function6__baseIFivEEE ## @_ZTVNSt3__110__function6__baseIFivEEE
	.weak_def_can_be_hidden	__ZTVNSt3__110__function6__baseIFivEEE
	.align	3
__ZTVNSt3__110__function6__baseIFivEEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__baseIFivEEE
	.quad	__ZNSt3__110__function6__baseIFivEED1Ev
	.quad	__ZNSt3__110__function6__baseIFivEED0Ev
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual
	.quad	___cxa_pure_virtual

	.section	__DATA,__const
	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE2_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_"
__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_:
	.asciz	"ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_"
__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE2_clEvEUlvE_

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE0_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE0_

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE1_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE1_

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE2_

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE3_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE3_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_"
__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_:
	.asciz	"ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_"
__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE3_clEvEUlvE_

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE_

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE3_

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE"
__ZTVNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE"
__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE"
__ZTINSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_EUlvE4_NS_9allocatorIS9_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTVNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED1Ev
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_ED0Ev
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7__cloneEPNS0_6__baseIS5_EE
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E7destroyEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EclEv
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_E11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.asciz	"NSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE"
__ZTINSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNS_8functionIFivEEES8_S8_ENKUlvE4_clEvEUlvE_NS_9allocatorISA_EES5_EE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_"
__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_:
	.asciz	"ZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_"
__ZTIZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_ENKUlvE4_clEvEUlvE_

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_"
__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_:
	.asciz	"ZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_"
__ZTIZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZZN12_GLOBAL__N_110tarai_lazyEiiiENK3$_0clERKNSt3__18functionIFivEEES6_S6_EUlvE4_

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0"
__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0:
	.asciz	"ZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0"
__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_0

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE"
__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED1Ev
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEED0Ev
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE7destroyEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEclEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEE11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE"
__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE:
	.asciz	"NSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE"
__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1NS_9allocatorIS3_EEFivEEE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1"
__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1:
	.asciz	"ZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1"
__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_1

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE"
__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED1Ev
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEED0Ev
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE7destroyEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEclEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEE11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE"
__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE:
	.asciz	"NSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE"
__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2NS_9allocatorIS3_EEFivEEE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2"
__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2:
	.asciz	"ZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2"
__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_2

	.align	3                       ## @"_ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE"
__ZTVNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE:
	.quad	0
	.quad	__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED1Ev
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEED0Ev
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7__cloneEPNS0_6__baseIS6_EE
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE7destroyEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE18destroy_deallocateEv
	.quad	__ZNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEclEv
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE6targetERKSt9type_info
	.quad	__ZNKSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEE11target_typeEv

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE"
__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE:
	.asciz	"NSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE"

	.section	__DATA,__const
	.align	4                       ## @"_ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE"
__ZTINSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__110__function6__funcIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3NS_9allocatorIS3_EEFivEEE
	.quad	__ZTINSt3__110__function6__baseIFivEEE

	.section	__TEXT,__const
	.align	4                       ## @"_ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3"
__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3:
	.asciz	"ZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3"

	.section	__DATA,__const
	.align	3                       ## @"_ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3"
__ZTIZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTSZN12_GLOBAL__N_110tarai_lazyEiiiE3$_3


.subsections_via_symbols
