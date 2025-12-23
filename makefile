CC = gcc
CFLAGS = -std=c89 -Wall -Wpedantic -Wno-strict-prototypes -Wno-implicit-int

PROGRAMS = \
	hello_world \
	variables \
	for_statement \
	symbolic_constants \
	file_copying_1 \
	file_copying_2 \
	character_counting_1 \
	character_counting_2 \
	line_counting \
	word_counting \
	arrays \
	functions \
	arguments \
	character_arrays \
	external_variables

.PHONY: all
all: $(PROGRAMS)

.PHONY: clean
clean:
	$(RM) $(PROGRAMS) *.o
