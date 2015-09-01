








define i16 @reassociate_muls_i16(i16 %x0, i16 %x1, i16 %x2, i16 %x3) {






  %t0 = add i16 %x0, %x1
  %t1 = mul i16 %x2, %t0
  %t2 = mul i16 %x3, %t1
  ret i16 %t2
}

define i32 @reassociate_muls_i32(i32 %x0, i32 %x1, i32 %x2, i32 %x3) {











  %t0 = add i32 %x0, %x1
  %t1 = mul i32 %x2, %t0
  %t2 = mul i32 %x3, %t1
  ret i32 %t2
}

define i64 @reassociate_muls_i64(i64 %x0, i64 %x1, i64 %x2, i64 %x3) {






  %t0 = add i64 %x0, %x1
  %t1 = mul i64 %x2, %t0
  %t2 = mul i64 %x3, %t1
  ret i64 %t2
}




define i8 @reassociate_ands_i8(i8 %x0, i8 %x1, i8 %x2, i8 %x3) {







  %t0 = sub i8 %x0, %x1
  %t1 = and i8 %x2, %t0
  %t2 = and i8 %x3, %t1
  ret i8 %t2
}



define i32 @reassociate_ands_i32(i32 %x0, i32 %x1, i32 %x2, i32 %x3) {







  %t0 = sub i32 %x0, %x1
  %t1 = and i32 %x2, %t0
  %t2 = and i32 %x3, %t1
  ret i32 %t2
}

define i64 @reassociate_ands_i64(i64 %x0, i64 %x1, i64 %x2, i64 %x3) {







  %t0 = sub i64 %x0, %x1
  %t1 = and i64 %x2, %t0
  %t2 = and i64 %x3, %t1
  ret i64 %t2
}




define i8 @reassociate_ors_i8(i8 %x0, i8 %x1, i8 %x2, i8 %x3) {







  %t0 = sub i8 %x0, %x1
  %t1 = or i8 %x2, %t0
  %t2 = or i8 %x3, %t1
  ret i8 %t2
}



define i32 @reassociate_ors_i32(i32 %x0, i32 %x1, i32 %x2, i32 %x3) {







  %t0 = sub i32 %x0, %x1
  %t1 = or i32 %x2, %t0
  %t2 = or i32 %x3, %t1
  ret i32 %t2
}

define i64 @reassociate_ors_i64(i64 %x0, i64 %x1, i64 %x2, i64 %x3) {







  %t0 = sub i64 %x0, %x1
  %t1 = or i64 %x2, %t0
  %t2 = or i64 %x3, %t1
  ret i64 %t2
}

