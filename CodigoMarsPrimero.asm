.text
#Meter el vector en memoria
addi $t0, $zero, 5
sw $t0, 0($t1)
addi $t9, $t9, 1

addi $t0, $zero, 6
sw $t0, 1($t1)
addi $t9, $t9, 1

addi $t0, $zero, 3
sw $t0, 2($t1)
addi $t9, $t9, 1

addi $t0, $zero, 8
sw $t0, 3($t1)
addi $t9, $t9, 1

addi $t0, $zero, 2
sw $t0, 4($t1)
addi $t9, $t9, 1

addi $t0, $zero, 7
sw $t0, 5($t1)
addi $t9, $t9, 1

addi $t0, $zero, 3
sw $t0, 6($t1)
addi $t9, $t9, 1

#Sumar los 3 primeros números
lw $s1, 0($t1)
add $s0, $zero, $s1
lw $s2, 1($t1)
add $s0, $s0, $s2
lw $s3, 2($t1)
add $s0, $s0, $s3

#Sumar los dos últimos números
addi $t5, $zero, 1
sub $t8, $t9, $t5
lw $s4, 0($t8)
add $s0, $s0, $s4
sub $t8, $t8, $t5
lw $s5, 0($t8)
add $s0, $s0, $s5

#Sacar el promedio
addi $t5, $zero, 5
add  $t6, $s0, $t5 #modificar el add por un div(1a)en el codigo exportado
sw $t6, 1($t9)




