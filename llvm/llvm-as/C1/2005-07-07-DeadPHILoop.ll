



define void @test(i32* %P) {
        ret void

Dead:           
        %X = phi i32 [ %Y, %Dead ]              
        %Y = sdiv i32 %X, 10            
        store i32 %Y, i32* %P
        br label %Dead
}

