.data
menor: .asciiz "E menor"
maior: .asciiz "E maior"
.text

li $t0, 0 # soma

li $t1, 1 # condicao inicial
li $t2, 10 # condicao de parada 
li $t3, 30 # constante 

inicio:
beq $t1 , $t2 , fimDoLaco

add $t0, $t0, $t1

blt $t0,$t3,mensagemMenor
add $t1,$t1,1
li $v0,4
la $a0,maior
syscall

mensagemMenor:
add $t1,$t1,1
li $v0,4
la $a0,menor
syscall

j inicio


fimDoLaco:
li $v0,10
syscall


