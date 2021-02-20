	.thumb
	.text
	.global		Reset_Handler
	.type		Reset_Handler,		%function
	.align		2


Reset_Handler:
	ldr		r0,		=_estack
	mov		sp,		r0
	
init_data:
	ldr		r0,		=_sdata
	ldr		r1,		=_edata
	ldr		r2,		=_sidata
	cmp		r0,		r1
	beq		clear_bss
	cmp		r0,		r2
	beq		clear_bss
init_data_loop:
	ldr		r5,		[r2]
	str		r5,		[r0]
	add		r0,		#4
	add		r2,		#4
	cmp		r0,		r1
	blt		init_data_loop

clear_bss:
	mov		r4,		#0
	ldr		r0,		=_sbss
	ldr		r1,		=_ebss
	cmp		r0,		r1
	beq		to_main
clear_bss_loop:
	str		r4,		[r0]
	add		r0,		#4
	cmp		r0,		r1
	blt		clear_bss_loop

to_main:
	// call main (of the C code)
	bl		main

exit:
	b		.

