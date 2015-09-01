






define i32 @test(i1 %B, i32 %A, i32 %B.upgrd.1) {
        br i1 %B, label %T, label %F
T:              
        br label %ret
F:              
        br label %ret
ret:            
        %X = phi i32 [ %A, %F ], [ %B.upgrd.1, %T ]             
        ret i32 %X
}





define i32 @test2(i1 %B, i32 %A, i32 %B.upgrd.2) {
        br i1 %B, label %T, label %F
T:              
        call i32 @test( i1 true, i32 5, i32 8 )         
        br label %ret
F:              
        call i32 @test( i1 true, i32 5, i32 8 )         
        br label %ret
ret:            
        ret i32 %A
}
