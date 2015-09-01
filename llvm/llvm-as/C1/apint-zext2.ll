



define i1024 @test_sext_zext(i77 %A) {
    %c1 = zext i77 %A to i533
    %c2 = sext i533 %c1 to i1024
    ret i1024 %c2


}
