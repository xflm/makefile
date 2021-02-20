
STACK_SIZES = 1024*4;

ENTRY(Reset_Handler)

MEMORY
{
	SRAM(RX)	: ORIGIN = 0x20000000, LENGTH = 20K /* 0x20005000 */
}

SECTIONS
{
	.text : {
		. = ALIGN(0x4);
		KEEP(*(.vector))
		. = ALIGN(4);
		KEEP(*(.text.keep.user))
		. = ALIGN(4);
		*(.text)
		*(.text.*)
		*(.glue_7)
		*(.glue_7t)
		*(.eh_frame)
		KEEP(*(.init))
		KEEP(*(.fini))
		. = ALIGN(4);
	} > SRAM

	.rodata : {
		. = ALIGN(4);
		*(.rodata)
		*(.rodata.*)
		. = ALIGN(4);
	} > SRAM

	PROVIDE(_sidata = LOADADDR(.data));

	.data : {
		. = ALIGN(0x4);
		PROVIDE(_sdata = .);
		*(.run_in_ram)
		. = ALIGN(0x4);
		*(.data)
		*(.data.*)
		. = ALIGN(0x4);
		PROVIDE(_edata = .);
	} > SRAM

	.bss : {
		. = ALIGN(0x4);
		*(.bss.no_init.user)
		. = ALIGN(4);
		. += STACK_SIZES;
		. = ALIGN(4);
		PROVIDE(_estack = .);
		PROVIDE(_sbss = .);
		*(.bss)
		*(.bss.*)
		*(COMMON)
		. = ALIGN(0x4);
		PROVIDE(_ebss = .);
	} > SRAM

	/DISCARD/ : {
		libc.a ( * )
		libm.a ( * )
		libgcc.a ( * )
	}

	.mlds.sram : {mlds_sram = .;} > SRAM
}

PROVIDE(__bin_start = ORIGIN(SRAM));
PROVIDE(__bin_sizes = ABSOLUTE(mlds_sram)-ORIGIN(SRAM)-SIZEOF(.bss));

sram_mlds_used_sram   = ABSOLUTE(mlds_sram)-ORIGIN(SRAM);
sram_mlds_unused_sram = LENGTH(SRAM)-ABSOLUTE(sram_mlds_used_sram);

