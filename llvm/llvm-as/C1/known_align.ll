


	%struct.p = type <{ i8, i32 }>
@t = global %struct.p <{ i8 1, i32 10 }>		
@u = weak global %struct.p zeroinitializer		

define i32 @main() {
entry:
	%retval = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	%tmp1 = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	%tmp3 = load i32, i32* getelementptr (%struct.p, %struct.p* @t, i32 0, i32 1), align 1		
	store i32 %tmp3, i32* %tmp1, align 4
	%tmp5 = load i32, i32* %tmp1, align 4		
	store i32 %tmp5, i32* getelementptr (%struct.p, %struct.p* @u, i32 0, i32 1), align 1
	%tmp6 = load i32, i32* %tmp1, align 4		
	store i32 %tmp6, i32* %tmp, align 4
	%tmp7 = load i32, i32* %tmp, align 4		
	store i32 %tmp7, i32* %retval, align 4
	br label %return

return:		
	%retval8 = load i32, i32* %retval		
	ret i32 %retval8
}
