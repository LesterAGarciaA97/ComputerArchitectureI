// Ejecuta un bucle infinito que detecta la entrada del teclado.
// Cuando se presiona una tecla (cualquier tecla), el programa pinta de negro la pantalla, es decir, pinta de negro cada píxel. 
// Cuando no se presiona ninguna tecla, el programa borra la pantalla, es decir, pinta de blanco cada píxel.
// En otras palabras, pinta la pantalla.

(INIT)			// Inicializa i - índice que se ejecuta en los píxeles de la pantalla.

	//@8192	 	// 32 * 256 número de líneas de píxeles de 16 bits para cubrir toda la pantalla.

	@4096		// (32 * 256) / 2 número de líneas de píxeles de 16 bits para cubrir la mitad de la pantalla.
	D=A
	@I			// inicializa la variable de índice a 8192 (Pantalla completa)/ 4096 (Media pantalla), esta es la dirección restante para colorear en pantalla.
	M=D

(LOOP)			// Avanza el índice hacia atrás, lo decrementa.
	@I
	M=M-1
	D=M
	@INIT
	D;JLT               // Si índice < 0 - Ir a Inicio de Índice para resetearlo
	@KBD	           // Carga la dirección del teclado
	D=M
	@WHITE		      // Si (Memoria en la dirección del teclado == 0) - lo que significa que no se presiona ninguna tecla - vaya a BLANCO, o vaya a NEGRO
	D;JEQ
	@BLACK
	0;JMP

(BLACK)             
	@SCREEN            // Carga la primera dirección de la pantalla
	D=A
	@I
	A=D+M              // Agrega el índice actual a la primera dirección de la pantalla para colorear el conjunto actual de 16 píxeles.
	M=-1               // Establece el valor en la dirección actual en -1, de modo que toda la palabra 1 ... 1 (16 bits de longitud), lo que significa que todos los 16 píxeles estarán "pintados" en negro.
	@LOOP              // Salta al indexador para avanzar el índice hacia atrás.
	0;JMP

(WHITE)
	@SCREEN            // Carga la primera dirección de la pantalla
	D=A                
	@I        
	A=D+M              // Agrega el índice actual a la primera dirección de la pantalla para colorear el conjunto actual de 16 píxeles
	M=0                // Establece el valor en la dirección actual en 0, de modo que toda la palabra será 0 .... 0 (16 bits de longitud), lo que significa que todos los 16 píxeles estarán "pintados" en blanco.
	@LOOP              // Salta al indexador para avanzar el índice hacia atrás.
	0;JMP