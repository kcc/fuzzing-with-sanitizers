

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"





define <4 x i32> @Shuffle(<4 x i32> %x) nounwind uwtable sanitize_memory {
entry:
  %y = shufflevector <4 x i32> %x, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  ret <4 x i32> %y
}










define float @SelectFloat(i1 %b, float %x, float %y) nounwind uwtable sanitize_memory {
entry:
  %z = select i1 %b, float %x, float %y
  ret float %z
}




