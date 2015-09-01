




define i1 @test1() {
        %A = icmp ule i1 true, false            
        %B = icmp uge i1 true, false            
        %C = icmp ult i1 false, true            
        %D = icmp ugt i1 true, false            
        %E = icmp eq i1 false, false            
        %F = icmp ne i1 false, true             
        %G = and i1 %A, %B              
        %H = and i1 %C, %D              
        %I = and i1 %E, %F              
        %J = and i1 %G, %H              
        %K = and i1 %I, %J              
        ret i1 %K
}

