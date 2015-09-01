



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.5"

define i8* @test(i8* %Q, i32* %L) nounwind {
entry:
	br label %bb1

bb:		
	%indvar.next = add i32 %P.0.rec, 1		
	br label %bb1

bb1:		
	%P.0.rec = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%P.0 = getelementptr i8, i8* %Q, i32 %P.0.rec		
	%0 = load i8, i8* %P.0, align 1		
	switch i8 %0, label %bb3 [
		i8 12, label %bb
		i8 42, label %bb
	]

bb3:		
	%P.0.sum = add i32 %P.0.rec, 2		
	%1 = getelementptr i8, i8* %Q, i32 %P.0.sum		
	store i8 4, i8* %1, align 1
	ret i8* %P.0
}
