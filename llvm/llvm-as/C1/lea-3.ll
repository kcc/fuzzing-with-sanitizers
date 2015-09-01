





define i64 @test2(i64 %a) {
        %tmp2 = shl i64 %a, 2
	%tmp3 = or i64 %tmp2, %a
        ret i64 %tmp3
}


define i32 @test(i32 %a) {
        %tmp2 = mul i32 %a, 3           
        ret i32 %tmp2
}


define i64 @test3(i64 %a) {
        %tmp2 = shl i64 %a, 3
        ret i64 %tmp2
}

