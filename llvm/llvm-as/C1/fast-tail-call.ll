





declare i8* @g(i8*)

define i8* @f(i8* %a) {
entry:
  %0 = tail call i8* @g(i8* %a)
  ret i8* %0



}
