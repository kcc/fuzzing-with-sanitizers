


define i32 @func_59(i32 %p_60) nounwind  {
entry:
	%l_108 = alloca i32		
	%tmp15 = load i32, i32* null, align 4		
	%tmp16 = load i32, i32* %l_108, align 4		
	%tmp17 = icmp eq i32 %tmp15, %tmp16		
	%tmp1718 = zext i1 %tmp17 to i8		
	%tmp19 = load i32, i32* null, align 4		
	%tmp20 = load i32, i32* %l_108, align 4		
	%tmp21 = icmp ule i32 %tmp19, %tmp20		
	%tmp2122 = zext i1 %tmp21 to i8		
	%toBool23 = icmp ne i8 %tmp1718, 0		
	%toBool24 = icmp ne i8 %tmp2122, 0		
	%tmp25 = and i1 %toBool23, %toBool24		
	%tmp2526 = zext i1 %tmp25 to i8		
	%tmp252627 = zext i8 %tmp2526 to i32		
	%tmp29 = call i32 (...) @func_15( i32 %tmp252627, i32 0 ) nounwind 		
	unreachable
}

declare i32 @func_15(...)
