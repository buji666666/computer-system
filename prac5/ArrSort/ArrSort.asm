// Sorts the array of length R2 whose first element is at RAM[R1] in ascending order in place. Sets R0 to True (-1) when complete.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// 冒泡排序程序
// 对从RAM[R1]开始的R2个元素进行升序排序

// 初始化外层循环计数器
@2     
D=M
@16     
M=D
@17     
M=0

(OUTER_LOOP)
    
    @17
    D=M
    @16
    D=D-M
    @77     
    D;JGE

    
    @16
    D=M
    @17
    D=D-M
    @18     
    @1
    D=A
    @18
    M=M-D  

(INNER_LOOP)
    
    @18
    D=M
    @73    
    D;JLT

   
    @1
    D=M
    @18
    A=D+M
    D=M     
    @19     
    M=D     
    
    @1
    D=M
    @18
    A=D+M
    A=A+1
    D=M     

   
    @19
    D=D-M
    @44     
    D;JLT

    @69     
    0;JMP

(SWAP)
   
    @1
    D=M
    @18
    A=D+M
    D=M
    @19
    M=D    
    
    @1
    D=M
    @18
    A=D+M
    A=A+1
    D=M
    @1
    A=M
    A=D+A
    A=A-1
    M=D    
    
    @19
    D=M
    @1
    A=M
    A=D+A
    A=A+1
    M=D    

(INNER_INCREMENT)
    @18
    M=M-1
    @22     
    0;JMP

(OUTER_INCREMENT)
    @17
    M=M+1
    @6     
    0;JMP

(FINISH)
    @1
    D=A
    D=D-1
    @0
    M=D     

(END)
    @82     
    0;JMP