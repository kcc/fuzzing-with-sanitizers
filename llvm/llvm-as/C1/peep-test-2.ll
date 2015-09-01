








target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"

define i32 @f(i32 %j) nounwind readnone {
entry:
	%0 = add i32 %j, 1		
	%1 = icmp sgt i32 %0, 0		
	%2 = zext i1 %1 to i32		
	ret i32 %2
}
