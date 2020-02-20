// La entrada del programa estará en R13, R14, mientras que el resultado R13 / R14 se almacenará en R15.
// El programa debe tener un tiempo de ejecución logarítmico con respecto al tamaño de entrada.

@curr
M=1 //curr = 1

@R15
M=0 // R15 = 0

@R14
D=M
@denominador
M=D

@R13
D=M
@dev
M=D

// if denominador == 0: finish
@denominador
D=M 
@END
D;JEQ // if(R14 = =0)

// if denominador > dividendo: finish
@denominador
D=M //D=*(denominador)
@dev // dividendo
D=D-M // denominador - dividendo
@END
D;JGT // denominador > dividendo (denominador - dividendo > 0) : return 0

// if denominador == dividendo: finish
@denominador
D=M
@dev // dividendo
D=D-M // denominador - dividendo
@EQUAL
D;JEQ // denominador == dividendo (denominador - dividendo = 0) : return 1

(LOOP1)	
	@dev // dividendo
	D=M //D=*(R13)
	@denominador // denominador
	D=D-M // D =  dividendo - denominador
	@LOOP2
	D;JLT // if(denominador > dividendo): jump to loop2
	
	@denominador
	D=M<<
	@LOOP3
	D;JLE // Parar antes de overflow y no hacer LOOP2
	
	@denom 
	M=M<< // denominador * 2
	@curr 
	M=M<< // curr * 2
	
	@LOOP1
	0;JMP
	
(LOOP2)
	@denominador 
	M=M>> // denominador / 2
	@curr 
	M=M>> // curr / 2

(LOOP3)
	@curr
	D=M 
	@END
	D;JEQ // if(curr == 0): finish
	
	// if(dividendo >= denominador)
	@dev
	D=M 
	@denominador
	D=D-M // D = dividendo - denominador
	@LOOP4
	D;JGE 
	
	@LOOP3_B
	0;JMP
	
(LOOP3_B)	
	@curr
	M=M>> // curr / 2
	@denominador
	M=M>>// denominador / 2
	
	@LOOP3
	0;JMP

(LOOP4)
	@denominador
	D=M 
	@dev
	M = M-D // dividendo = dividendo - denominador
	
	@curr
	D=M 
	@R15
	M=D+M // R15 = answer + curr
	
	@LOOP3_B
	0;JMP

(EQUAL)
	@R15
	M=1 // Asignar resultado a 1
		
(END)