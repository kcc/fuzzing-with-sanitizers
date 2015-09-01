


define i32 @test1(i32 %A, i32 %B) {




  %W = add i32 5, %B
  %X = add i32 -7, %A
  %Y = sub i32 %X, %W
  %Z = add i32 %Y, 12
  ret i32 %Z
}
 

define i32 @test2(i32 %A, i32 %B, i32 %C, i32 %D) {






  %M = add i32 %A, 12
  %N = add i32 %M, %B
  %O = add i32 %N, %C
  %P = sub i32 %D, %O
  %Q = add i32 %P, 12
  ret i32 %Q
}
