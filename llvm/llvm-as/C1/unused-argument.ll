



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"





define i32 @unused_first(i32 %x, i32 %y) {
  ret i32 %y
}





define i32 @unused_second(i32 %x, i32 %y) {
  ret i32 %x
}
