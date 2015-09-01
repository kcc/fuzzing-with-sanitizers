

@bsBuff = internal global i32 0		
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bsGetUInt32 to i8*)], section "llvm.metadata"		

define fastcc i32 @bsGetUInt32() nounwind ssp {
entry:
	%bsBuff.promoted44 = load i32, i32* @bsBuff		
	%0 = add i32 0, -8		
	%1 = lshr i32 %bsBuff.promoted44, %0		
	%2 = shl i32 %1, 8		
	br label %bb3.i17

bb3.i9:		
	br i1 false, label %bb2.i16, label %bb1.i15

bb1.i15:		
	unreachable

bb2.i16:		
	br label %bb3.i17

bb3.i17:		
	br i1 false, label %bb3.i9, label %bsR.exit18

bsR.exit18:		
	%3 = or i32 0, %2		
	ret i32 0
}
