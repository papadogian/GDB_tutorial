# A GDB tutorial for beginners.
## CS-255: Spring Semester 2017

* Compile the source code of file 'gdb\_seg.c' normally without debug symbols:
	
	`make nogdb_seg` or `gcc gdb_seg.c -Wall -ansi -pedantic -o gdb_seg`

* Compile the source code of file 'gdb\_seg.c' with debug symbols:

	`make nogdb_seg` or `gcc gdb_seg.c -Wall -ansi -pedantic -g -o gdb_seg`

	_Use *always* -g when you want to run gdb. To avoid performance 
	degradation remove -g flag before compilation._

* Run the executable correctly, without causing any segmentation:

	`./gdb_seg -c 0 -i foo`

* Crash the executable (:poop:): 

	`./gdb_seg -c 1 -i foo`

* Start gdb for gdb\_seg, without providing the command line arguments:
	
	`gdb ./gdb_seg` 

* Start gdb for gdb\_seg, providing the command line arguments:
	
	`gdb --args ./gdb_seg -c 0 -i foo` 


