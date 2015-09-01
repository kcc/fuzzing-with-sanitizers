

define i61 @test1(i61 %X) {
        %Y = trunc i61 %X to i41 
        %Z = zext i41 %Y to i61
        ret i61 %Z
}

