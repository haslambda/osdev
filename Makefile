.DEFAULT_GOAL := kernimg

loader.o: loader.s
	nasm -f elf32 loader.s

kernel.elf: loader.o
	ld -T link.ld -melf_i386 loader.o -o kernel.elf

kernimg: kernel.elf
	mkdir -p iso/boot/grub
	cp grubfiles/stage2_eltorito iso/boot/grub
	cp grubfiles/menu.lst iso/boot/grub
	cp kernel.elf iso/boot
	genisoimage -R -b boot/grub/stage2_eltorito -no-emul-boot -boot-load-size 4 -A os -input-charset utf8 -quiet -boot-info-table -o os.iso iso

.PHONY: clean
clean:
	rm -rf iso
	rm -f *.elf *.o *.iso
