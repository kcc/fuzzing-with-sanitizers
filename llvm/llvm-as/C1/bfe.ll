



define i32 @bfe0(i32 %a) {



  %val0 = ashr i32 %a, 4
  %val1 = and i32 %val0, 15
  ret i32 %val1
}


define i32 @bfe1(i32 %a) {



  %val0 = ashr i32 %a, 3
  %val1 = and i32 %val0, 7
  ret i32 %val1
}


define i32 @bfe2(i32 %a) {



  %val0 = ashr i32 %a, 5
  %val1 = and i32 %val0, 7
  ret i32 %val1
}
