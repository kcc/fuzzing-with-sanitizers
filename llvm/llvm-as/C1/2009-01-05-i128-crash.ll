

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

define hidden i128 @"\01_gfortrani_max_value"(i32 %length, i32 %signed_flag) nounwind {
entry:
	switch i32 %length, label %bb13 [
		i32 1, label %bb17
		i32 4, label %bb9
		i32 8, label %bb5
	]

bb5:		
	%0 = icmp eq i32 %signed_flag, 0		
	%iftmp.28.0 = select i1 %0, i128 18446744073709551615, i128 9223372036854775807		
	ret i128 %iftmp.28.0

bb9:		
	ret i128 0

bb13:		
	ret i128 0

bb17:		
	ret i128 0
}
