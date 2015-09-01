





define i64 @test(double %D) {
        %A = fptoui double %D to i32            
        %B = zext i32 %A to i64         
        ret i64 %B
}

