







define signext i32 @f1(i32 signext %a, i32 signext %b) {
entry:
  
  

  %r = and i32 %a, %b
  ret i32 %r
}
