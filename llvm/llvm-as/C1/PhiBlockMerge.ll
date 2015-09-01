




define i32 @test(i1 %a, i1 %b) {
        br i1 %a, label %M, label %O
O:              


        br i1 %b, label %N, label %Q
Q:              
        br label %N
N:              
        
        %Wp = phi i32 [ 0, %O ], [ 1, %Q ]              
        br label %M
M:              
        %W = phi i32 [ %Wp, %N ], [ 2, %0 ]             
        %R = add i32 %W, 1              
        ret i32 %R

}

