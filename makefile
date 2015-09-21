all:
		gcc -DHAVE_ISNAN -o bwbasic -lm -ansi bw*.c -lm
