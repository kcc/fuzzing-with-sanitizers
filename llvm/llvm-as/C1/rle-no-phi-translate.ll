




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"

define i32 @g(i32* %b, i32* %c) nounwind {
entry:
        store i32 1, i32* %b
        store i32 2, i32* %c
        
	%t1 = icmp eq i32* %b, null		
	br i1 %t1, label %bb, label %bb2

bb:		
	br label %bb2

bb2:		
	%c_addr.0 = phi i32* [ %b, %entry ], [ %c, %bb ]		
	%cv = load i32, i32* %c_addr.0, align 4		
	ret i32 %cv



}

