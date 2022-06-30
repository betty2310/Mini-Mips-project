.data

	String1: .asciiz  "                                            ********************* \n"
	String2: .asciiz  "*******                                     **33333333333333333** \n"
	String3: .asciiz  "*22222*                                     **33333333333333333** \n"
	String4: .asciiz  "*22222*                                     ********33333******** \n"
	String5: .asciiz  "*22222*                                            *33333*        \n"
	String6: .asciiz  "*22222*               ****************             *33333*        \n"
	String7: .asciiz  "*22222*               *1111111111111111*           *33333*        \n"
	String8: .asciiz  "*22222*               *11111*******11111**         *33333*        \n"
	String9: .asciiz  "*22222*               *11111*     **11111**        *33333*        \n"
	String10: .asciiz "*22222*               *11111*      **11111*        *33333*        \n"
	String11: .asciiz "*22222*               *11111*    **11111**         *33333*        \n"
	String12: .asciiz "*22222*************** *11111*  **11111**           *33333*        \n"
	String13: .asciiz "*2222222222222222222* *11111***11111**             *******        \n"
	String14: .asciiz "********************* *11111********                              \n"
	String15: .asciiz "       ^^^            *11111*                                     \n"
	String16: .asciiz "     ( o o )          *11111*                                     \n"
	String17: .asciiz "      (  >)           *11111*                    dce.hust.edu.vn  \n"
	String18: .asciiz "                      *******                                     \n"
	Message0: 	.asciiz "------------IN CHU-----------\n"
	Phan1:		.asciiz"1. In ra chu\n"
	Phan2:		.asciiz"2. In ra chu rong\n"
	Phan3:		.asciiz"3. Thay doi vi tri\n"
	Phan4:		.asciiz"4. Doi mau cho chu\n"
	Thoat:		.asciiz"5. Thoat\n"
	Nhap:		.asciiz"Nhap gia tri: "
	ChuL:		.asciiz"Nhap màu cho chu L(0->9): "
	ChuP:		.asciiz"Nhap màu cho chu P(0->9): "
	ChuT:		.asciiz"Nhap màu cho chu T(0->9): "
.text
main:
	la $a0, Message0	# nhap menu
	li $v0, 4
	syscall
	
	la $a0, Phan1	
	li $v0, 4
	syscall
	la $a0, Phan2	
	li $v0, 4
	syscall
	la $a0, Phan3	
	li $v0, 4
	syscall
	la $a0, Phan4	
	li $v0, 4
	syscall
	la $a0, Thoat	
	li $v0, 4
	syscall
	la $a0, Nhap	
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	Case1menu:
		addi $v1 $0 1
		bne $v0 $v1 Case2menu
		j Menu1
	Case2menu:
		addi $v1 $0 2
		bne $v0 $v1 Case3menu
		j Menu2
	Case3menu:
		addi $v1 $0 3
		bne $v0 $v1 Case4menu
		j Menu3
	Case4menu:
		addi $v1 $0 4
		bne $v0 $v1 Case5menu
		j Menu4
	Case5menu:
		addi $v1 $0 5
		bne $v0 $v1 defaultmenu
		j Exit
	defaultmenu:
		j main


