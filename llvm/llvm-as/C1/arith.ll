
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i8 @add(i8 %a, i8 %b) {
  
  
  
  
  
  
  
  
  %c = add i8 %a, %b
  ret i8 %c
}

define i8 @sub(i8 %a, i8 %b) {
  
  
  
  
  
  
  
  %c = sub i8 %a, %b
  ret i8 %c
}

define i8 @mul(i8 %a, i8 %b) {
  
  
  
  
  
  
  
  %c = mul i8 %a, %b
  ret i8 %c
}

define i8 @sdiv(i8 %a, i8 %b) {
  
  
  
  
  
  
  
  %c = sdiv i8 %a, %b
  ret i8 %c
}

define i8 @udiv(i8 %a, i8 %b) {
  
  
  
  
  
  
  
  %c = udiv i8 %a, %b
  ret i8 %c
}
