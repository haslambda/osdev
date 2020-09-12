global loader
MAGIC_NUM equ 0x1badb002
FLAGS equ 0x0
CHKSUM equ -MAGIC_NUM

section .text:
align 4
  dd MAGIC_NUM
  dd FLAGS
  dd CHKSUM

loader:
  mov eax, 0xdeadbeef

.loop:
  jmp .loop
