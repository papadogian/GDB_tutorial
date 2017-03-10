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

	`break Y` or `b Y`

  * To set a breakpoint to line number Y of file FILENAME, type:

	`b[reak] FILENAME:Y`

  * To set a breakpoint at every function FNAME invocation, type:

	`b[reak] FNAME`

  * To inspect all the breakpoints, type:

	`info b[reak]` or `i b[reak]`

  * To disable a breakpoint with number Z, type:

	`disable Z`

  * To enable a breakpoint with number Z, type:

	`enable Z`

	_After enabling or disabling a breakpoint, type `info break` (the 
	equivalent field named 'Enb' is either 'y' or 'n')._

  * To delete a breakpoint with number Z, type:

	`delete Z` or `d Z`

  * To delete all breakpoints, just type:

	`d[elete]` 

  * To inspect the source code around line X, type:

	`list X` or `l X`

  * To inspect the source code around line X of file FILENAME, type:

	`l[ist] FILENAME:X`

  * When a breakpoint is reached, the execution of the program stops to allow 
    inspection. Use the following:

	`continue` or `c` to continue the execution until the end, another 
	breakpoint or a signal (e.g. SIGSEGV).

	`finish` or `f` to continue the execution until it returns.

	`step` or `s` to execute the next instruction (steps also into function 
	calls).
	
	`next` or `n` to execute the next instruction (`next` does not step into 
	function calls; it executes and stops).

  * Misc.:

	1. _Ctrl - C_ to interrupt your program (e.g. in cases of infinite loops, 
	race conditions, etc.).

	2. To quit gdb, type: 

		`quit` or `q` 

	3. To navigate through previously issued commands, press the _up_ key. 

	4. To repeat the latest command, just press _Enter_.

- - - - 

###Links:

Course's website: http://www.csd.uoc.gr/~hy255/

GDB website: https://www.gnu.org/software/gdb/

GDB's manual (online): https://linux.die.net/man/1/gdb

GDB's manual: `man gdb`

- - - - 

###_Eva Papadogiannaki_

Contact me: papadogian [at] csd [dot] uoc [dot] gr


