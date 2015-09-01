








define signext i16 @f16(i16 signext %a, i16 signext %b) {



entry:
  %conv = sext i16 %a to i32
  %conv1 = sext i16 %b to i32
  %div = sdiv i32 %conv, %conv1
  %rem = srem i32 %conv, %conv1











  %rem8 = srem i32 %conv1, %conv



  %add = add nsw i32 %rem, %div
  %add13 = add nsw i32 %add, %rem8
  %conv14 = trunc i32 %add13 to i16






  ret i16 %conv14
}

define i32 @f32(i32 %a, i32 %b) {



entry:
  %div = sdiv i32 %a, %b
  %rem = srem i32 %a, %b











  %rem1 = srem i32 %b, %a



  %add = add nsw i32 %rem, %div
  %add2 = add nsw i32 %add, %rem1



  ret i32 %add2
}

define i32 @uf(i32 %a, i32 %b) {



entry:
  %div = udiv i32 %a, %b
  %rem = urem i32 %a, %b









  %rem1 = urem i32 %b, %a



  %add = add nuw i32 %rem, %div
  %add2 = add nuw i32 %add, %rem1



  ret i32 %add2
}


define i64 @longf(i64 %a, i64 %b) {



entry:
  %div = sdiv i64 %a, %b
  %rem = srem i64 %a, %b








  %add = add nsw i64 %rem, %div




  ret i64 %add
}

define i32 @g1(i32 %a, i32 %b) {



entry:
  %div = sdiv i32 %a, %b
  %rem = srem i32 %a, %b







  %add = add nsw i32 %rem, %div



  ret i32 %add
}


define i32 @g2(i32 %a, i32 %b) {



entry:
  %rem = srem i32 %a, %b



  ret i32 %rem

}

define i32 @g3(i32 %a, i32 %b) {



entry:
  %rem = srem i32 %a, %b






  %rem1 = srem i32 %b, %rem



  %add = add nsw i32 %rem1, %rem



  ret i32 %add
}

define i32 @g4(i32 %a, i32 %b) {



entry:
  %div = sdiv i32 %a, %b






  %rem = srem i32 %b, %div



  %add = add nsw i32 %rem, %div



  ret i32 %add
}
