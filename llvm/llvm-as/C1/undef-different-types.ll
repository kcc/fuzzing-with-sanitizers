

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"





define internal i64 @Cfunc(i32* %P, i32* %Q) {

  store i32 4, i32* %P
  store i32 6, i32* %Q
  ret i64 undef
}

define internal i64* @Dfunc(i32* %P, i32* %Q) {

  store i32 4, i32* %P
  store i32 6, i32* %Q
  ret i64* undef
}
