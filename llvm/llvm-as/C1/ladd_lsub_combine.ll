


define i64 @f1(i32 %x, i32 %y) nounwind {
entry:
	%0 = zext i32 %x to i64		
	%1 = zext i32 %y to i64		
	%2 = add i64 %1, %0		
	ret i64 %2
}






define i64 @f2(i32 %x, i32 %y) nounwind {
entry:
	%0 = zext i32 %x to i64		
	%1 = zext i32 %y to i64		
	%2 = sub i64 %1, %0		
	ret i64 %2
}







define i64 @f3(i64 %x, i32 %y) nounwind {
entry:
	%0 = zext i32 %y to i64		
	%1 = add i64 %x, %0		
	ret i64 %1
}







define i64 @f4(i32 %x, i64 %y) nounwind {
entry:
	%0 = zext i32 %x to i64		
	%1 = add i64 %0, %y		
	ret i64 %1
}







define i64 @f5(i64 %x, i32 %y) nounwind {
entry:
	%0 = zext i32 %y to i64		
	%1 = sub i64 %x, %0		
	ret i64 %1
}





