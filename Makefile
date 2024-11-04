assemble:
	gcc -o assembler/assembler assembler/assembler.c

simulate:
	gcc -o simulator/simulator simulator/simulator.c

clean:
	rm -f assembler/assembler simulator/simulator output.bin

help:
	@echo "assemble: Compile assembler"
	@echo "simulate: Compile simulator"
	@echo "clean: Remove compiled files"

