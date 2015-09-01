





@lut = common global [256 x i8] zeroinitializer, align 32		

define void @foo(i32 %count, i32* %srcptr, i32* %dstptr) nounwind  {
entry:
	icmp sgt i32 %count, 0		
	br i1 %0, label %bb.nph, label %return

bb.nph:		
	br label %bb

bb:		
	%j.01 = phi i32 [ %8, %bb1 ], [ 0, %bb.nph ]		
	load i32, i32* %srcptr, align 4		
	and i32 %1, 255		
	and i32 %1, -256		
	getelementptr [256 x i8], [256 x i8]* @lut, i32 0, i32 %2		
	load i8, i8* %4, align 1		
	zext i8 %5 to i32		
	or i32 %6, %3		
	store i32 %7, i32* %dstptr, align 4
	add i32 %j.01, 1		
	br label %bb1

bb1:		
	icmp slt i32 %8, %count		
	br i1 %9, label %bb, label %bb1.return_crit_edge

bb1.return_crit_edge:		
	br label %return

return:		
	ret void
}
