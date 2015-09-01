




target datalayout = "e-p:64:64"
target triple = "x86_64-apple-darwin8"


define i32 @test(i16 signext  %X) {
entry:
        %tmp12 = sext i16 %X to i32             
        ret i32 %tmp12
}

