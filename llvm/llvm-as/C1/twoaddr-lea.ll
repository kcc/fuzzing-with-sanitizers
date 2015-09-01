








@G = external global i32

define i32 @test1(i32 %X) nounwind {



        %Z = add i32 %X, 1
        store volatile i32 %Z, i32* @G
        ret i32 %X
}




define i32 @test2(i32 inreg %a, i32 inreg %b, i32 %c, i32 %d) nounwind {
entry:





 %add = add i32 %b, %a
 %add3 = add i32 %add, %c
 %add5 = add i32 %add3, %d
 ret i32 %add5
}


define i64 @test3(i64 %x) nounwind readnone ssp {
entry:




  %0 = shl i64 %x, 1
  ret i64 %0
}
