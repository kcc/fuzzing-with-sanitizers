








define i32 @test(i1 %a, i1 %b, i32 %i, i32 %j, i32 %k) {
entry:
        br i1 %a, label %M, label %O
O:
        br i1 %b, label %P, label %Q
P:
        %iaj = add i32 %i, %j
        %iajak = add i32 %iaj, %k
        br label %N
Q:
        %ixj = xor i32 %i, %j
        %ixjxk = xor i32 %ixj, %k
        br label %N
N:
        
        %Wp = phi i32 [ %iajak, %P ], [ %ixjxk, %Q ]
        %Wp2 = add i32 %Wp, %Wp
        br label %M
M:
        
        %W = phi i32 [ %Wp2, %N ], [ 2, %entry ]
        %R = add i32 %W, 1
        ret i32 %R
}

