


define i32 @test(i32 %x) {
        %tmp = trunc i32 %x to i16              
        %tmp2 = call i32 @f( i32 1, i16 %tmp )             
        ret i32 %tmp2
}

declare i32 @f(i32, i16)






