

@XX = external global i32*		

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
	br i1 undef, label %bb15, label %bb12

bb12:		
	%0 = load i32*, i32** @XX, align 4		
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
	%1 = sub i32 undef, undef		
	%2 = sub i32 undef, undef		
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
	%f.5.i = phi i32 [ %1, %bb167.i ], [ %2, %bb158.i ], [ %1, %bb160.i ], [ %1, %bb161.i ], [ %1, %bb163.i ]		
	%c.14.i = select i1 undef, i32 %f.5.i, i32 undef		
	store i32 %c.14.i, i32* undef, align 4
	store i32 undef, i32* null, align 4
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
