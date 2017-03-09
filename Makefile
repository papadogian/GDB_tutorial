# A Makefile for the GDB tutorial (beginner's)
# TA: Eva Papadogiannaki (papadogian)

CFLAGS=-Wall -ansi -pedantic
DEBUG=-g

all: nogdb_seg gdb_seg

nogdb_seg:
	gcc gdb_seg.c $(CFLAGS) -o nogdb_seg

gdb_seg:
	gcc gdb_seg.c $(CFLAGS) $(DEBUG) -o gdb_seg

gdb_nosymbols:
	gdb ./nogdb_seg --args -c 1 -i foo

gdb_symbols:
	gdb ./gdb_seg --args -c 1 -i foo

clean:
	rm -rf nogdb_seg gdb_seg

