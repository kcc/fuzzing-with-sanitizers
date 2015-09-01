


@G = external global i32

define i32 @test(i32 %off) nounwind {




  %tmp = ptrtoint i32* @G to i32
  %tmp1 = add i32 %tmp, %off
  ret i32 %tmp1
}
