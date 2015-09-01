





define i32 @test(i32 %a, i32 %b) {
 %a1 = add i32 %a, -1
 %b1 = add i32 %b, 1
 %res = mul i32 %a1, %b1
 ret i32 %res
}

