









define i32 @regpressure1(i32* %P) {
	%A = load i32, i32* %P		
	%Bp = getelementptr i32, i32* %P, i32 1		
	%B = load i32, i32* %Bp		
	%s1 = mul i32 %A, %B		
	%Cp = getelementptr i32, i32* %P, i32 2		
	%C = load i32, i32* %Cp		
	%s2 = mul i32 %s1, %C		
	%Dp = getelementptr i32, i32* %P, i32 3		
	%D = load i32, i32* %Dp		
	%s3 = mul i32 %s2, %D		
	%Ep = getelementptr i32, i32* %P, i32 4		
	%E = load i32, i32* %Ep		
	%s4 = mul i32 %s3, %E		
	%Fp = getelementptr i32, i32* %P, i32 5		
	%F = load i32, i32* %Fp		
	%s5 = mul i32 %s4, %F		
	%Gp = getelementptr i32, i32* %P, i32 6		
	%G = load i32, i32* %Gp		
	%s6 = mul i32 %s5, %G		
	%Hp = getelementptr i32, i32* %P, i32 7		
	%H = load i32, i32* %Hp		
	%s7 = mul i32 %s6, %H		
	%Ip = getelementptr i32, i32* %P, i32 8		
	%I = load i32, i32* %Ip		
	%s8 = mul i32 %s7, %I		
	%Jp = getelementptr i32, i32* %P, i32 9		
	%J = load i32, i32* %Jp		
	%s9 = mul i32 %s8, %J		
	ret i32 %s9
}

define i32 @regpressure2(i32* %P) {
	%A = load i32, i32* %P		
	%Bp = getelementptr i32, i32* %P, i32 1		
	%B = load i32, i32* %Bp		
	%Cp = getelementptr i32, i32* %P, i32 2		
	%C = load i32, i32* %Cp		
	%Dp = getelementptr i32, i32* %P, i32 3		
	%D = load i32, i32* %Dp		
	%Ep = getelementptr i32, i32* %P, i32 4		
	%E = load i32, i32* %Ep		
	%Fp = getelementptr i32, i32* %P, i32 5		
	%F = load i32, i32* %Fp		
	%Gp = getelementptr i32, i32* %P, i32 6		
	%G = load i32, i32* %Gp		
	%Hp = getelementptr i32, i32* %P, i32 7		
	%H = load i32, i32* %Hp		
	%Ip = getelementptr i32, i32* %P, i32 8		
	%I = load i32, i32* %Ip		
	%Jp = getelementptr i32, i32* %P, i32 9		
	%J = load i32, i32* %Jp		
	%s1 = mul i32 %A, %B		
	%s2 = mul i32 %s1, %C		
	%s3 = mul i32 %s2, %D		
	%s4 = mul i32 %s3, %E		
	%s5 = mul i32 %s4, %F		
	%s6 = mul i32 %s5, %G		
	%s7 = mul i32 %s6, %H		
	%s8 = mul i32 %s7, %I		
	%s9 = mul i32 %s8, %J		
	ret i32 %s9
}

define i32 @regpressure3(i16* %P, i1 %Cond, i32* %Other) {
	%A = load i16, i16* %P		
	%Bp = getelementptr i16, i16* %P, i32 1		
	%B = load i16, i16* %Bp		
	%Cp = getelementptr i16, i16* %P, i32 2		
	%C = load i16, i16* %Cp		
	%Dp = getelementptr i16, i16* %P, i32 3		
	%D = load i16, i16* %Dp		
	%Ep = getelementptr i16, i16* %P, i32 4		
	%E = load i16, i16* %Ep		
	%Fp = getelementptr i16, i16* %P, i32 5		
	%F = load i16, i16* %Fp		
	%Gp = getelementptr i16, i16* %P, i32 6		
	%G = load i16, i16* %Gp		
	%Hp = getelementptr i16, i16* %P, i32 7		
	%H = load i16, i16* %Hp		
	%Ip = getelementptr i16, i16* %P, i32 8		
	%I = load i16, i16* %Ip		
	%Jp = getelementptr i16, i16* %P, i32 9		
	%J = load i16, i16* %Jp		
	%A.upgrd.1 = sext i16 %A to i32		
	%B.upgrd.2 = sext i16 %B to i32		
	%D.upgrd.3 = sext i16 %D to i32		
	%C.upgrd.4 = sext i16 %C to i32		
	%E.upgrd.5 = sext i16 %E to i32		
	%F.upgrd.6 = sext i16 %F to i32		
	%G.upgrd.7 = sext i16 %G to i32		
	%H.upgrd.8 = sext i16 %H to i32		
	%I.upgrd.9 = sext i16 %I to i32		
	%J.upgrd.10 = sext i16 %J to i32		
	%s1 = add i32 %A.upgrd.1, %B.upgrd.2		
	%s2 = add i32 %C.upgrd.4, %s1		
	%s3 = add i32 %D.upgrd.3, %s2		
	%s4 = add i32 %E.upgrd.5, %s3		
	%s5 = add i32 %F.upgrd.6, %s4		
	%s6 = add i32 %G.upgrd.7, %s5		
	%s7 = add i32 %H.upgrd.8, %s6		
	%s8 = add i32 %I.upgrd.9, %s7		
	%s9 = add i32 %J.upgrd.10, %s8		
	ret i32 %s9
}
