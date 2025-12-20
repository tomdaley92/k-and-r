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

# default
.PHONY: all
all: $(PROGRAMS)

# hello_world: hello_world.o
# 	$(LINK.o) $^

# variables: variables.o
# 	$(LINK.o) $^

# for_statement: for_statement.o
# 	$(LINK.o) $^

# character_input_output: character_input_output.o
# 	$(LINK.o) $^

# remove previous build and objects
.PHONY: clean
clean:
	$(RM) $(PROGRAMS) *.o

# force rebuild
.PHONY: remake
remake:	clean all
