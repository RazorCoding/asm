#PURPOSE: program to illustrate how fucntions work
#         This program will compute the value of 
#         2^3 + 5^2
#

#Everthing in the main program is stored in registers,
#so the data section doesn't have anything 

.section .data

.section .text

.globl _start
_start:
pushl $3  # push second argument
pushl $2  # push first argument
call  power #call the fucntion
addl  $8, %esp  #move the stack pointer back
pushl %eax #save the fifst answer befire
pushl $2   #push second argument
pushl $5   #push fiest argument
call power #call the function 
addl  $8, %esp #move the stack pointer back
popl  %ebx    #The second answer is already
