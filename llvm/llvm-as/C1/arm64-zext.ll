

define i64 @foo(i32 %a, i32 %b) nounwind readnone ssp {
entry:



  %add = add i32 %b, %a
  %conv = zext i32 %add to i64
  ret i64 %conv
}
