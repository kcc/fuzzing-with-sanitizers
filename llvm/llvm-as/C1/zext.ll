

define i32 @f(i1 %a) {
entry:



  %b= zext i1 %a to i32
  ret i32 %b
}
