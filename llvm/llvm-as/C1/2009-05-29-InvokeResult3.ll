

declare i32 @v()

define i32 @h() {
e:
	%s = invoke i32 @v()
			to label %c unwind label %u		

c:		
	br label %d

d:		
	%p = phi i32 [ %s, %c ], [ %s, %u ]		
	ret i32 %p

u:		
	br label %d
}
