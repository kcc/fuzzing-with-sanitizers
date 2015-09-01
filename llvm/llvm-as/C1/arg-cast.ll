





target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i686-apple-darwin8"

define i32 @foo(double %x) nounwind  {
entry:
	%x15 = bitcast double %x to i64		
	%tmp713 = lshr i64 %x15, 32		
	%tmp714 = trunc i64 %tmp713 to i32		
	%tmp8 = and i32 %tmp714, 2147483647		
	ret i32 %tmp8
}

