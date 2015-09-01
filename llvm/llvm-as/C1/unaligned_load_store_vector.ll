




define void @v64_v8i8_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i8>*
  %vo  = bitcast i8* %po to <8 x i8>*

  %v1 = load  <8 x i8>,  <8 x i8>* %vi, align 1

  store <8 x i8> %v1, <8 x i8>* %vo, align 1
  ret void
}





define void @v64_v4i16_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i16>*
  %vo  = bitcast i8* %po to <4 x i16>*

  %v1 = load  <4 x i16>,  <4 x i16>* %vi, align 1

  store <4 x i16> %v1, <4 x i16>* %vo, align 1
  ret void
}





define void @v64_v2i32_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i32>*
  %vo  = bitcast i8* %po to <2 x i32>*

  %v1 = load  <2 x i32>,  <2 x i32>* %vi, align 1

  store <2 x i32> %v1, <2 x i32>* %vo, align 1
  ret void
}





define void @v64_v2f32_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x float>*
  %vo  = bitcast i8* %po to <2 x float>*

  %v1 = load  <2 x float>,  <2 x float>* %vi, align 1

  store <2 x float> %v1, <2 x float>* %vo, align 1
  ret void
}





define void @v128_v16i8_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <16 x i8>*
  %vo  = bitcast i8* %po to <16 x i8>*

  %v1 = load  <16 x i8>,  <16 x i8>* %vi, align 1

  store <16 x i8> %v1, <16 x i8>* %vo, align 1
  ret void
}





define void @v128_v8i16_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i16>*
  %vo  = bitcast i8* %po to <8 x i16>*

  %v1 = load  <8 x i16>,  <8 x i16>* %vi, align 1

  store <8 x i16> %v1, <8 x i16>* %vo, align 1
  ret void
}





define void @v128_v4i32_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i32>*
  %vo  = bitcast i8* %po to <4 x i32>*

  %v1 = load  <4 x i32>,  <4 x i32>* %vi, align 1

  store <4 x i32> %v1, <4 x i32>* %vo, align 1
  ret void
}





define void @v128_v2i64_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i64>*
  %vo  = bitcast i8* %po to <2 x i64>*

  %v1 = load  <2 x i64>,  <2 x i64>* %vi, align 1

  store <2 x i64> %v1, <2 x i64>* %vo, align 1
  ret void
}





define void @v128_v4f32_1(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x float>*
  %vo  = bitcast i8* %po to <4 x float>*

  %v1 = load  <4 x float>,  <4 x float>* %vi, align 1

  store <4 x float> %v1, <4 x float>* %vo, align 1
  ret void
}





define void @v64_v8i8_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i8>*
  %vo  = bitcast i8* %po to <8 x i8>*

  %v1 = load  <8 x i8>,  <8 x i8>* %vi, align 2

  store <8 x i8> %v1, <8 x i8>* %vo, align 2
  ret void
}





define void @v64_v4i16_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i16>*
  %vo  = bitcast i8* %po to <4 x i16>*

  %v1 = load  <4 x i16>,  <4 x i16>* %vi, align 2

  store <4 x i16> %v1, <4 x i16>* %vo, align 2
  ret void
}





define void @v64_v2i32_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i32>*
  %vo  = bitcast i8* %po to <2 x i32>*

  %v1 = load  <2 x i32>,  <2 x i32>* %vi, align 2

  store <2 x i32> %v1, <2 x i32>* %vo, align 2
  ret void
}





define void @v64_v2f32_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x float>*
  %vo  = bitcast i8* %po to <2 x float>*

  %v1 = load  <2 x float>,  <2 x float>* %vi, align 2

  store <2 x float> %v1, <2 x float>* %vo, align 2
  ret void
}





define void @v128_v16i8_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <16 x i8>*
  %vo  = bitcast i8* %po to <16 x i8>*

  %v1 = load  <16 x i8>,  <16 x i8>* %vi, align 2

  store <16 x i8> %v1, <16 x i8>* %vo, align 2
  ret void
}





