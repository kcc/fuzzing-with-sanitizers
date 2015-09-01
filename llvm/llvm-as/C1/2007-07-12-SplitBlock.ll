

define i32 @main(i32 %argc, i8** %argv) {
entry:
	br label %bb7

bb7:		
	%tmp54 = icmp slt i32 0, 2000000		
	br i1 %tmp54, label %bb7, label %bb56

bb56:		
	ret i32 0
}
