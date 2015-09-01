






define i57 @test1(i57 %x, i57 %y, i57 %z) {
        %tmp3 = and i57 %z, %x
        %tmp6 = and i57 %z, %y
        %tmp7 = xor i57 %tmp3, %tmp6
        ret i57 %tmp7
}


define i23 @test2(i23 %x, i23 %y, i23 %z) {
        %tmp3 = and i23 %y, %x
        %tmp6 = or i23 %y, %x
        %tmp7 = xor i23 %tmp3, %tmp6
        ret i23 %tmp7
}

