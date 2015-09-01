





target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define i64 @foo(i64 %b) nounwind readnone {
entry:




	%shl = shl i64 %b, 56		
	%shr = ashr i64 %shl, 48		
	%add5 = or i64 %shr, 1		
	ret i64 %add5
}
