




define void @v16i8_to_v16i8(<16 x i8>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}















define void @v16i8_to_v8i16(<16 x i8>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}


















define void @v16i8_to_v8f16(<16 x i8>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v16i8_to_v4i32(<16 x i8>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}
















define void @v16i8_to_v4f32(<16 x i8>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}
















define void @v16i8_to_v2i64(<16 x i8>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}

















define void @v16i8_to_v2f64(<16 x i8>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <16 x i8>, <16 x i8>* %src
  %1 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %0, <16 x i8> %0)
  %2 = bitcast <16 x i8> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}

















define void @v8i16_to_v16i8(<8 x i16>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}
















define void @v8i16_to_v8i16(<8 x i16>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}

















define void @v8i16_to_v8f16(<8 x i16>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v8i16_to_v4i32(<8 x i16>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}
















define void @v8i16_to_v4f32(<8 x i16>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}
















define void @v8i16_to_v2i64(<8 x i16>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}
















define void @v8i16_to_v2f64(<8 x i16>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <8 x i16>, <8 x i16>* %src
  %1 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %0, <8 x i16> %0)
  %2 = bitcast <8 x i16> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}



















define void @v8f16_to_v16i8(<8 x half>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <16 x i8>
  %2 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %1, <16 x i8> %1)
  store <16 x i8> %2, <16 x i8>* %dst
  ret void
}
















define void @v8f16_to_v8i16(<8 x half>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <8 x i16>
  %2 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %1, <8 x i16> %1)
  store <8 x i16> %2, <8 x i16>* %dst
  ret void
}

















define void @v8f16_to_v8f16(<8 x half>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <8 x half>
  store <8 x half> %1, <8 x half>* %dst
  ret void
}













define void @v8f16_to_v4i32(<8 x half>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <4 x i32>
  %2 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %1, <4 x i32> %1)
  store <4 x i32> %2, <4 x i32>* %dst
  ret void
}
















define void @v8f16_to_v4f32(<8 x half>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <4 x float>
  %2 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %1, <4 x float> %1)
  store <4 x float> %2, <4 x float>* %dst
  ret void
}
















define void @v8f16_to_v2i64(<8 x half>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <2 x i64>
  %2 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %1, <2 x i64> %1)
  store <2 x i64> %2, <2 x i64>* %dst
  ret void
}
















define void @v8f16_to_v2f64(<8 x half>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <8 x half>, <8 x half>* %src
  %1 = bitcast <8 x half> %0 to <2 x double>
  %2 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %1, <2 x double> %1)
  store <2 x double> %2, <2 x double>* %dst
  ret void
}















define void @v4i32_to_v16i8(<4 x i32>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}
















define void @v4i32_to_v8i16(<4 x i32>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}


















define void @v4i32_to_v8f16(<4 x i32>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v4i32_to_v4i32(<4 x i32>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}















define void @v4i32_to_v4f32(<4 x i32>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}















define void @v4i32_to_v2i64(<4 x i32>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}
















define void @v4i32_to_v2f64(<4 x i32>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <4 x i32>, <4 x i32>* %src
  %1 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %0, <4 x i32> %0)
  %2 = bitcast <4 x i32> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}
















define void @v4f32_to_v16i8(<4 x float>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}
















define void @v4f32_to_v8i16(<4 x float>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}


















define void @v4f32_to_v8f16(<4 x float>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v4f32_to_v4i32(<4 x float>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}















define void @v4f32_to_v4f32(<4 x float>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}















define void @v4f32_to_v2i64(<4 x float>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}
















define void @v4f32_to_v2f64(<4 x float>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <4 x float>, <4 x float>* %src
  %1 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %0, <4 x float> %0)
  %2 = bitcast <4 x float> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}
















define void @v2i64_to_v16i8(<2 x i64>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}

















define void @v2i64_to_v8i16(<2 x i64>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}


















define void @v2i64_to_v8f16(<2 x i64>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v2i64_to_v4i32(<2 x i64>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}
















define void @v2i64_to_v4f32(<2 x i64>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}
















define void @v2i64_to_v2i64(<2 x i64>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}















define void @v2i64_to_v2f64(<2 x i64>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <2 x i64>, <2 x i64>* %src
  %1 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %0, <2 x i64> %0)
  %2 = bitcast <2 x i64> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}















define void @v2f64_to_v16i8(<2 x double>* %src, <16 x i8>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <16 x i8>
  %3 = tail call <16 x i8> @llvm.mips.addv.b(<16 x i8> %2, <16 x i8> %2)
  store <16 x i8> %3, <16 x i8>* %dst
  ret void
}

















define void @v2f64_to_v8i16(<2 x double>* %src, <8 x i16>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <8 x i16>
  %3 = tail call <8 x i16> @llvm.mips.addv.h(<8 x i16> %2, <8 x i16> %2)
  store <8 x i16> %3, <8 x i16>* %dst
  ret void
}


















define void @v2f64_to_v8f16(<2 x double>* %src, <8 x half>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <8 x half>
  store <8 x half> %2, <8 x half>* %dst
  ret void
}













define void @v2f64_to_v4i32(<2 x double>* %src, <4 x i32>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <4 x i32>
  %3 = tail call <4 x i32> @llvm.mips.addv.w(<4 x i32> %2, <4 x i32> %2)
  store <4 x i32> %3, <4 x i32>* %dst
  ret void
}
















define void @v2f64_to_v4f32(<2 x double>* %src, <4 x float>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <4 x float>
  %3 = tail call <4 x float> @llvm.mips.fadd.w(<4 x float> %2, <4 x float> %2)
  store <4 x float> %3, <4 x float>* %dst
  ret void
}
















define void @v2f64_to_v2i64(<2 x double>* %src, <2 x i64>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <2 x i64>
  %3 = tail call <2 x i64> @llvm.mips.addv.d(<2 x i64> %2, <2 x i64> %2)
  store <2 x i64> %3, <2 x i64>* %dst
  ret void
}















define void @v2f64_to_v2f64(<2 x double>* %src, <2 x double>* %dst) nounwind {
entry:
  %0 = load volatile <2 x double>, <2 x double>* %src
  %1 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %0, <2 x double> %0)
  %2 = bitcast <2 x double> %1 to <2 x double>
  %3 = tail call <2 x double> @llvm.mips.fadd.d(<2 x double> %2, <2 x double> %2)
  store <2 x double> %3, <2 x double>* %dst
  ret void
}















declare <16 x i8> @llvm.mips.addv.b(<16 x i8>, <16 x i8>) nounwind
declare <8 x i16> @llvm.mips.addv.h(<8 x i16>, <8 x i16>) nounwind
declare <4 x i32> @llvm.mips.addv.w(<4 x i32>, <4 x i32>) nounwind
declare <2 x i64> @llvm.mips.addv.d(<2 x i64>, <2 x i64>) nounwind
declare <4 x float> @llvm.mips.fadd.w(<4 x float>, <4 x float>) nounwind
declare <2 x double> @llvm.mips.fadd.d(<2 x double>, <2 x double>) nounwind
