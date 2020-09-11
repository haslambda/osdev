global loader

MAGIC_NUM equ 0x1badb002
FLAGS equ 0x0
CHKSUM equ -MAGIC_NUM
KERNEL_STACK_SIZE equ 16384

section .bss:
align 16
stack_bottom:
  resb KERNEL_STACK_SIZE
stack_top:

section .text:
align 4
  dd MAGIC_NUM
  dd FLAGS
  dd CHKSUM

loader:
  mov esp, stack_top

.loop:
  jmp .loop
