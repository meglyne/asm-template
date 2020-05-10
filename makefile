CC = nasm
ASMFLAGS = 
OBJ = program.o
BIN = $(OBJ:.o=)

.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	ld -o $(BIN) $(OBJ)

$(OBJ): template.asm
	nasm -f elf64 -g -F stabs template.asm -o $(OBJ)

clean:
	$(RM) $(OBJ) $(BIN)
