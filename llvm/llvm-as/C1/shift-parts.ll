


define void @shift_parts_left_128(i128* %val, i128* %amtptr) {










  %amt = load i128, i128* %amtptr
  %a = load i128, i128* %val
  %val0 = shl i128 %a, %amt
  store i128 %val0, i128* %val
  ret void
}


define void @shift_parts_right_128(i128* %val, i128* %amtptr) {









  %amt = load i128, i128* %amtptr
  %a = load i128, i128* %val
  %val0 = ashr i128 %a, %amt
  store i128 %val0, i128* %val
  ret void
}
