quine.small.asm: quine.asm
	python convert.py human_to_small

quine.bin: quine.asm
	nasm -f bin -o quine.bin quine.asm

floppy: quine.bin
	dd status=noxfer conv=notrunc if=quine.bin of=floppy

emu: floppy
	qemu -fda floppy

clean:
	rm quine.small.asm
	rm floppy
	rm *.bin
