
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.5"

define i32 @test(i32 %a, i32 %L, i32 %P) nounwind {
entry:
        %0 = sub i32 %L, %a
        %1 = sub i32 %P, %0
	%2 = sub i32 %1, %a
	br label %return

return:		
	ret i32 %2
}
