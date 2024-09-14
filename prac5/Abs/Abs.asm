// Calculates the absolute value of R1 and stores the result in R0.
// (R0, R1 refer to RAM[0], and RAM[1], respectively.)

// Put your code here.
// Calculate the absolute value of R1 and store it in R0
@1          
D=M         

@POSITIVE   
D;JGE       

@1          
D=-M       

@DONE       
0;JMP       

(POSITIVE)  
@1          
D=M         

(DONE)      
@0          
M=D         


