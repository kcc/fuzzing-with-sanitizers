






define i447 @test1(i447 %A, i447 %B) {
        
        %A1 = and i447 %A, 70368744177664
        %B1 = and i447 %B, 70368744177663
        %C1 = xor i447 %A1, %B1
        ret i447 %C1
}

define i1005 @test2(i1005 %x) {
        %tmp.2 = xor i1005 %x, 0
        ret i1005 %tmp.2
}

define i123 @test3(i123 %x) {
        %tmp.2 = xor i123 %x, %x
        ret i123 %tmp.2
}

define i737 @test4(i737 %x) {
        
        %NotX = xor i737 -1, %x
        %B = xor i737 %x, %NotX
        ret i737 %B
}

define i700 @test5(i700 %A) {
        
        %t1 = or i700 %A, 288230376151711743 
        %r = xor i700 %t1, 288230376151711743 
        ret i700 %r
}

define i77 @test6(i77 %A) {
        %t1 = xor i77 %A, 23
        %r = xor i77 %t1, 23
        ret i77 %r
}

define i1023 @test7(i1023 %A) {
        
        %B1 = or i1023 %A,   70368744177663
        %C1 = xor i1023 %B1, 703687463
        ret i1023 %C1
}
