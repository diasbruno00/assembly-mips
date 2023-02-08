.data
array: .word  40
.text

li $t0,0 #n
li $t1,10 # condicao de Parada
li $t3,0

inicio:
blt $t0, $t1, incremento
li $v0,10
syscall

incremento:
li $t2,10
sw $t2,array($t3)
add $t3,$t3,4
add $t0, $t0,1
j inicio