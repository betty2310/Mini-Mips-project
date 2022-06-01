.data
	numberOfStudent:	 .word    10
	studentMark:  		 .float   8.5, 6.25, 3.5, 5.0, 9.25, 4.75, 7.0, 2.5, 1.5, 10
	student1: 			 .asciiz  "Nguyen Dinh Thanh An"
	space1:				 .space   11
	student2: 			 .asciiz  "Nguyen Hoang Hieu"
	space2:				 .space   14
	student3: 			 .asciiz  "Nguyen Thi Thanh Hien"
	space3:				 .space   10
	student4: 			 .asciiz  "Nguyen Ngoc Dung"	
	space4:				 .space   15
	student5: 			 .asciiz  "Tran Van Nam"
	space5:				 .space   19
	student6: 			 .asciiz  "Dao Kim Duong"
	space6:				 .space   18
	student7: 			 .asciiz  "Dinh Trong Huy"
	space7:				 .space   17
	student8: 			 .asciiz  "Nguyen Si Anh Khoa"
	space8:				 .space   13
	student9: 			 .asciiz  "Mac Anh Khoa"
	space9:				 .space   19
	student10: 			 .asciiz  "Duong Huu Huynh"
	space10:			 .space   16
	title:               .asciiz  "Mark\t\tName\n"
	tab:				 .asciiz  "\t"
	nextline:            .asciiz  "\n"
.text 
	la $s0, numberOfStudent
	lw $s0, 0($s0)
	la $s1, studentMark
	la $s2, student1
	
	li $t0, 4
	li $t1, 32
	li $s3, 0
	
	li $v0, 4
	la $a0, title
	syscall
loop:	slt $t2, $s3, $s0
		beq	$t2, $zero, end_loop
		mul $t3, $s3, $t0
		mul $t4, $s3, $t1
		add $t5, $s1, $t3
		add $t6, $s2, $t4
		li $v0, 2
		l.s $f12, 0($t5)
		syscall
		li $v0, 4
		la $a0, tab
		syscall
		li $v0, 4
		move $a0, $t6
		syscall
		li $v0, 4
		la $a0, nextline
		syscall
		addi $s3, $s3, 1
		j loop
end_loop:
		

	
	
