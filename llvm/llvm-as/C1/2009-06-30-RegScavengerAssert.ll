

@nn = external global i32		
@al_len = external global i32		
@no_mat = external global i32		
@no_mis = external global i32		
@"\01LC12" = external constant [29 x i8], align 1		
@"\01LC16" = external constant [33 x i8], align 1		
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
	store i32 %2, i32* @nn, align 4
	store i32 0, i32* @al_len, align 4
	store i32 0, i32* @no_mat, align 4
	store i32 0, i32* @no_mis, align 4
	%3 = getelementptr i8, i8* %B, i32 %0		
	tail call  void @diff(i8* undef, i8* %3, i32 undef, i32 undef, i32 undef, i32 undef) nounwind
	%4 = sitofp i32 undef to double		
	%5 = fdiv double %4, 1.000000e+01		
	%6 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([29 x i8], [29 x i8]* @"\01LC12", i32 0, i32 0), double %5) nounwind		
	%7 = load i32, i32* @al_len, align 4		
	%8 = load i32, i32* @no_mat, align 4		
	%9 = load i32, i32* @no_mis, align 4		
	%10 = sub i32 %7, %8		
	%11 = sub i32 %10, %9		
	%12 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([33 x i8], [33 x i8]* @"\01LC16", i32 0, i32 0), i32 %11) nounwind		
	%13 = tail call  i32 (i8*, ...) @printf(i8* getelementptr ([47 x i8], [47 x i8]* @"\01LC17", i32 0, i32 0), i32 undef, i32 %1, i32 undef, i32 undef) nounwind		
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
	br i1 undef, label %return, label %bb9

return:		
	ret void
}
