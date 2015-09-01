




@X = global i32 7               

define void @test(i32 %A) {

        br label %Loop

Loop:           
        %IV = phi i32 [ %A, %0 ], [ %IVNext, %Loop ]            
        %IVNext = add i32 %IV, ptrtoint (i32* @X to i32)                
        br label %Loop
}

