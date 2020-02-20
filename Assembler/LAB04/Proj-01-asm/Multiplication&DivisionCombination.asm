      @R2
      M = 0

      @R0
      D=M
      @END
      D;JEQ
    
      @R1
      D=M
      @END
      D;JEQ

(LOOP)
	  @R0
	  D = M
	  @END
	  D;JEQ 

	  @R1
	  D = M
	  @R2
	  M = D + M

	  @R0
	  M = M - 1;
	  
	  @LOOP
	  0;JMP
(END)
	  @END
	  0;JMP

@curr
M=1

@R15
M=0

@R14
D=M
@denominador
M=D

@R13
D=M
@dev
M=D

@denominador
D=M 
@END
D;JEQ

@denominador
D=M
@dev
D=D-M
@END
D;JGT

@denominador
D=M
@dev
D=D-M
@EQUAL
D;JEQ

(LOOP1)	
	@dev
	D=M
	@denominador
	D=D-M
	@LOOP2
	D;JLT
	
	@denominador 
	D=M<<
	@LOOP3
	D;JLE
	
	@denom 
	M=M<<
	@curr 
	M=M<<
	
	@LOOP1
	0;JMP
	
(LOOP2)
	@denominador 
	M=M>>
	@curr 
	M=M>>

(LOOP3)
	@curr
	D=M 
	@END
	D;JEQ
	
	@dev
	D=M 
	@denominador
	D=D-M
	@LOOP4
	D;JGE 
	
	@LOOP3_B
	0;JMP
	
(LOOP3_B)	
	@curr
	M=M>>
	@denominador
	M=M>>
	
	@LOOP3
	0;JMP

(LOOP4)
	@denominador
	D=M 
	@dev
	M = M-D
	
	@curr
	D=M 
	@R15
	M=D+M
	
	@LOOP3_B
	0;JMP

(EQUAL)
	@R15
	M=1
		
(END)