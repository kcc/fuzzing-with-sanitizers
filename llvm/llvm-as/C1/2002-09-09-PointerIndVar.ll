




define void @test(i32 %A, i32 %S, i8* %S.upgrd.1) {

        br label %Loop

Loop:           
        %PIV = phi i8* [ %S.upgrd.1, %0 ], [ %PIVNext.upgrd.3, %Loop ]          
        %PIV.upgrd.2 = ptrtoint i8* %PIV to i64         
        %PIVNext = add i64 %PIV.upgrd.2, 8              
        %PIVNext.upgrd.3 = inttoptr i64 %PIVNext to i8*         
        br label %Loop
}

