







define i1 @test1(i32 %A, i32 %B) {
        %C1 = icmp slt i32 %A, %B               
        %ELIM1 = zext i1 %C1 to i32             
        %C2 = icmp sgt i32 %A, %B               
        %ELIM2 = zext i1 %C2 to i32             
        %C3 = and i32 %ELIM1, %ELIM2            
        %ELIM3 = trunc i32 %C3 to i1            
        ret i1 %ELIM3
}

