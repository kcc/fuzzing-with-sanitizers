


define i39 @test1(i39 %V, i39 %M) {
    
    
    
    %C1 = xor i39 274877906943, -1 
    %N = and i39 %M, 274877906944
    %A = add i39 %V, %N
    %B = and i39 %A, %C1
    %D = and i39 %V, 274877906943
    %R = or i39 %B, %D
    ret i39 %R




}


define i399 @test2(i399 %V, i399 %M) {
    
    
    
    %C1 = xor i399 274877906943, -1 
    %N = and i399 %M, 18446742974197923840
    %A = add i399 %V, %N
    %B = and i399 %A, %C1
    %D = and i399 %V, 274877906943
    %R = or i399 %B, %D
    ret i399 %R




}
