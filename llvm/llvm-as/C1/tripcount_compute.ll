









define i32 @linear_setne() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 0, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 1		
	%c = icmp ne i32 %i, 100		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %i
}




define i32 @linear_setne_2() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 0, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 2		
	%c = icmp ne i32 %i, 100		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %i
}




define i32 @linear_setne_overflow() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 1024, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 1024		
	%c = icmp ne i32 %i, 0		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %i
}




define i32 @linear_setlt() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 0, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 1		
	%c = icmp slt i32 %i, 100		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %i
}




define i32 @quadratic_setlt() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 7, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 3		
	%i2 = mul i32 %i, %i		
	%c = icmp slt i32 %i2, 1000		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	ret i32 %i
}




define i32 @chained() {
entry:
	br label %loop

loop:		
	%i = phi i32 [ 0, %entry ], [ %i.next, %loop ]		
	%i.next = add i32 %i, 1		
	%c = icmp ne i32 %i, 100		
	br i1 %c, label %loop, label %loopexit

loopexit:		
	br label %loop2

loop2:		
	%j = phi i32 [ %i, %loopexit ], [ %j.next, %loop2 ]		
	%j.next = add i32 %j, 1		
	%c2 = icmp ne i32 %j, 200		
	br i1 %c2, label %loop2, label %loopexit2

loopexit2:		
	ret i32 %j
}




define i32 @chained4() {
entry:
  br label %loop

loop:                                             
  %i = phi i32 [ 0, %entry ], [ %i.next, %loop ]  
  %i.next = add i32 %i, 1                         
  %c = icmp ne i32 %i.next, 100                   
  br i1 %c, label %loop, label %loopexit

loopexit:                                         
  br label %loop2

loop2:                                            
  %j = phi i32 [ %i.next, %loopexit ], [ %j.next, %loop2 ] 
  %j.next = add i32 %j, 1                         
  %c2 = icmp ne i32 %j.next, 200                  
  br i1 %c2, label %loop2, label %loopexit2

loopexit2:                                        
  br label %loop8

loop8:                                            
  %k = phi i32 [ %j.next, %loopexit2 ], [ %k.next, %loop8 ] 
  %k.next = add i32 %k, 1                         
  %c8 = icmp ne i32 %k.next, 300                  
  br i1 %c8, label %loop8, label %loopexit8

loopexit8:                                        
  br label %loop9

loop9:                                            
  %l = phi i32 [ %k.next, %loopexit8 ], [ %l.next, %loop9 ] 
  %l.next = add i32 %l, 1                         
  %c9 = icmp ne i32 %l.next, 400                  
  br i1 %c9, label %loop9, label %loopexit9

loopexit9:                                        
  ret i32 %l.next
}









define void @twoexit() {
"function top level":
  br label %loop

loop:                                             
  %0 = phi i64 [ 0, %"function top level" ], [ %2, %body ]
  %1 = icmp ugt i64 %0, 2
  br i1 %1, label %fail, label %body

fail:                                             
  tail call void @bounds_fail()
  unreachable

body:                                             
  %2 = add i64 %0, 1
  %3 = icmp slt i64 %2, 3
  br i1 %3, label %loop, label %out

out:                                              
  ret void
}
declare void @bounds_fail()
