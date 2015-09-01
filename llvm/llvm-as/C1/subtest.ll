


define i32 @test1(i32 %A, i32 %B) {



  %X = add i32 -12, %A
  %Y = sub i32 %X, %B
  %Z = add i32 %Y, 12
  ret i32 %Z
}



define i32 @test2(i32 %a, i32 %b, i32 %c) nounwind  {





  %tmp3 = sub i32 %a, %b
  %tmp5 = sub i32 %tmp3, %c
  %tmp7 = sub i32 %tmp5, %a
  ret i32 %tmp7
}
