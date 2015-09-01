


define i64 @zext64_32(i32 %a) nounwind readnone {
entry:



  %add = add i32 %a, 2
  %conv = zext i32 %add to i64
  ret i64 %conv
}

define i64 @sext64_32(i32 %a) nounwind readnone {
entry:

  %conv = sext i32 %a to i64
  ret i64 %conv
}

define i64 @i64_float(float %f) nounwind readnone {
entry:

  %conv = fptosi float %f to i64
  ret i64 %conv
}

