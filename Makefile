# A Makefile for the GDB tutorial (beginner's)
# Course: CS255
# Spring semester 2017
# TA: Eva Papadogiannaki (papadogian)

CFLAGS=-Wall -ansi -pedantic
DEBUG=-g # to use GDB, *always* compile with -g

all: nogdb_seg gdb_seg

# compile without producing debug symbols
nogdb_seg:
	gcc gdb_seg.c $(CFLAGS) -o nogdb_seg

# compile producing debug symbols
gdb_seg:
	gcc gdb_seg.c $(CFLAGS) $(DEBUG) -o gdb_seg

# run and don not crash
nogdb_nocrash:
	./nogdb_seg -c 0 -i foo

# run and crash
nogdb_crash:
	./nogdb_seg -c 1 -i foo

# run with GDB without debug symbols
gdb_crash_no_debug_symbols:
	gdb --args ./nogdb_seg -c 1 -i foo

# run with GDB with debug symbols
gdb_crash_debug_symbols:
	gdb --args ./gdb_seg -c 1 -i foo

# run with GDB without crashing (with debug symbols)
gdb_nocrash_debug_symbols:
	gdb --args ./gdb_seg -c 0 -i foo

clean:
	rm --force nogdb_seg gdb_seg 

