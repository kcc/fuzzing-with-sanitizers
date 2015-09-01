




define fastcc void @fourn(double* %data, i32 %isign) nounwind {

entry:
	br label %bb

bb:		
	%indvar93 = phi i32 [ 0, %entry ], [ %idim.030, %bb ]		
	%idim.030 = add i32 %indvar93, 1		
	%0 = add i32 %indvar93, 2		
	%1 = icmp sgt i32 %0, 2		
	br i1 %1, label %bb30.loopexit, label %bb





bb3:		
	%2 = load i32, i32* null, align 4		
	%3 = mul i32 %2, 0		
	%4 = icmp slt i32 0, %3		
	br i1 %4, label %bb18, label %bb3

bb18:		
	%5 = fdiv double %11, 0.000000e+00		
	%6 = tail call double @sin(double %5) nounwind readonly		
	br label %bb24.preheader

bb22.preheader:		
	br label %bb22.preheader

bb25:		
	%7 = fmul double 0.000000e+00, %6		
	%8 = add i32 %i3.122100, 0		
	%9 = icmp sgt i32 %8, 0		
	br i1 %9, label %bb3, label %bb24.preheader

bb24.preheader:		
	%i3.122100 = or i32 0, 1		
	%10 = icmp slt i32 0, %i3.122100		
	br i1 %10, label %bb25, label %bb22.preheader

bb30.loopexit:		
	%11 = fmul double 0.000000e+00, 0x401921FB54442D1C		
	br label %bb3
}

declare double @sin(double) nounwind readonly
