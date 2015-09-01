




define i32 @foo(i8* %x, i32 %y) nounwind {







	%t0 = lshr i32 %y, 8		
	%t1 = and i32 %t0, 255		
  %t2 = shl i32 %t1, 3
	%t3 = getelementptr i8, i8* %x, i32 %t2		
	store i8 77, i8* %t3, align 4
	ret i32 %t2
}
