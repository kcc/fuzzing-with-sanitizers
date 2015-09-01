

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define <2 x i64> @ByValArgumentShadowLargeAlignment(<2 x i64>* byval %p) sanitize_memory {
entry:
  %x = load <2 x i64>, <2 x i64>* %p
  ret <2 x i64> %x
}






define i16 @ByValArgumentShadowSmallAlignment(i16* byval %p) sanitize_memory {
entry:
  %x = load i16, i16* %p
  ret i16 %x
}




