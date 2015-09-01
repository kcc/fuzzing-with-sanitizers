







define void @void(i39, i39) {
	add i39 0, 0			
	sub i39 0, 4			
	br label %5


	add i39 %0, %1			
	sub i39 %6, %4			
	icmp sle i39 %7, %3		
	br i1 %8, label %9, label %5


	add i39 %0, %1			
	sub i39 %6, %4			
	icmp sle i39 %11, %3		
	ret void
}


define i39 @zarro() {
Startup:
	ret i39 0
}
