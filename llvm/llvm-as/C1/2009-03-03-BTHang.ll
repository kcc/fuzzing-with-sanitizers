


 	%struct.HandleBlock = type { [30 x i32], [990 x i8*], %struct.HandleBlockTrailer }
 	%struct.HandleBlockTrailer = type { %struct.HandleBlock* }

define hidden zeroext i8 @IsHandleAllocatedFromPool(i8** %h) nounwind optsize {
entry:
	%0 = ptrtoint i8** %h to i32		
	%1 = and i32 %0, -4096		
	%2 = inttoptr i32 %1 to %struct.HandleBlock*		
	%3 = getelementptr %struct.HandleBlock, %struct.HandleBlock* %2, i32 0, i32 0, i32 0		
	%4 = load i32, i32* %3, align 4096		
	%5 = icmp eq i32 %4, 1751280747		
	br i1 %5, label %bb, label %bb1

bb:		
	%6 = getelementptr %struct.HandleBlock, %struct.HandleBlock* %2, i32 0, i32 1		
	%7 = ptrtoint [990 x i8*]* %6 to i32		
	%8 = sub i32 %0, %7		
	%9 = lshr i32 %8, 2		
	%10 = ashr i32 %8, 7		
	%11 = and i32 %10, 134217727		
	%12 = getelementptr %struct.HandleBlock, %struct.HandleBlock* %2, i32 0, i32 0, i32 %11		
	%not.i = and i32 %9, 31		
	%13 = xor i32 %not.i, 31		
	%14 = shl i32 1, %13		
	%15 = load i32, i32* %12, align 4		
	%16 = and i32 %15, %14		
	%17 = icmp eq i32 %16, 0		
	%tmp = zext i1 %17 to i8		
	ret i8 %tmp

bb1:		
	ret i8 0
}

