





target triple = "x86_64-apple-darwin10.0"
	%struct.Key = type { i64 }
	%struct.__Rec = type opaque
	%struct.__vv = type {  }

define %struct.__vv* @t(%struct.Key* %desc, i64 %p) nounwind ssp {
entry:
	br label %bb4

bb4:		







	%0 = call i32 (...) @xxGetOffsetForCode(i32 undef) nounwind		
	%ins = or i64 %p, 2097152		
	%1 = call i32 (...) @xxCalculateMidType(%struct.Key* %desc, i32 0) nounwind		
	%cond = icmp eq i32 %1, 1		
	br i1 %cond, label %bb26, label %bb4

bb26:		
	%2 = and i64 %ins, 15728640		
	%cond.i = icmp eq i64 %2, 1048576		
	br i1 %cond.i, label %bb.i, label %bb4

bb.i:		
	%3 = load i32, i32* null, align 4		
	%4 = uitofp i32 %3 to float		
	%.sum13.i = add i64 0, 4		
	%5 = getelementptr i8, i8* null, i64 %.sum13.i		
	%6 = bitcast i8* %5 to i32*		
	%7 = load i32, i32* %6, align 4		
	%8 = uitofp i32 %7 to float		
	%.sum.i = add i64 0, 8		
	%9 = getelementptr i8, i8* null, i64 %.sum.i		
	%10 = bitcast i8* %9 to i32*		
	%11 = load i32, i32* %10, align 4		
	%12 = uitofp i32 %11 to float		
	%13 = insertelement <4 x float> undef, float %4, i32 0		
	%14 = insertelement <4 x float> %13, float %8, i32 1		
	%15 = insertelement <4 x float> %14, float %12, i32 2		
	store <4 x float> %15, <4 x float>* null, align 16
	br label %bb4
}

declare i32 @xxGetOffsetForCode(...)

declare i32 @xxCalculateMidType(...)
