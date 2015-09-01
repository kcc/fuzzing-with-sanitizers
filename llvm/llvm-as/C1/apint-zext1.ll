



define i47 @test_sext_zext(i11 %A) {
    %c1 = zext i11 %A to i39
    %c2 = sext i39 %c1 to i47
    ret i47 %c2


}
