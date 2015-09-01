




define i32 @rotl32(i32 %A, i8 %Amt) nounwind {
	%shift.upgrd.1 = zext i8 %Amt to i32		
	%B = shl i32 %A, %shift.upgrd.1		
	%Amt2 = sub i8 32, %Amt		
	%shift.upgrd.2 = zext i8 %Amt2 to i32		
	%C = lshr i32 %A, %shift.upgrd.2		
	%D = or i32 %B, %C		
	ret i32 %D
}

define i32 @rotr32(i32 %A, i8 %Amt) nounwind {
	%shift.upgrd.3 = zext i8 %Amt to i32		
	%B = lshr i32 %A, %shift.upgrd.3		
	%Amt2 = sub i8 32, %Amt		
	%shift.upgrd.4 = zext i8 %Amt2 to i32		
	%C = shl i32 %A, %shift.upgrd.4		
	%D = or i32 %B, %C		
	ret i32 %D
}

define i32 @rotli32(i32 %A) nounwind {
	%B = shl i32 %A, 5		
	%C = lshr i32 %A, 27		
	%D = or i32 %B, %C		
	ret i32 %D
}

define i32 @rotri32(i32 %A) nounwind {
	%B = lshr i32 %A, 5		
	%C = shl i32 %A, 27		
	%D = or i32 %B, %C		
	ret i32 %D
}

