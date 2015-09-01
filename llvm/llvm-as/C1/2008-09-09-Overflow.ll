



target datalayout = "n8:16:32:64"

@g_19 = common global i32 0		
@"\01LC" = internal constant [4 x i8] c"%d\0A\00"		

define i32 @func_8(i8 zeroext %p_9) nounwind {
entry:
	ret i32 1
}

define i32 @func_3(i8 signext %p_5) nounwind {
entry:
	ret i32 1
}

define void @func_1() nounwind {
entry:
	br label %bb

bb:		
	%indvar = phi i16 [ 0, %entry ], [ %indvar.next, %bb ]		
	%tmp = sub i16 0, %indvar		
	%tmp27 = trunc i16 %tmp to i8		
	load i32, i32* @g_19, align 4		
	add i32 %0, 1		
	store i32 %1, i32* @g_19, align 4
	trunc i32 %0 to i8		
	tail call i32 @func_8( i8 zeroext %2 ) nounwind		
	shl i8 %tmp27, 2		
	add i8 %4, -112		
	tail call i32 @func_3( i8 signext %5 ) nounwind		
	%indvar.next = add i16 %indvar, 1		
	%exitcond = icmp eq i16 %indvar.next, -28		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}

define i32 @main() nounwind {
entry:
	tail call void @func_1( ) nounwind
	load i32, i32* @g_19, align 4		
	tail call i32 (i8*, ...) @printf( i8* getelementptr ([4 x i8], [4 x i8]* @"\01LC", i32 0, i32 0), i32 %0 ) nounwind		
	ret i32 0
}

declare i32 @printf(i8*, ...) nounwind
