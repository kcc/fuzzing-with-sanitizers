













define i32 @SumArray(i32 %Num) {
        %Num.upgrd.1 = alloca i32               
        br label %Top

Top:            
        store i32 %Num, i32* %Num.upgrd.1
        %reg108 = load i32, i32* %Num.upgrd.1                
        %cast1006 = bitcast i32 %reg108 to i32          
        %cond1001 = icmp ule i32 %cast1006, 0           
        br i1 %cond1001, label %bb6, label %Top

bb6:            
        ret i32 42
}

