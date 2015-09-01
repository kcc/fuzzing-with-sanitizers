

define i32 @test(i1 %C, i32 %V1, i32 %V2, i16 %V3) {
entry:
        br i1 %C, label %then, label %else
then:           
        %V4 = or i32 %V2, %V1           
        br label %Cont
else:           
        %V5 = sext i16 %V3 to i32       
        br label %Cont
Cont:           
        %V6 = phi i32 [ %V5, %else ], [ %V4, %then ]            
        call i32 @test( i1 false, i32 0, i32 0, i16 0 )         
        ret i32 %V1
}

