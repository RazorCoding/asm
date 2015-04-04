#PUPOSE: Simple program that exits and returns a 
#	 status code back to the linux kernel
#

#INPUT:  none
#

#OUTPUT: returns a status code. This can be viewed
#	 by typing 
#
#
#	 echo $?
#

#VARIABLES:
#         $eax holds the system call number
#         $ebx holds the return status
#
.section .data

.section .text
.globl _start
_start:
movl $1, %eax  # this is the linux kernel command 
	       # number (system call) for exiting
	       # a program 

movl $0, %ebx  # this is the status number we will
	       # return to the operatiing system.
	       # change this around and it will
	       # return different things to 
	       # echo $?
int $0x80      # this wakes up the kernel to run 
	       # this exit command

	
	
