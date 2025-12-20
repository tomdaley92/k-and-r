CC = gcc

CFLAGS = -Wall -std=c89

COMPILE.c = $(CC) $(CFLAGS) -o $@ -c

%.o: %.c
	$(COMPILE.c) $<

PROGRAMS = \
	hello_world \
	variables \
	for_statement \
	character_input_output

# hello_world: hello_world.o
# 	$(LINK.o) $^

.PHONY: all
all: $(PROGRAMS)

.PHONY: clean
clean:
	$(RM) $(PROGRAMS) *.o
