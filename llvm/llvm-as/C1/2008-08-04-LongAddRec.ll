



define i32 @a() nounwind  {
entry:
	br label %bb1

bb:		
	add i16 %x17.0, 1		
	add i16 %0, %x16.0		
	add i16 %1, %x15.0		
	add i16 %2, %x14.0		
	add i16 %3, %x13.0		
	add i16 %4, %x12.0		
	add i16 %5, %x11.0		
	add i16 %6, %x10.0		
	add i16 %7, %x9.0		
	add i16 %8, %x8.0		
	add i16 %9, %x7.0		
	add i16 %10, %x6.0		
	add i16 %11, %x5.0		
	add i16 %12, %x4.0		
	add i16 %13, %x3.0		
	add i16 %14, %x2.0		
	add i16 %15, %x1.0		
	add i32 %i.0, 1		
	br label %bb1

bb1:		
	%x2.0 = phi i16 [ 0, %entry ], [ %15, %bb ]		
	%x3.0 = phi i16 [ 0, %entry ], [ %14, %bb ]		
	%x4.0 = phi i16 [ 0, %entry ], [ %13, %bb ]		
	%x5.0 = phi i16 [ 0, %entry ], [ %12, %bb ]		
	%x6.0 = phi i16 [ 0, %entry ], [ %11, %bb ]		
	%x7.0 = phi i16 [ 0, %entry ], [ %10, %bb ]		
	%x8.0 = phi i16 [ 0, %entry ], [ %9, %bb ]		
	%x9.0 = phi i16 [ 0, %entry ], [ %8, %bb ]		
	%x10.0 = phi i16 [ 0, %entry ], [ %7, %bb ]		
	%x11.0 = phi i16 [ 0, %entry ], [ %6, %bb ]		
	%x12.0 = phi i16 [ 0, %entry ], [ %5, %bb ]		
	%x13.0 = phi i16 [ 0, %entry ], [ %4, %bb ]		
	%x14.0 = phi i16 [ 0, %entry ], [ %3, %bb ]		
	%x15.0 = phi i16 [ 0, %entry ], [ %2, %bb ]		
	%x16.0 = phi i16 [ 0, %entry ], [ %1, %bb ]		
	%x17.0 = phi i16 [ 0, %entry ], [ %0, %bb ]		
	%i.0 = phi i32 [ 0, %entry ], [ %17, %bb ]		
	%x1.0 = phi i16 [ 0, %entry ], [ %16, %bb ]		
	icmp ult i32 %i.0, 8888		
	br i1 %18, label %bb, label %bb2

bb2:		
	zext i16 %x1.0 to i32		
	ret i32 %19
}



