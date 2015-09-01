


@g_407 = internal global i32 0		
@llvm.used = appending global [1 x i8*] [ i8* bitcast (i32 ()* @main to i8*) ], section "llvm.metadata"		

define i32 @main() nounwind {
entry:
	%0 = load volatile i32, i32* @g_407, align 4		
	%1 = trunc i32 %0 to i8		
	%2 = tail call i32 @func_45(i8 zeroext %1) nounwind		
	ret i32 0
}

declare i32 @func_45(i8 zeroext) nounwind
