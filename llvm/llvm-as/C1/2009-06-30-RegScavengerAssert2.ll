

@no_mat = external global i32		
@no_mis = external global i32		
@"\01LC11" = external constant [33 x i8], align 1		
@"\01LC15" = external constant [33 x i8], align 1		
@"\01LC17" = external constant [47 x i8], align 1		

declare i32 @printf(i8* nocapture, ...) nounwind

declare void @diff(i8*, i8*, i32, i32, i32, i32) nounwind

define void @SIM(i8* %A, i8* %B, i32 %M, i32 %N, i32 %K, [256 x i32]* %V, i32 %Q, i32 %R, i32 %nseq) nounwind {
entry:
	br i1 undef, label %bb5, label %bb

bb:		
	br label %bb

bb5:		
	br i1 undef, label %bb6, label %bb8

bb6:		
	br i1 undef, label %bb8, label %bb6

bb8:		
	br label %bb15

bb9:		
	br i1 undef, label %bb10, label %bb11

bb10:		
	unreachable

bb11:		
	%0 = load i32, i32* undef, align 4		
	%1 = add i32 %0, 1		
	store i32 %1, i32* undef, align 4
	%2 = load i32, i32* undef, align 4		
	%3 = sub i32 %2, %0		
	store i32 0, i32* @no_mat, align 4
	store i32 0, i32* @no_mis, align 4
	%4 = getelementptr i8, i8* %B, i32 %0		
	tail call  void @diff(i8* undef, i8* %4, i32 undef, i32 %3, i32 undef, i32 undef) nounwind
	%5 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([33 x i8], [33 x i8]* @"\01LC11", i32 0, i32 0), i32 %tmp13) nounwind		
	%6 = load i32, i32* @no_mis, align 4		
	%7 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([33 x i8], [33 x i8]* @"\01LC15", i32 0, i32 0), i32 %6) nounwind		
	%8 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([47 x i8], [47 x i8]* @"\01LC17", i32 0, i32 0), i32 undef, i32 %1, i32 undef, i32 %2) nounwind		
	br i1 undef, label %bb15, label %bb12

bb12:		
	br label %bb228.i

bb74.i:		
	br i1 undef, label %bb138.i, label %bb145.i

bb138.i:		
	br label %bb145.i

bb145.i:		
	br i1 undef, label %bb146.i, label %bb151.i

bb146.i:		
	br i1 undef, label %bb228.i, label %bb151.i

bb151.i:		
	br i1 undef, label %bb153.i, label %bb228.i

bb153.i:		
	br i1 undef, label %bb220.i, label %bb.nph.i98

bb.nph.i98:		
	br label %bb158.i

bb158.i:		
	br i1 undef, label %bb168.i, label %bb160.i

bb160.i:		
	br i1 undef, label %bb161.i, label %bb168.i

bb161.i:		
	br i1 undef, label %bb168.i, label %bb163.i

bb163.i:		
	br i1 undef, label %bb167.i, label %bb168.i

bb167.i:		
	br label %bb168.i

bb168.i:		
	br i1 undef, label %bb211.i, label %bb218.i

bb211.i:		
	br label %bb218.i

bb218.i:		
	br i1 undef, label %bb220.i, label %bb158.i

bb220.i:		
	br i1 undef, label %bb221.i, label %bb228.i

bb221.i:		
	br label %bb228.i

bb228.i:		
	br i1 undef, label %bb74.i, label %bb145.i

bb15:		
	%indvar11 = phi i32 [ 0, %bb8 ], [ %tmp13, %bb11 ]		
	%tmp13 = add i32 %indvar11, 1		
	%count.0 = sub i32 undef, %indvar11		
	br i1 undef, label %return, label %bb9

return:		
	ret void
}
