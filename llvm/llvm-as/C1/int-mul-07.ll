







define i32 @f1(i32 %a, i32 %b) {



  %ax = zext i32 %a to i64
  %bx = zext i32 %b to i64
  %mulx = mul i64 %ax, %bx
  %highx = lshr i64 %mulx, 32
  %high = trunc i64 %highx to i32
  ret i32 %high
}


define i32 @f2(i32 %a, i32 %b) {



  %ax = sext i32 %a to i64
  %bx = sext i32 %b to i64
  %mulx = mul i64 %ax, %bx
  %highx = lshr i64 %mulx, 32
  %high = trunc i64 %highx to i32
  ret i32 %high
}



define i32 @f3(i32 %a, i32 %b) {



  %ax = zext i32 %a to i64
  %bx = zext i32 %b to i64
  %mulx = mul i64 %ax, %bx
  %highx = lshr i64 %mulx, 32
  %high = trunc i64 %highx to i32
  %low = trunc i64 %mulx to i32
  %or = or i32 %high, %low
  ret i32 %or
}



define i32 @f4(i32 %a, i32 %b) {



  %ax = sext i32 %a to i64
  %bx = sext i32 %b to i64
  %mulx = mul i64 %ax, %bx
  %highx = lshr i64 %mulx, 32
  %high = trunc i64 %highx to i32
  %low = trunc i64 %mulx to i32
  %or = or i32 %high, %low
  ret i32 %or
}
