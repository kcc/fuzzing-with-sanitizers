





define i8 @test19(i1 %c) {
        br i1 true, label %True, label %False

True:           
        ret i8 1

False:          
        ret i8 3
}

