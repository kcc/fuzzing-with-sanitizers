




define i1 @test(i32 %A, i32 %B) {
        %C = sub i32 0, %A              
        %Cc = bitcast i32 %C to i32             
        %D = sub i32 0, %B              
        %E = icmp eq i32 %Cc, %D                
        ret i1 %E
}

