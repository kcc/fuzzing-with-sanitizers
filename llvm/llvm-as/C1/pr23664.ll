

define i2 @f(i32 %arg) {
  %trunc = trunc i32 %arg to i1
  %sext = sext i1 %trunc to i2
  %or = or i2 %sext, 1
  ret i2 %or






}
