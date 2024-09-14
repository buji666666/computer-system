// This file is based on part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: Mult.asm

// Multiplies R1 and R2 and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0          
M=0         

@2          
D=M        

@END        
D;JEQ       

(LOOP)      

@1          
D=M         

@0          
M=M+D       

@2          
MD=M-1     

@LOOP       
D;JGT       

(END)       
@END        
0;JMP       
