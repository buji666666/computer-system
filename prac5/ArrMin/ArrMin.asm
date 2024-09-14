// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@1          
D=M         
@ADDR       
M=D         

@0          
@ADDR       
A=M         
D=M         
@0          
M=D        

@2          
D=M         
@COUNTER    
M=D         

@LOOP_CHECK
0;JMP

(LOOP)
  @ADDR       
  M=M+1      

  @ADDR       
  A=M         
  D=M         

  @0          
  D=M-D       
  @UPDATE_MIN 
  D;JGT       

@LOOP_CHECK   
0;JMP        

(UPDATE_MIN)
  @ADDR       
  A=M         
  D=M        
  @0          
  M=D         

(LOOP_CHECK)
  @COUNTER    
  MD=M-1      
  @LOOP       
  D;JGT       

(END)
  @END       
  0;JMP       
