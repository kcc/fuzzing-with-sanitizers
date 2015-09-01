








define i16 @cvt_i16_i32(i32 %x) {



  %a = trunc i32 %x to i16
  ret i16 %a
}

define i16 @cvt_i16_i64(i64 %x) {



  %a = trunc i64 %x to i16
  ret i16 %a
}





define i32 @cvt_i32_i16(i16 %x) {



  %a = zext i16 %x to i32
  ret i32 %a
}

define i32 @cvt_i32_i64(i64 %x) {



  %a = trunc i64 %x to i32
  ret i32 %a
}





define i64 @cvt_i64_i16(i16 %x) {



  %a = zext i16 %x to i64
  ret i64 %a
}

define i64 @cvt_i64_i32(i32 %x) {



  %a = zext i32 %x to i64
  ret i64 %a
}
