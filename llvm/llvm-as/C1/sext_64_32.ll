





define i64 @foo(i32 %ival) nounwind readnone {
entry:
  %conv = sext i32 %ival to i64
  ret i64 %conv
}



define i64 @foo_2(i32 %ival_2) nounwind readnone {
entry:
  %conv_2 = zext i32 %ival_2 to i64
  ret i64 %conv_2
}

