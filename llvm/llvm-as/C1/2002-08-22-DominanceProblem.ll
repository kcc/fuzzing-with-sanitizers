





define i32 @test(i1 %b) {
BB0:
        ret i32 7 

Loop:           
        %B = phi i32 [ %B, %L2 ], [ %B, %Loop ]         
        br i1 %b, label %L2, label %Loop

L2:             
        br label %Loop
}

