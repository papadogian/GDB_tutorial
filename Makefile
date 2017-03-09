# A Makefile for the GDB tutorial (beginner's)
# Course: CS255
# Spring semester 2017
# TA: Eva Papadogiannaki (papadogian)

CFLAGS=-Wall -ansi -pedantic
DEBUG=-g

all: nogdb_seg gdb_seg

nogdb_seg:
	gcc gdb_seg.c $(CFLAGS) -o nogdb_seg

gdb_seg:
	gcc gdb_seg.c $(CFLAGS) $(DEBUG) -o gdb_seg

nogdb_nocrash:
	./nogdb_seg -c 0 -i foo

nogdb_crash:
	./nogdb_seg -c 1 -i foo

gdb_nodebugsymbols:
	gdb --args ./nogdb_seg -c 1 -i foo

gdb_debugsymbols:
	gdb --args ./gdb_seg -c 1 -i foo

clean:
	rm -rf nogdb_seg gdb_seg
