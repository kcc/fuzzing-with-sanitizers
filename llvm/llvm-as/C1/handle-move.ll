

















define i32 @f1(i32 %a, i32 %b, i32 %c) nounwind uwtable readnone ssp {
entry:
  %y = add i32 %c, 1
  %x = udiv i32 %b, %a
  %add = add nsw i32 %y, %x
  ret i32 %add
}










define i32 @f2(i32 %a, i32 %b, i32 %c, i32 %d) nounwind uwtable readnone ssp {
entry:
  %y = sub i32 %c, %d
  %x = urem i32 %b, %a
  %add = add nsw i32 %x, %y
  ret i32 %add
}










define i32 @f3(i32 %a, i32 %b) nounwind uwtable readnone ssp {
entry:
  %y = sub i32 %a, %b
  %x = add i32 %a, %b
  %r = mul i32 %x, %y
  ret i32 %r
}






define i32 @f4(i32 %a, i32 %b, i32 %c, i32 %d) nounwind uwtable readnone ssp {
entry:
  %x = sub i32 %a, %b
  %y = sub i32 %b, %c
  %z = sub i32 %c, %d
  %r1 = udiv i32 %x, %y
  %r2 = mul i32 %z, %r1
  ret i32 %r2
}
