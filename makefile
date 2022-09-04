all: kernel.bin run
clean: kernel.bin
	rm $^
kernel.bin: bootloader.asm

	nasm $^ -f bin -o kernel.bin

run:
	D:\Qemu\qemu-system-x86_64.exe -L 'D:\Qemu\'  C:\Users\isaac\Documents\realos\kernel.bin