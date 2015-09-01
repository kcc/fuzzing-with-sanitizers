



target datalayout = "n8:16:32:64"

@g_3 = common global i16 0		
@"\01LC" = internal constant [4 x i8] c"%d\0A\00"		

define void @func_1() nounwind {
entry:
	br label %bb

bb:		
	%l_2.0.reg2mem.0 = phi i16 [ 0, %entry ], [ %t1, %bb ]		
	%t0 = shl i16 %l_2.0.reg2mem.0, 1		
	store volatile i16 %t0, i16* @g_3, align 2
	%t1 = add i16 %l_2.0.reg2mem.0, -3		
	%t2 = icmp slt i16 %t1, 1		
	br i1 %t2, label %bb, label %return

return:		
	ret void
}

define i32 @main() nounwind {
entry:
	tail call void @func_1( ) nounwind
	load volatile i16, i16* @g_3, align 2		
	zext i16 %0 to i32		
	tail call i32 (i8*, ...) @printf( i8* getelementptr ([4 x i8], [4 x i8]* @"\01LC", i32 0, i32 0), i32 %1 ) nounwind		
	ret i32 0
}

declare i32 @printf(i8*, ...) nounwind
