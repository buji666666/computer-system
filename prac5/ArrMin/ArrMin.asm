// Finds the smallest element in the array of length R2 whose first element is at RAM[R1] and stores the result in R0.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@R1
D=M
@R2
D=M+D
@16383
D=A-D
@END
D;JLT

@R1
D=M

@END
D=D-1
D=D-1
D;JLE

@R1
A=M
D=M

@R0
M=D

@R2
D=M

@END
D;JLE

(Loop)

@R2
D = M - 1

@R1
A = M + D
D = M

@R7
M = D

@BPOS
D;JGE

@R0
D = M
@SwitchElements
D;JGE

@NNPP
A;JMP

(BPOS)
@R0
D = M
@keepTemp
D;JLE

(NNPP)

@R7
D = M

@R0
D = M-D

@keepTemp
D;JLE

(SwitchElements)
@R7
D = M

@R0
M=D

@R2
D = M

(keepTemp)
@R2
M = M-1
D = M-1

@Loop
D;JGT

(END)
@END
A;JMP
