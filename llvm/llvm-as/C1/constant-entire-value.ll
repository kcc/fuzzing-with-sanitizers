





define internal i32 @sum(i32 %x, i32 %y) {

  %sum = add i32 %x, %y
  %1 = extractvalue [3 x i32] [ i32 3, i32 0, i32 2 ], 2
  %sum2 = add i32 %sum, %1
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}

define internal i32 @add(i32 %x, i32 %y) {

  %sum = add i32 %x, %y
  %1 = extractvalue [3 x i32] [ i32 3, i32 0, i32 1 ], 2
  %sum2 = add i32 %sum, %1
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}

define internal i32 @plus(i32 %x, i32 %y) {

  %sum = add i32 %x, %y
  %1 = extractvalue [3 x i32] [ i32 3, i32 0, i32 5 ], 2
  %sum2 = add i32 %sum, %1
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}

define internal i32 @next(i32 %x, i32 %y) {

  %sum = add i32 %x, %y
  %1 = extractvalue [3 x i32] [ i32 3, i32 0, i32 5 ], 2
  %sum2 = add i32 %sum, %1
  %sum3 = add i32 %sum2, %y
  ret i32 %sum3
}

