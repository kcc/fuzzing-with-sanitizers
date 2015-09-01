

define i64 @ror_i64(i64 %in) {

    %left = shl i64 %in, 19
    %right = lshr i64 %in, 45
    %val5 = or i64 %left, %right

    ret i64 %val5
}

define i32 @ror_i32(i32 %in) {

    %left = shl i32 %in, 9
    %right = lshr i32 %in, 23
    %val5 = or i32 %left, %right

    ret i32 %val5
}

define i32 @extr_i32(i32 %lhs, i32 %rhs) {

  %left = shl i32 %lhs, 6
  %right = lshr i32 %rhs, 26
  %val = or i32 %left, %right
  
  


  ret i32 %val
}

define i64 @extr_i64(i64 %lhs, i64 %rhs) {

  %right = lshr i64 %rhs, 40
  %left = shl i64 %lhs, 24
  %val = or i64 %right, %left
  
  


  ret i64 %val
}



define i32 @extr_regress(i32 %a, i32 %b) {


    %sh1 = shl i32 %a, 14
    %sh2 = lshr i32 %b, 14
    %val = or i32 %sh2, %sh1


    ret i32 %val

}
