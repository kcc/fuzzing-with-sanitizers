

define i32 @test1(i32 %A) {


  %X = add i32 %A, 1
  %Y = add i32 %A, 1
  %r = sub i32 %X, %Y
  ret i32 %r
}
