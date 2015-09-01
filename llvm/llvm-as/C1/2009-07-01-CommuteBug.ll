

@qr = external global i32		
@II = external global i32*		
@JJ = external global i32*		

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
	%0 = load i32*, i32** @II, align 4		
	%1 = load i32*, i32** @JJ, align 4		
	%2 = load i32, i32* @qr, align 4		
	br label %bb228.i

bb74.i:		
	br i1 undef, label %bb138.i, label %bb145.i

bb138.i:		
	br label %bb145.i

bb145.i:		
	%cflag.0.i = phi i16 [ %cflag.1.i, %bb228.i ], [ %cflag.1.i, %bb74.i ], [ 1, %bb138.i ]		
	br i1 undef, label %bb146.i, label %bb151.i

bb146.i:		
	br i1 undef, label %bb228.i, label %bb151.i

bb151.i:		
	%.not297 = icmp ne i16 %cflag.0.i, 0		
	%or.cond298 = and i1 undef, %.not297		
	br i1 %or.cond298, label %bb153.i, label %bb228.i

bb153.i:		
	br i1 undef, label %bb220.i, label %bb.nph.i98

bb.nph.i98:		
	br label %bb158.i

bb158.i:		
	%c.1020.i = phi i32 [ 0, %bb.nph.i98 ], [ %c.14.i, %bb218.i ]		
	%f.419.i = phi i32 [ undef, %bb.nph.i98 ], [ %f.5.i, %bb218.i ]		
	%cflag.418.i = phi i16 [ 0, %bb.nph.i98 ], [ %cflag.3.i, %bb218.i ]		
	%pj.317.i = phi i32 [ undef, %bb.nph.i98 ], [ %7, %bb218.i ]		
	%pi.316.i = phi i32 [ undef, %bb.nph.i98 ], [ %6, %bb218.i ]		
	%fj.515.i = phi i32 [ undef, %bb.nph.i98 ], [ %fj.4.i, %bb218.i ]		
	%fi.614.i = phi i32 [ undef, %bb.nph.i98 ], [ %fi.5.i, %bb218.i ]		
	%cj.811.i = phi i32 [ undef, %bb.nph.i98 ], [ %cj.11.i100, %bb218.i ]		
	%ci.910.i = phi i32 [ undef, %bb.nph.i98 ], [ %ci.12.i, %bb218.i ]		
	%3 = sub i32 %f.419.i, 0		
	%4 = sub i32 %c.1020.i, %2		
	%5 = icmp slt i32 %3, %4		
	br i1 %5, label %bb168.i, label %bb160.i

bb160.i:		
	br i1 undef, label %bb161.i, label %bb168.i

bb161.i:		
	br i1 undef, label %bb168.i, label %bb163.i

bb163.i:		
	br i1 undef, label %bb167.i, label %bb168.i

bb167.i:		
	br label %bb168.i

bb168.i:		
	%fi.5.i = phi i32 [ %fi.614.i, %bb167.i ], [ %ci.910.i, %bb158.i ], [ %fi.614.i, %bb160.i ], [ %ci.910.i, %bb161.i ], [ %fi.614.i, %bb163.i ]		
	%fj.4.i = phi i32 [ %cj.811.i, %bb167.i ], [ %cj.811.i, %bb158.i ], [ %fj.515.i, %bb160.i ], [ %cj.811.i, %bb161.i ], [ %fj.515.i, %bb163.i ]		
	%f.5.i = phi i32 [ %3, %bb167.i ], [ %4, %bb158.i ], [ %3, %bb160.i ], [ %3, %bb161.i ], [ %3, %bb163.i ]		
	%scevgep88.i = getelementptr i32, i32* %0, i32 undef		
	%scevgep89.i = getelementptr i32, i32* %1, i32 undef		
	%ci.10.i = select i1 undef, i32 %pi.316.i, i32 undef		
	%cj.9.i = select i1 undef, i32 %pj.317.i, i32 undef		
	%ci.12.i = select i1 undef, i32 %fi.5.i, i32 undef		
	%cj.11.i100 = select i1 undef, i32 %fj.4.i, i32 undef		
	%c.14.i = select i1 undef, i32 %f.5.i, i32 undef		
	%6 = load i32, i32* %scevgep88.i, align 4		
	%7 = load i32, i32* %scevgep89.i, align 4		
	store i32 %ci.12.i, i32* %scevgep88.i, align 4
	store i32 %cj.11.i100, i32* %scevgep89.i, align 4
	br i1 undef, label %bb211.i, label %bb218.i

bb211.i:		
	br label %bb218.i

bb218.i:		
	%cflag.3.i = phi i16 [ %cflag.418.i, %bb168.i ], [ 1, %bb211.i ]		
	%8 = icmp slt i32 undef, undef		
	br i1 %8, label %bb220.i, label %bb158.i

bb220.i:		
	%cflag.4.lcssa.i = phi i16 [ 0, %bb153.i ], [ %cflag.3.i, %bb218.i ]		
	br i1 undef, label %bb221.i, label %bb228.i

bb221.i:		
	br label %bb228.i

bb228.i:		
	%cflag.1.i = phi i16 [ 0, %bb146.i ], [ %cflag.0.i, %bb151.i ], [ %cflag.4.lcssa.i, %bb220.i ], [ 1, %bb12 ], [ %cflag.4.lcssa.i, %bb221.i ]		
	br i1 false, label %bb74.i, label %bb145.i

bb15:		
	br i1 false, label %return, label %bb9

return:		
	ret void
}
