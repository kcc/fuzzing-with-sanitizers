

define i32 @test1(i32 %a) {
        %tmp.1 = mul i32 %a, -2         
        %tmp.2 = add i32 %tmp.1, 63             
        ret i32 %tmp.2
}

