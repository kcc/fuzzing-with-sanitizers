

define i32 @foo() {
entry:
	%retval = alloca i32		
	%tmp = alloca i32		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp1 = call i32 @llvm.flt.rounds( )		
	store i32 %tmp1, i32* %tmp, align 4
	%tmp2 = load i32, i32* %tmp, align 4		
	store i32 %tmp2, i32* %retval, align 4
	br label %return

return:		
	%retval3 = load i32, i32* %retval		
	ret i32 %retval3
}

declare i32 @llvm.flt.rounds() nounwind 
