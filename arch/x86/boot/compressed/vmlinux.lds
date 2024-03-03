OUTPUT_FORMAT("elf32-i386", "elf32-i386", "elf32-i386")
OUTPUT_ARCH(i386)
ENTRY(startup_32)
SECTIONS
{
 . = 0;
 .head.text : {
  _head = . ;
  *(.head.text)
  _ehead = . ;
 }
 .rodata..compressed : {
  *(.rodata..compressed)
 }
 .text : {
  _text = .;
  *(.text)
  *(.text.*)
  _etext = . ;
 }
 .rodata : {
  _rodata = . ;
  *(.rodata)
  *(.rodata.*)
  _erodata = . ;
 }
 .got : {
  _got = .;
  KEEP(*(.got.plt))
  KEEP(*(.got))
  _egot = .;
 }
 .data : {
  _data = . ;
  *(.data)
  *(.data.*)
  _edata = . ;
 }
 . = ALIGN((1 << (5)));
 .bss : {
  _bss = . ;
  *(.bss)
  *(.bss.*)
  *(COMMON)
  . = ALIGN(8);
  _ebss = .;
 }
 . = ALIGN((1 << 12));
 _end = .;
}
