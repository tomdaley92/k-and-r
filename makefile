CC = gcc
LD = $(CC)

CFLAGS = -Wall -std=c89
LDFLAGS =

COMPILE.c = $(CC) $(CFLAGS) -o $@ -c
LINK.o = $(LD) $(LDFLAGS) -o $@

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
