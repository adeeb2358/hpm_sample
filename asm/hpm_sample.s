	.file	"hpm_sample.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
#APP
	
.globl func
    .type func, @function
    func:
    .cfi_startproc
    movl $7, %eax
    ret
    .cfi_endproc

.LC0:
	.string	"="
.LC1:
	.string	"\n"
.LC2:
	.string	""
#NO_APP
	.text
	.globl	_Z10getCpuNameB5cxx11v
	.type	_Z10getCpuNameB5cxx11v, @function
_Z10getCpuNameB5cxx11v:
.LFB6349:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6349
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	-48(%rbp), %eax
#APP
# 27 "hpm_sample.cpp" 1
	cpuid
	
# 0 "" 2
#NO_APP
	movl	%ebx, %esi
	movl	%eax, -44(%rbp)
	movl	%esi, -40(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -68(%rbp)
.L3:
	cmpl	$4, -68(%rbp)
	jg	.L2
	movl	-68(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB0:
	call	_ZNSolsEi@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE0:
	addl	$1, -68(%rbp)
	jmp	.L3
.L2:
	leaq	-69(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-69(%rbp), %rdx
	movq	-88(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE1:
	leaq	-69(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L6
	jmp	.L8
.L7:
	movq	%rax, %rbx
	leaq	-69(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L8:
	call	__stack_chk_fail@PLT
.L6:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6349:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA6349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6349-.LLSDACSB6349
.LLSDACSB6349:
	.uleb128 .LEHB0-.LFB6349
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6349
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB6349
	.uleb128 0
	.uleb128 .LEHB2-.LFB6349
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE6349:
	.text
	.size	_Z10getCpuNameB5cxx11v, .-_Z10getCpuNameB5cxx11v
	.globl	_Z12optimizationv
	.type	_Z12optimizationv, @function
_Z12optimizationv:
.LFB6350:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$67108864, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6350:
	.size	_Z12optimizationv, .-_Z12optimizationv
	.section	.rodata
.LC3:
	.string	"cpuName="
.LC4:
	.string	"n= "
.LC5:
	.string	"7*5 = "
	.text
	.globl	_Z10hpm_samplev
	.type	_Z10hpm_samplev, @function
_Z10hpm_samplev:
.LFB6351:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6351
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx
	subq	$672, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Z10getCpuNameB5cxx11v
.LEHE3:
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-192(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	call	func@PLT
	movl	%eax, -652(%rbp)
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-652(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	-652(%rbp), %eax
#APP
# 52 "hpm_sample.cpp" 1
	leal (%eax,%eax,4),%eax
# 0 "" 2
#NO_APP
	movl	%eax, -652(%rbp)
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-652(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	vmovaps	.LC6(%rip), %xmm0
	vmovaps	%xmm0, -560(%rbp)
	vmovaps	.LC7(%rip), %xmm0
	vmovaps	%xmm0, -544(%rbp)
	vmovaps	-560(%rbp), %xmm0
	vmovaps	%xmm0, -432(%rbp)
	vmovaps	-544(%rbp), %xmm0
	vmovaps	%xmm0, -416(%rbp)
	vmovaps	-432(%rbp), %xmm0
	vaddps	-416(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -528(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -648(%rbp)
	vmovaps	-528(%rbp), %xmm0
	vmovaps	%xmm0, -448(%rbp)
	movq	-648(%rbp), %rax
	vmovaps	-448(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	$0, -664(%rbp)
.L16:
	cmpl	$7, -664(%rbp)
	jg	.L15
	movl	-664(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-664(%rbp), %eax
	cltq
	movl	-160(%rbp,%rax,4), %eax
	movl	%eax, -676(%rbp)
	vmovss	-676(%rbp), %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEf@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	addl	$1, -664(%rbp)
	jmp	.L16
.L15:
	vmovss	.LC8(%rip), %xmm0
	vmovss	%xmm0, -128(%rbp)
	vmovss	.LC9(%rip), %xmm0
	vmovss	%xmm0, -124(%rbp)
	vmovss	.LC10(%rip), %xmm0
	vmovss	%xmm0, -120(%rbp)
	vmovss	.LC11(%rip), %xmm0
	vmovss	%xmm0, -116(%rbp)
	vmovss	.LC12(%rip), %xmm0
	vmovss	%xmm0, -112(%rbp)
	vmovss	.LC13(%rip), %xmm0
	vmovss	%xmm0, -108(%rbp)
	vmovss	.LC14(%rip), %xmm0
	vmovss	%xmm0, -104(%rbp)
	vmovss	.LC15(%rip), %xmm0
	vmovss	%xmm0, -100(%rbp)
	vmovss	.LC9(%rip), %xmm0
	vmovss	%xmm0, -96(%rbp)
	vmovss	.LC14(%rip), %xmm0
	vmovss	%xmm0, -92(%rbp)
	vmovss	.LC15(%rip), %xmm0
	vmovss	%xmm0, -88(%rbp)
	vmovss	.LC16(%rip), %xmm0
	vmovss	%xmm0, -84(%rbp)
	vmovss	.LC9(%rip), %xmm0
	vmovss	%xmm0, -80(%rbp)
	vmovss	.LC14(%rip), %xmm0
	vmovss	%xmm0, -76(%rbp)
	vmovss	.LC17(%rip), %xmm0
	vmovss	%xmm0, -72(%rbp)
	vmovss	.LC18(%rip), %xmm0
	vmovss	%xmm0, -68(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -512(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -496(%rbp)
	vmovaps	-512(%rbp), %xmm0
	vmovaps	%xmm0, -352(%rbp)
	vmovaps	-496(%rbp), %xmm0
	vmovaps	%xmm0, -336(%rbp)
	vmovaps	-352(%rbp), %xmm0
	vmulps	-336(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -480(%rbp)
	vmovaps	-480(%rbp), %xmm0
	vmovaps	%xmm0, -384(%rbp)
	vmovaps	-480(%rbp), %xmm0
	vmovaps	%xmm0, -368(%rbp)
	vmovaps	-384(%rbp), %xmm0
	vaddps	-368(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -464(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -640(%rbp)
	vmovaps	-464(%rbp), %xmm0
	vmovaps	%xmm0, -400(%rbp)
	movq	-640(%rbp), %rax
	vmovaps	-400(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	$0, -660(%rbp)
.L22:
	cmpl	$3, -660(%rbp)
	jg	.L21
	movl	-660(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	movl	%eax, -676(%rbp)
	vmovss	-676(%rbp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	addl	$1, -660(%rbp)
	jmp	.L22
.L21:
	leaq	-128(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -600(%rbp)
	movq	-600(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -512(%rbp)
	leaq	-96(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -496(%rbp)
	vmovaps	-512(%rbp), %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovaps	-496(%rbp), %xmm0
	vmovaps	%xmm0, -256(%rbp)
	vmovaps	-272(%rbp), %xmm0
	vmulps	-256(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -480(%rbp)
	vmovaps	-480(%rbp), %xmm0
	vmovaps	%xmm0, -304(%rbp)
	vmovaps	-480(%rbp), %xmm0
	vmovaps	%xmm0, -288(%rbp)
	vmovaps	-304(%rbp), %xmm0
	vaddps	-288(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -464(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)
	vmovaps	-464(%rbp), %xmm0
	vmovaps	%xmm0, -320(%rbp)
	movq	-616(%rbp), %rax
	vmovaps	-320(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	$0, -656(%rbp)
.L28:
	cmpl	$3, -656(%rbp)
	jg	.L27
	movl	-656(%rbp), %eax
	cltq
	movl	-64(%rbp,%rax,4), %eax
	movl	%eax, -676(%rbp)
	vmovss	-676(%rbp), %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEf@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE4:
	addl	$1, -656(%rbp)
	jmp	.L28
.L27:
	vmovsd	.LC19(%rip), %xmm0
	vmovsd	%xmm0, -592(%rbp)
	vmovsd	.LC20(%rip), %xmm0
	vmovsd	%xmm0, -584(%rbp)
	vmovsd	.LC21(%rip), %xmm0
	vmovsd	%xmm0, -576(%rbp)
	vmovsd	.LC22(%rip), %xmm0
	vmovsd	%xmm0, -568(%rbp)
	vmovsd	-592(%rbp), %xmm0
	vmovsd	-584(%rbp), %xmm1
	vunpcklpd	%xmm0, %xmm1, %xmm1
	vmovsd	-576(%rbp), %xmm0
	vmovsd	-568(%rbp), %xmm2
	vunpcklpd	%xmm0, %xmm2, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmovapd	%ymm0, -240(%rbp)
	call	_Z12optimizationv
	nop
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L32
	jmp	.L34
.L33:
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L34:
	call	__stack_chk_fail@PLT
.L32:
	addq	$672, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6351:
	.section	.gcc_except_table
.LLSDA6351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6351-.LLSDACSB6351
.LLSDACSB6351:
	.uleb128 .LEHB3-.LFB6351
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB6351
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L33-.LFB6351
	.uleb128 0
	.uleb128 .LEHB5-.LFB6351
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE6351:
	.text
	.size	_Z10hpm_samplev, .-_Z10hpm_samplev
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB6867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L37
	cmpl	$65535, -8(%rbp)
	jne	.L37
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L37:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6867:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z10getCpuNameB5cxx11v, @function
_GLOBAL__sub_I__Z10getCpuNameB5cxx11v:
.LFB6868:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6868:
	.size	_GLOBAL__sub_I__Z10getCpuNameB5cxx11v, .-_GLOBAL__sub_I__Z10getCpuNameB5cxx11v
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z10getCpuNameB5cxx11v
	.section	.rodata
	.align 16
.LC6:
	.long	1082130432
	.long	1077936128
	.long	1073741824
	.long	1065353216
	.align 16
.LC7:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
	.align 4
.LC8:
	.long	1066192077
	.align 4
.LC9:
	.long	1067030938
	.align 4
.LC10:
	.long	1067869798
	.align 4
.LC11:
	.long	1097334784
	.align 4
.LC12:
	.long	1078355558
	.align 4
.LC13:
	.long	1084647014
	.align 4
.LC14:
	.long	1075000115
	.align 4
.LC15:
	.long	1079613850
	.align 4
.LC16:
	.long	1080033280
	.align 4
.LC17:
	.long	1082549862
	.align 4
.LC18:
	.long	1074580685
	.align 8
.LC19:
	.long	0
	.long	1072693248
	.align 8
.LC20:
	.long	0
	.long	1073741824
	.align 8
.LC21:
	.long	0
	.long	1074266112
	.align 8
.LC22:
	.long	0
	.long	1074790400
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
