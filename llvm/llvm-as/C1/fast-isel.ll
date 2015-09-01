



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"





define float @immediate_f32() {
  ret float 2.5
}



define double @immediate_f64() {
  ret double 2.5
}
