

define void @test1(i32 %v, i16* %ptr) {
        %tmp = trunc i32 %v to i16              
        store i16 %tmp, i16* %ptr
        ret void
}

define void @test2(i32 %v, i8* %ptr) {
        %tmp = trunc i32 %v to i8               
        store i8 %tmp, i8* %ptr
        ret void
}







