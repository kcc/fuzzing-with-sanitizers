

@size = global i32 0		
@g0 = external global i32		
@g1 = external global i32		
@g2 = external global i32		
@g3 = external global i32		
@g4 = external global i32		
@g5 = external global i32		
@g6 = external global i32		
@g7 = external global i32		
@g8 = external global i32		
@g9 = external global i32		
@g10 = external global i32		
@g11 = external global i32		

define void @f() nounwind {
entry:
	%x = alloca [100 x i32], align 4		
	%0 = load i32, i32* @size, align 4		
	%1 = alloca i32, i32 %0, align 4		
	%2 = load volatile i32, i32* @g0, align 4		
	%3 = load volatile i32, i32* @g1, align 4		
	%4 = load volatile i32, i32* @g2, align 4		
	%5 = load volatile i32, i32* @g3, align 4		
	%6 = load volatile i32, i32* @g4, align 4		
	%7 = load volatile i32, i32* @g5, align 4		
	%8 = load volatile i32, i32* @g6, align 4		
	%9 = load volatile i32, i32* @g7, align 4		
	%10 = load volatile i32, i32* @g8, align 4		
	%11 = load volatile i32, i32* @g9, align 4		
	%12 = load volatile i32, i32* @g10, align 4		
	%13 = load volatile i32, i32* @g11, align 4		
	%14 = getelementptr [100 x i32], [100 x i32]* %x, i32 0, i32 50		
	store i32 %13, i32* %14, align 4
	store volatile i32 %13, i32* @g11, align 4
	store volatile i32 %12, i32* @g10, align 4
	store volatile i32 %11, i32* @g9, align 4
	store volatile i32 %10, i32* @g8, align 4
	store volatile i32 %9, i32* @g7, align 4
	store volatile i32 %8, i32* @g6, align 4
	store volatile i32 %7, i32* @g5, align 4
	store volatile i32 %6, i32* @g4, align 4
	store volatile i32 %5, i32* @g3, align 4
	store volatile i32 %4, i32* @g2, align 4
	store volatile i32 %3, i32* @g1, align 4
	store volatile i32 %2, i32* @g0, align 4
	%x1 = getelementptr [100 x i32], [100 x i32]* %x, i32 0, i32 0		
	call void @g(i32* %x1, i32* %1) nounwind
	ret void
}
declare void @g(i32*, i32*)


















































define void @ScavengeSlots(i32 %r0, i32 %r1, i32 %r2, i32 %r3, i32 %r4) nounwind {
entry:
  %Data = alloca [100000 x i32]
  %i0 = getelementptr inbounds [100000 x i32], [100000 x i32]* %Data, i32 0, i32 80000
  store volatile i32 %r0, i32* %i0
  %i1 = getelementptr inbounds [100000 x i32], [100000 x i32]* %Data, i32 0, i32 81000
  store volatile i32 %r1, i32* %i1
  %i2 = getelementptr inbounds [100000 x i32], [100000 x i32]* %Data, i32 0, i32 82000
  store volatile i32 %r2, i32* %i2
  %i3 = getelementptr inbounds [100000 x i32], [100000 x i32]* %Data, i32 0, i32 83000
  store volatile i32 %r3, i32* %i3
  %i4 = getelementptr inbounds [100000 x i32], [100000 x i32]* %Data, i32 0, i32 84000
  store volatile i32 %r4, i32* %i4
  ret void
}
