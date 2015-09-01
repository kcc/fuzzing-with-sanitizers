
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

define double @double() {
  ret double 0x0000000000800000
}









define <4 x i32> @vec1() {
  ret <4 x i32> <i32 3, i32 2, i32 1, i32 0>
}












define <8 x i16> @vec2() {
  ret <8 x i16> <i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>
}

















define <4 x float> @undef1() {
  ret <4 x float> <float 1.0, float 1.0, float undef, float undef>












}

define float @pr23966(i32 %a) {
  %tobool = icmp ne i32 %a, 0
  %sel = select i1 %tobool, float -1.000000e+00, float 1.000000e+00
  ret float %sel
}







