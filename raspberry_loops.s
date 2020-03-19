	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_millis                 ## -- Begin function millis
	.p2align	4, 0x90
_millis:                                ## @millis
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-16(%rbp), %rdi
	callq	_gettimeofday
	imulq	$1000, -16(%rbp), %rsi  ## imm = 0x3E8
	movl	-8(%rbp), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	$1000, %ecx             ## imm = 0x3E8
	idivl	%ecx
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function loop1
LCPI1_0:
	.long	1092616192              ## float 10
LCPI1_1:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_loop1
	.p2align	4, 0x90
_loop1:                                 ## @loop1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	LCPI1_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
	movq	_nowtime@GOTPCREL(%rip), %rax
	movq	(%rax), %rsi
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	%eax, -8(%rbp)          ## 4-byte Spill
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rsi
	movq	%rax, (%rsi)
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$1, %rax
	jae	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_2 Depth=2
	movss	LCPI1_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	LBB1_2
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function loop2
LCPI2_0:
	.long	1092616192              ## float 10
LCPI2_1:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_loop2
	.p2align	4, 0x90
_loop2:                                 ## @loop2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	LCPI2_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_2 Depth 2
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
LBB2_2:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$1, %rax
	jae	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=2
	movss	LCPI2_1(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	LBB2_2
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_1
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function loop3
LCPI3_0:
	.long	1086324736              ## float 6
LCPI3_1:
	.long	1092616192              ## float 10
LCPI3_2:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_loop3
	.p2align	4, 0x90
_loop3:                                 ## @loop3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI3_1(%rip), %xmm1    ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -4(%rbp)
	movss	%xmm0, -8(%rbp)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_2 Depth 2
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
LBB3_2:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	callq	_millis
	movq	_nowtime@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	cmpq	$1, %rax
	jae	LBB3_4
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=2
	movss	LCPI3_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	LBB3_2
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_1
	.cfi_endproc
                                        ## -- End function
	.globl	_loop4                  ## -- Begin function loop4
	.p2align	4, 0x90
_loop4:                                 ## @loop4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	jmp	LBB4_1
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	jmp	LBB4_1
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function loop5
LCPI5_0:
	.long	1086324736              ## float 6
LCPI5_1:
	.long	1092616192              ## float 10
LCPI5_2:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_loop5
	.p2align	4, 0x90
_loop5:                                 ## @loop5
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movss	LCPI5_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI5_1(%rip), %xmm1    ## xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -4(%rbp)
	movss	%xmm0, -8(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	movss	LCPI5_2(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-8(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	LBB5_1
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, -8(%rbp)
	jge	LBB6_2
## %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$-1, -4(%rbp)
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	jmp	LBB6_10
LBB6_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_atoi
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %edi
	subl	$4, %eax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	ja	LBB6_3
## %bb.11:
	leaq	LJTI6_0(%rip), %rax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB6_3:
	jmp	LBB6_4
LBB6_4:
	callq	_loop1
	jmp	LBB6_9
LBB6_5:
	callq	_loop2
	jmp	LBB6_9
LBB6_6:
	callq	_loop3
	jmp	LBB6_9
LBB6_7:
	callq	_loop4
	jmp	LBB6_9
LBB6_8:
	callq	_loop5
LBB6_9:
	movl	$0, -4(%rbp)
LBB6_10:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L6_0_set_4, LBB6_4-LJTI6_0
.set L6_0_set_5, LBB6_5-LJTI6_0
.set L6_0_set_6, LBB6_6-LJTI6_0
.set L6_0_set_7, LBB6_7-LJTI6_0
.set L6_0_set_8, LBB6_8-LJTI6_0
LJTI6_0:
	.long	L6_0_set_4
	.long	L6_0_set_5
	.long	L6_0_set_6
	.long	L6_0_set_7
	.long	L6_0_set_8
	.end_data_region
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%lu\n%f\n"

	.comm	_nowtime,8,3            ## @nowtime
L_.str.1:                               ## @.str.1
	.asciz	"Usage: %s {1,2,3,4,5}\n"


.subsections_via_symbols