define void @v128_v8i16_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i16>*
  %vo  = bitcast i8* %po to <8 x i16>*

  %v1 = load  <8 x i16>,  <8 x i16>* %vi, align 2

  store <8 x i16> %v1, <8 x i16>* %vo, align 2
  ret void
}





define void @v128_v4i32_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i32>*
  %vo  = bitcast i8* %po to <4 x i32>*

  %v1 = load  <4 x i32>,  <4 x i32>* %vi, align 2

  store <4 x i32> %v1, <4 x i32>* %vo, align 2
  ret void
}





define void @v128_v2i64_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i64>*
  %vo  = bitcast i8* %po to <2 x i64>*

  %v1 = load  <2 x i64>,  <2 x i64>* %vi, align 2

  store <2 x i64> %v1, <2 x i64>* %vo, align 2
  ret void
}





define void @v128_v4f32_2(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x float>*
  %vo  = bitcast i8* %po to <4 x float>*

  %v1 = load  <4 x float>,  <4 x float>* %vi, align 2

  store <4 x float> %v1, <4 x float>* %vo, align 2
  ret void
}





define void @v64_v8i8_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i8>*
  %vo  = bitcast i8* %po to <8 x i8>*

  %v1 = load  <8 x i8>,  <8 x i8>* %vi, align 4

  store <8 x i8> %v1, <8 x i8>* %vo, align 4
  ret void
}





define void @v64_v4i16_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i16>*
  %vo  = bitcast i8* %po to <4 x i16>*

  %v1 = load  <4 x i16>,  <4 x i16>* %vi, align 4

  store <4 x i16> %v1, <4 x i16>* %vo, align 4
  ret void
}





define void @v64_v2i32_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i32>*
  %vo  = bitcast i8* %po to <2 x i32>*

  %v1 = load  <2 x i32>,  <2 x i32>* %vi, align 4

  store <2 x i32> %v1, <2 x i32>* %vo, align 4
  ret void
}





define void @v64_v2f32_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x float>*
  %vo  = bitcast i8* %po to <2 x float>*

  %v1 = load  <2 x float>,  <2 x float>* %vi, align 4

  store <2 x float> %v1, <2 x float>* %vo, align 4
  ret void
}





define void @v128_v16i8_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <16 x i8>*
  %vo  = bitcast i8* %po to <16 x i8>*

  %v1 = load  <16 x i8>,  <16 x i8>* %vi, align 4

  store <16 x i8> %v1, <16 x i8>* %vo, align 4
  ret void
}





define void @v128_v8i16_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <8 x i16>*
  %vo  = bitcast i8* %po to <8 x i16>*

  %v1 = load  <8 x i16>,  <8 x i16>* %vi, align 4

  store <8 x i16> %v1, <8 x i16>* %vo, align 4
  ret void
}





define void @v128_v4i32_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x i32>*
  %vo  = bitcast i8* %po to <4 x i32>*

  %v1 = load  <4 x i32>,  <4 x i32>* %vi, align 4

  store <4 x i32> %v1, <4 x i32>* %vo, align 4
  ret void
}





define void @v128_v2i64_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <2 x i64>*
  %vo  = bitcast i8* %po to <2 x i64>*

  %v1 = load  <2 x i64>,  <2 x i64>* %vi, align 4

  store <2 x i64> %v1, <2 x i64>* %vo, align 4
  ret void
}





define void @v128_v4f32_4(i8* noalias nocapture %out, i8* noalias nocapture %in) nounwind {

entry:
  %po = getelementptr i8, i8* %out, i32 0
  %pi = getelementptr i8, i8* %in,  i32 0
  %vi  = bitcast i8* %pi to <4 x float>*
  %vo  = bitcast i8* %po to <4 x float>*

  %v1 = load  <4 x float>,  <4 x float>* %vi, align 4

  store <4 x float> %v1, <4 x float>* %vo, align 4
  ret void
}

