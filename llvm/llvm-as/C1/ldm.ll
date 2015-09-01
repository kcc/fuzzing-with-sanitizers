


@X = external global [0 x i32]          

define i32 @t1() {




        %tmp = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 0)            
        %tmp3 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 1)           
        %tmp4 = tail call i32 @f1( i32 %tmp, i32 %tmp3 )                
        ret i32 %tmp4
}

define i32 @t2() {




        %tmp = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 2)            
        %tmp3 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 3)           
        %tmp5 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 4)           
        %tmp6 = tail call i32 @f2( i32 %tmp, i32 %tmp3, i32 %tmp5 )             
        ret i32 %tmp6
}

define i32 @t3() {







        %tmp = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 1)            
        %tmp3 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 2)           
        %tmp5 = load i32, i32* getelementptr ([0 x i32], [0 x i32]* @X, i32 0, i32 3)           
        %tmp6 = call i32 @f2( i32 %tmp, i32 %tmp3, i32 %tmp5 )             
        ret i32 %tmp6
}

declare i32 @f1(i32, i32)

declare i32 @f2(i32, i32, i32)
