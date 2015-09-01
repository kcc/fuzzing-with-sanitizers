





define i32 @main(i32 %A) {
        
	%Ap2 = alloca i32, i32 %A		
	
        %B = add i32 %A, 1		
	%C = add i32 %A, 2		
	%D = add i32 %A, 3		
	%E = add i32 %A, 4		
	%F = add i32 %A, 5		
	%G = add i32 %A, 6		
	%H = add i32 %A, 7		
	%I = add i32 %A, 8		
	%J = add i32 %A, 9		
	%K = add i32 %A, 10		
        
	store i32 %A, i32* %Ap2
	store i32 %B, i32* %Ap2
	store i32 %C, i32* %Ap2
	store i32 %D, i32* %Ap2
	store i32 %E, i32* %Ap2
	store i32 %F, i32* %Ap2
	store i32 %G, i32* %Ap2
	store i32 %H, i32* %Ap2
	store i32 %I, i32* %Ap2
	store i32 %J, i32* %Ap2
	store i32 %K, i32* %Ap2
	ret i32 0
}
