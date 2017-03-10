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

- - - - 

* Now... While in gdb:

  * To run your program, type: 

	`run _arg1_ _arg2_ ... _argN_` or `r _arg1_ _arg2_ ... _argN_`

  	_If you have used the --args already, just type:_ `r[un]`

  * To print a variable named X, type:

	`print X` or `p X`

  * To set the value 5 to an integer variable X, type:

	`set variable X = 5` _(Print again X. Is it 5? Cool!)_

  * To set a breakpoint to line number Y, type:

	`b[reak] Y`

  * To set a breakpoint to line number Y of file FILENAME, type:

	`b[reak] FILENAME:Y`

  * To set a breakpoint at every function FNAME invocation, type:

	`b[reak] FNAME`

  * To inspect all the breakpoints, type:

	`i[nfo] b[reak]`

  * To disable a breakpoint with number Z, type:

	`disable Z`

  * To enable a breakpoint with number Z, type:

	`enable Z`

	_After enabling or disabling a breakpoint, type `info break` (the 
	equivalent field named 'Enb' is either 'y' or 'n')._

  * To delete a breakpoint with number Z, type:

	`delete Z` or `d Z`

  * To delete all breakpoints, just type:

	`delete`

  * To inspect the source code around line X, type:

	`l[ist] X`

  * To inspect the source code around line X of file FILENAME, type:

	`l[ist] FILENAME:X`
