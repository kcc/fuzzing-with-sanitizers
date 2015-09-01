














target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"
	%struct.A = type { i32, i32 }

define void @_Z12testfunctionR1A(%struct.A* %iter) {
entry:
	%0 = getelementptr %struct.A, %struct.A* %iter, i32 0, i32 0		
	%1 = load i32, i32* %0, align 4		
	%2 = icmp eq i32 %1, 0		
	br i1 %2, label %return, label %bb.nph

bb.nph:		
	%3 = getelementptr %struct.A, %struct.A* %iter, i32 0, i32 1		
	br label %bb

bb:		
	%.rle = phi i32 [ %1, %bb.nph ], [ %7, %bb3.backedge ]		
	%4 = add i32 %.rle, 1		
	store i32 %4, i32* %0, align 4
	%5 = load i32, i32* %3, align 4		
	%6 = icmp eq i32 %4, %5		
	br i1 %6, label %bb1, label %bb3.backedge

bb1:		
	tail call void @_Z1gv()
	br label %bb3.backedge

bb3.backedge:		



	%7 = load i32, i32* %0, align 4		
	%8 = icmp eq i32 %7, 0		
	br i1 %8, label %return, label %bb

return:		
	ret void
}

declare void @_Z1gv()
