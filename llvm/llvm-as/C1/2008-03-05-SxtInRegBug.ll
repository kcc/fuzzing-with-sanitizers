

define i32 @main(i32 %argc, i8** %argv) {
entry:
	br label %bb1
bb1:		
	%tmp3.i.i = load i8, i8* null, align 1		
	%tmp4.i.i = icmp slt i8 %tmp3.i.i, 0		
	br i1 %tmp4.i.i, label %bb2, label %bb3
bb2:		
	ret i32 1
bb3:		
	ret i32 0
}





