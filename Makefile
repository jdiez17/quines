all: quine

quine: quine.o
	gcc -m32 -o quine quine.o

quine.o: quine.s
	yasm -f elf quine.s

clean: 
	rm -rf quine.o quine
	
