

@"\01LC" = external constant [15 x i8]		

declare i32 @printf(i8* nocapture, ...) nounwind

define i32 @main() nounwind {
entry:
	br label %bb.i1.i

bb.i1.i:		
	br label %bb.i.i.i

bb.i.i.i:		
	br i1 undef, label %Cos.exit.i.i, label %bb.i.i.i

Cos.exit.i.i:		
	br i1 undef, label %bb2.i.i, label %bb.i1.i

bb2.i.i:		
	br label %bb3.i.i

bb3.i.i:		
	br label %bb4.i.i

bb4.i.i:		
	br i1 undef, label %bb5.i.i, label %bb4.i.i

bb5.i.i:		
	br i1 undef, label %bb.i, label %bb3.i.i

bb.i:		
	br i1 undef, label %bb1.outer2.i.i.outer, label %bb.i

bb1.outer2.i.i.outer:		
	br label %bb1.outer2.i.i

bb1.outer2.i.i:		
	br label %bb1.i.i

bb1.i.i:		
	br i1 undef, label %bb2.i9.i, label %bb1.i.i

bb2.i9.i:		
	br i1 undef, label %bb4.i11.i, label %bb1.outer2.i.i

bb4.i11.i:		
	br i1 undef, label %bb5.i12.i, label %bb4.i11.i

bb5.i12.i:		
	br i1 undef, label %bb7.i.i, label %bb1.outer2.i.i.outer

bb7.i.i:		
	br i1 undef, label %Fft.exit.i, label %bb7.i.i

Fft.exit.i:		
	br i1 undef, label %bb5.i, label %bb1.outer2.i.i.outer

bb5.i:		
	%0 = tail call i32 (i8*, ...) @printf(i8* getelementptr ([15 x i8], [15 x i8]* @"\01LC", i32 0, i32 0), double undef, double undef) nounwind		
	unreachable
}
