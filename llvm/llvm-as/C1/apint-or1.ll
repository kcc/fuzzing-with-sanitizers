






define i7 @test0(i7 %X) {
    %Y = or i7 %X, 0
    ret i7 %Y
}

define i17 @test1(i17 %X) {
    %Y = or i17 %X, -1
    ret i17 %Y
} 

define i23 @test2(i23 %A) {
    
    %NotA = xor i23 -1, %A
    %B = or i23 %A, %NotA
    ret i23 %B
}

define i39 @test3(i39 %V, i39 %M) {
    
    
    
    %C1 = xor i39 274877906943, -1 
    %N = and i39 %M, 274877906944
    %A = add i39 %V, %N
    %B = and i39 %A, %C1
    %D = and i39 %V, 274877906943
    %R = or i39 %B, %D
    ret i39 %R
}
