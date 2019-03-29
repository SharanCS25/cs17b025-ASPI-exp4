main:
 addi $sp,$sp,-8
sw $s0,4($sp)
sw $s1,0($sp)

li $t0,11      #first summand stored 
li $t1,22
li $t2,33
li $t3,44

li $t4,12
li $t5,13
li $t6,14
li $t7,15

li $s1,0
add $s0,$t0,$t4
slt $s1,$s0,$t0
slt $s1,$s0,$t4
add $t0,$s0,&0
add $s0,$t1,$t5
add $s0,$s0,$s1

li $s1,0
slt $s1,$s0,$t1
slt $s1,$s0,$t5
add $t1,$s0,&0
add $s0,$t2,$t6
add $s0,$s0,$s1

li $s1,0
slt $s1,$s0,$t2
slt $s1,$s0,$t6
add $t2,$s0,&0
add $s0,$t3,$t7
add $s0,$s0,$s1

li $s1,0
slt $s1,$s0,$t3
slt $s1,$s0,$t7
add $t3,$s0,&0

lw $s1,0($sp)
lw $s0,4($sp)

addi $sp,$sp,8

jr $ra