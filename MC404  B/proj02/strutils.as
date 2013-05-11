.globl my_ahtoi
.globl my_atoi
.globl my_itoa
.globl my_itoah
.globl my_strcomp
.globl my_strlen 

.data
numero: .word 0
	
.text 

my_ahtoi: @Converte um vetor de caracteres com dígitos hexadecimais para um inteiro de 32 bits - entrada com prefixo "0x". 

	push {lr}

	mov r0 
	pop {pc}

my_atoi: @Converte um vetor de caracteres com dígitos decimais para um inteiro de 32 bits.
@ int my_atoi (char * string) entrada e saída
	push {lr}

	mov r0 
	pop {pc}

my_itoa: @Converte um inteiro para um vetor de caracteres com dígitos decimais.
@ void my_itoa (int v, char * buffer) a resposta estará neste buffer, ele possui tamanho suficiente 
	push {lr}

	mov r0 
	pop {pc}

my_itoah: @Converte um inteiro para um vetor de caracteres com dígitos hexadecimais - prefixo "0x".
@ void my_itoah (int v, char * buffer) a resposta deverá estar no buffer, somente a resposta, sem o ox
	push {lr}

	mov r0 
	pop {pc}

my_strcomp: @Compara duas strings. Retorna 0 se ambas forem iguais. -1 Se a primeira for lexicograficamente menor e 1 se a segunda for lexicograficamente menor.
@ int my_strcomp(char * string1	, char * string2) posso usar a ordem da tabela ascii  
	push {lr}

	mov r0 
	pop {pc}

my_strlen: @Determina o tamanho de um vetor de caracteres - terminado em "\0".
@int my_strlen(char * str) retorna o tamanho da string, retorna 0 com o \0.
	push {lr}
	mov r2, #0                @ sera meu contador do tamanho da string
	
	lacoStrLen:
	ldrb r4,[r0], #1          @ pego o caracter e mudo o endereço
	cmp r4, #0                @ verifico se o caracter lido é "\0"
    beq fimlacoStrLen         @ caso seja igual acabo a funcao
    add r2, r2, #1			  @ atualizo o contador
    
    fimlacoStrLen:

	mov r0, r2 
	pop {pc}


