

@Time.2535 = external global i64		

define i64 @millisecs() nounwind {
entry:
	%0 = load i64, i64* @Time.2535, align 4		
	%1 = add i64 %0, 1		
	store i64 %1, i64* @Time.2535, align 4
	ret i64 %0
}
