


define i32 @test1(i32 %X, i32 %Y) {





  %tmp.2 = shl i32 %X, 1
  %tmp.6 = shl i32 %Y, 1
  %tmp.4 = add i32 %tmp.6, %tmp.2
  ret i32 %tmp.4
}
