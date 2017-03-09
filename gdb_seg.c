/*
 * A GDB tutorial for beginners.
 * This is the sample source file that crashes occasionally 
 * and on purpose, and it is used as an input for gdb. 
 *
 * Course: CS255
 * Spring semester 2017
 * TA: papadogian
 */

#include <stdio.h>
#include <string.h> /* for strlen */
#include <stdlib.h> /* for atoi */
#include <getopt.h> /* for getopt */


/*
 * Defines a sample struct 'a_struct' that contains a 
 * variable of type (char *) named str_content.
 */
struct a_struct {
	char *str_content;
};


/*
 * Parses the options given.
 * Options:
 *	-c 0 or -c 1 
 *	     AND
 *	-i <whatever>
 * If -c is 0, the program returns successfully.
 * If -c is 1, the program crashes, causing a segmentation fault.
 */
int main(int argc, char *argv[])
{
	int opt;
	int crash;
 	char *input;
	struct a_struct *x;

	while ((opt = getopt(argc, argv, "c:i:")) != -1) {
		switch (opt) {
		case 'c': /* case: crash (if 1) */
			crash = atoi(optarg);
			printf("%s\n", (crash)? "the program will crash": 
						"the program won't crash");
			break;
		case 'i': /* case: input */
		    	input = optarg;
			printf("the input string is '%s'\n", input);
		    	break;
		default: /* print usage for anything else that is not valid */
		    	printf("Usage: %s [-c] crash (use values: 0 or 1) [-i] input\n", 
				argv[0]);
		    	goto l_exit;
		}
	    }

	/* print usage and exit if no input is given */
	if (argc == 1) {
		printf("Usage: %s [-c] crash (use values: 0 or 1) [-i] input\n", 
			argv[0]);
		goto l_exit;
	}

	if (crash == 0) {
		x = malloc(sizeof(struct a_struct));
		if (x == NULL) {
			printf("allocation error -- malloc returns NULL\n");
			goto l_exit;
		}
		x->str_content = input;
		printf("the struct contains the str_content '%s'\n", x->str_content);
		free(x);
		goto l_exit;
	} else if (crash == 1) {
		x = NULL;
		x->str_content = input;
		printf("the struct contains the str_content '%s'\n", x->str_content);
		goto l_exit;
	} else {
		printf("undefined input\n");
		goto l_exit;
	}
	
/* label to exit: print and finish */
l_exit:
	printf("main exits now.\n");
	return 0;
}

