













define void @sextload_v4i8_c(<4 x i8>* %v) nounwind {

entry:
  %0 = load <4 x i8>, <4 x i8>* %v, align 8
  %v0  = sext <4 x i8> %0 to <4 x i32>

  %v1 = mul <4 x i32>  %v0, <i32 3, i32 3, i32 3, i32 3>
  store <4 x i32> %v1, <4 x i32>* undef, align 8
  ret void
}



define void @sextload_v2i8_c(<2 x i8>* %v) nounwind {

entry:
  %0   = load <2 x i8>, <2 x i8>* %v, align 8
  %v0  = sext <2 x i8>  %0 to <2 x i64>

  %v1  = mul <2 x i64>  %v0, <i64 3, i64 3>
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}



define void @sextload_v2i16_c(<2 x i16>* %v) nounwind {

entry:
  %0   = load <2 x i16>, <2 x i16>* %v, align 8
  %v0  = sext <2 x i16>  %0 to <2 x i64>

  %v1  = mul <2 x i64>  %v0, <i64 3, i64 3>
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}





define void @sextload_v4i8_v(<4 x i8>* %v, <4 x i8>* %p) nounwind {

entry:
  %0 = load <4 x i8>, <4 x i8>* %v, align 8
  %v0  = sext <4 x i8> %0 to <4 x i32>

  %1  = load <4 x i8>, <4 x i8>* %p, align 8
  %v2 = sext <4 x i8> %1 to <4 x i32>

  %v1 = mul <4 x i32>  %v0, %v2
  store <4 x i32> %v1, <4 x i32>* undef, align 8
  ret void
}



define void @sextload_v2i8_v(<2 x i8>* %v, <2 x i8>* %p) nounwind {

entry:
  %0 = load <2 x i8>, <2 x i8>* %v, align 8
  %v0  = sext <2 x i8> %0 to <2 x i64>

  %1  = load <2 x i8>, <2 x i8>* %p, align 8
  %v2 = sext <2 x i8> %1 to <2 x i64>

  %v1 = mul <2 x i64>  %v0, %v2
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}



define void @sextload_v2i16_v(<2 x i16>* %v, <2 x i16>* %p) nounwind {

entry:
  %0 = load <2 x i16>, <2 x i16>* %v, align 8
  %v0  = sext <2 x i16> %0 to <2 x i64>

  %1  = load <2 x i16>, <2 x i16>* %p, align 8
  %v2 = sext <2 x i16> %1 to <2 x i64>

  %v1 = mul <2 x i64>  %v0, %v2
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}





define void @sextload_v4i8_vs(<4 x i8>* %v, <4 x i16>* %p) nounwind {

entry:
  %0 = load <4 x i8>, <4 x i8>* %v, align 8
  %v0  = sext <4 x i8> %0 to <4 x i32>

  %1  = load <4 x i16>, <4 x i16>* %p, align 8
  %v2 = sext <4 x i16> %1 to <4 x i32>

  %v1 = mul <4 x i32>  %v0, %v2
  store <4 x i32> %v1, <4 x i32>* undef, align 8
  ret void
}



define void @sextload_v2i8_vs(<2 x i8>* %v, <2 x i16>* %p) nounwind {

entry:
  %0 = load <2 x i8>, <2 x i8>* %v, align 8
  %v0  = sext <2 x i8> %0 to <2 x i64>

  %1  = load <2 x i16>, <2 x i16>* %p, align 8
  %v2 = sext <2 x i16> %1 to <2 x i64>

  %v1 = mul <2 x i64>  %v0, %v2
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}



define void @sextload_v2i16_vs(<2 x i16>* %v, <2 x i32>* %p) nounwind {

entry:
  %0 = load <2 x i16>, <2 x i16>* %v, align 8
  %v0  = sext <2 x i16> %0 to <2 x i64>

  %1  = load <2 x i32>, <2 x i32>* %p, align 8
  %v2 = sext <2 x i32> %1 to <2 x i64>

  %v1 = mul <2 x i64>  %v0, %v2
  store <2 x i64> %v1, <2 x i64>* undef, align 8
  ret void
}
