



define i32 @test(i1 %C, i32 %A, i32 %B) {

        br i1 %C, label %BB1, label %BB2

BB1:            
        br label %BB2

BB2:            
        %R = phi i32 [ %A, %0 ], [ %B, %BB1 ]           
        ret i32 %R
}

