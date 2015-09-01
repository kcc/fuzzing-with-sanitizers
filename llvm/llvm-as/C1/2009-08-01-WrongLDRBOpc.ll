

@csize = external global [100 x [20 x [4 x i8]]]		
@vsize = external global [100 x [20 x [4 x i8]]]		
@cll = external global [20 x [10 x i8]]		
@lefline = external global [100 x [20 x i32]]		
@sep = external global [20 x i32]		

define void @main(i32 %argc, i8** %argv) noreturn nounwind {


entry:
	%nb.i.i.i = alloca [25 x i8], align 1		
	%line.i.i.i = alloca [200 x i8], align 1		
	%line.i = alloca [1024 x i8], align 1		
	br i1 undef, label %bb.i.i, label %bb4.preheader.i

bb.i.i:		
	unreachable

bb4.preheader.i:		
	br i1 undef, label %tbl.exit, label %bb.i.preheader

bb.i.preheader:		
	%line3.i.i.i = getelementptr [200 x i8], [200 x i8]* %line.i.i.i, i32 0, i32 0		
	br label %bb.i

bb.i:		
	br i1 undef, label %bb3.i, label %bb4.backedge.i

bb3.i:		
	br i1 undef, label %bb2.i184.i.i, label %bb.i183.i.i

bb.i183.i.i:		
	br i1 undef, label %bb2.i184.i.i, label %bb.i183.i.i

bb2.i184.i.i:		
	br i1 undef, label %bb5.i185.i.i, label %bb35.preheader.i.i.i

bb35.preheader.i.i.i:		
	%0 = load i8, i8* %line3.i.i.i, align 1		
	%1 = icmp eq i8 %0, 59		
	br i1 %1, label %bb36.i.i.i, label %bb9.i186.i.i

bb5.i185.i.i:		
	br label %bb.i171.i.i

bb9.i186.i.i:		
	unreachable

bb36.i.i.i:		
	br label %bb.i171.i.i

bb.i171.i.i:		
	%2 = phi i32 [ %4, %bb3.i176.i.i ], [ 0, %bb36.i.i.i ], [ 0, %bb5.i185.i.i ]		
	%scevgep16.i.i.i = getelementptr [20 x i32], [20 x i32]* @sep, i32 0, i32 %2		
	%scevgep18.i.i.i = getelementptr [20 x [10 x i8]], [20 x [10 x i8]]* @cll, i32 0, i32 %2, i32 0		
	store i32 -1, i32* %scevgep16.i.i.i, align 4
	br label %bb1.i175.i.i

bb1.i175.i.i:		
	%i.03.i172.i.i = phi i32 [ 0, %bb.i171.i.i ], [ %3, %bb1.i175.i.i ]		
	%scevgep11.i.i.i = getelementptr [100 x [20 x i32]], [100 x [20 x i32]]* @lefline, i32 0, i32 %i.03.i172.i.i, i32 %2		
	%scevgep12.i.i.i = getelementptr [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @vsize, i32 0, i32 %i.03.i172.i.i, i32 %2, i32 0		
	%scevgep13.i.i.i = getelementptr [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i32 0, i32 %i.03.i172.i.i, i32 %2, i32 0		
	store i8 0, i8* %scevgep12.i.i.i, align 1
	store i32 0, i32* %scevgep11.i.i.i, align 4
	store i32 108, i32* undef, align 4
	%3 = add i32 %i.03.i172.i.i, 1		
	%exitcond.i174.i.i = icmp eq i32 %3, 100		
	br i1 %exitcond.i174.i.i, label %bb3.i176.i.i, label %bb1.i175.i.i

bb3.i176.i.i:		
	%4 = add i32 %2, 1		
	br i1 undef, label %bb5.i177.i.i, label %bb.i171.i.i

bb5.i177.i.i:		
	unreachable

bb4.backedge.i:		
	br i1 undef, label %tbl.exit, label %bb.i

tbl.exit:		
	unreachable
}
