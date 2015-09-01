



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i686-pc-linux-gnu"
	%struct.__jmp_buf_tag = type { [6 x i32], i32, %struct.__sigset_t }
	%struct.__sigset_t = type { [32 x i32] }
@j = external global [1 x %struct.__jmp_buf_tag]		

define i32 @f() {
entry:
	%retval = alloca i32, align 4		
	%v = alloca i32, align 4		
	%tmp = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	store volatile i32 0, i32* %v, align 4
	%tmp1 = call i32 @_setjmp( %struct.__jmp_buf_tag* getelementptr ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @j, i32 0, i32 0) )		
	%tmp2 = icmp ne i32 %tmp1, 0		
	%tmp23 = zext i1 %tmp2 to i8		
	%toBool = icmp ne i8 %tmp23, 0		
	br i1 %toBool, label %bb, label %bb5

bb:		
	%tmp4 = load volatile i32, i32* %v, align 4		
	store i32 %tmp4, i32* %tmp, align 4
	br label %bb6

bb5:		
	store volatile i32 1, i32* %v, align 4
	call void @g( )
	store i32 0, i32* %tmp, align 4
	br label %bb6

bb6:		
	%tmp7 = load i32, i32* %tmp, align 4		
	store i32 %tmp7, i32* %retval, align 4
	br label %return

return:		
	%retval8 = load i32, i32* %retval		
	ret i32 %retval8
}

declare i32 @_setjmp(%struct.__jmp_buf_tag*) returns_twice

declare void @g()
