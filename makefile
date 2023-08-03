all:
	@echo choose option: make compile, make run, make clean, make rc

compile:
	nasm -f bin boot.asm -o boot.bin
run:
	qemu-system-x86_64 boot.bin

clean:
	rm *.bin

rc:
	nasm -f bin boot.asm -o boot.bin
	qemu-system-x86_64 boot.bin
