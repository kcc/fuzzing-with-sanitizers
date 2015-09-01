




define i32 @test() {

        br label %Loop

Loop:           


        %NonIndvar = phi i32 [ 200, %0 ], [ %NonIndvarNext, %Loop ]             
        %Canonical = phi i32 [ 0, %0 ], [ %CanonicalNext, %Loop ]               
        store i32 %Canonical, i32* null
        %NonIndvarNext = sdiv i32 %NonIndvar, 2         
        %CanonicalNext = add i32 %Canonical, 1          
        br label %Loop
}

