CC = gcc
CFLAGS = -Wall -std=c89

PROGRAMS = \
	hello_world \
	variables \
	for_statement \
	symbolic_constants \
	character_input_output

.PHONY: all
all: $(PROGRAMS)

.PHONY: clean
clean:
	$(RM) $(PROGRAMS) *.o
