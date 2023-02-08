.data

.text
main:

li $a0,10
jal somatorio
move $t0, $v0

li $v0,1
add $a0,$zero,$t0
syscall

li $v0,10
syscall

somatorio:
li $s0,0 #soma 
add $s1,$a0,$zero #n
li $s2,0

inicio:
bgt $s1,$s2,incremento
jr $ra

incremento:
add $s0,$s0,$s1
sub $s1,$s1,1
add $v0,$s0,$zero


j inicio


imprimirNumero:
li $v0,1
syscall