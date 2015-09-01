


define void @add_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fadd <4 x float> %1, %2
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @add_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fadd <2 x double> %1, %2
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @sub_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fsub <4 x float> %1, %2
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @sub_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fsub <2 x double> %1, %2
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @mul_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fmul <4 x float> %1, %2
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @mul_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fmul <2 x double> %1, %2
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @fma_v4f32(<4 x float>* %d, <4 x float>* %a, <4 x float>* %b,
                       <4 x float>* %c) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = load <4 x float>, <4 x float>* %c
  
  %4 = tail call <4 x float> @llvm.fma.v4f32 (<4 x float> %1, <4 x float> %2,
                                              <4 x float> %3)
  
  store <4 x float> %4, <4 x float>* %d
  

  ret void
  
}

define void @fma_v2f64(<2 x double>* %d, <2 x double>* %a, <2 x double>* %b,
                       <2 x double>* %c) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = load <2 x double>, <2 x double>* %c
  
  %4 = tail call <2 x double> @llvm.fma.v2f64 (<2 x double> %1, <2 x double> %2,
                                               <2 x double> %3)
  
  store <2 x double> %4, <2 x double>* %d
  

  ret void
  
}

define void @fmsub_v4f32(<4 x float>* %d, <4 x float>* %a, <4 x float>* %b,
                       <4 x float>* %c) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = load <4 x float>, <4 x float>* %c
  
  %4 = fmul <4 x float> %2, %3
  %5 = fsub <4 x float> %1, %4
  
  store <4 x float> %5, <4 x float>* %d
  

  ret void
  
}

define void @fmsub_v2f64(<2 x double>* %d, <2 x double>* %a, <2 x double>* %b,
                       <2 x double>* %c) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = load <2 x double>, <2 x double>* %c
  
  %4 = fmul <2 x double> %2, %3
  %5 = fsub <2 x double> %1, %4
  
  store <2 x double> %5, <2 x double>* %d
  

  ret void
  
}

define void @fdiv_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fdiv <4 x float> %1, %2
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @fdiv_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fdiv <2 x double> %1, %2
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @fabs_v4f32(<4 x float>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = tail call <4 x float> @llvm.fabs.v4f32 (<4 x float> %1)
  
  store <4 x float> %2, <4 x float>* %c
  

  ret void
  
}

define void @fabs_v2f64(<2 x double>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = tail call <2 x double> @llvm.fabs.v2f64 (<2 x double> %1)
  
  store <2 x double> %2, <2 x double>* %c
  

  ret void
  
}

define void @fexp2_v4f32(<4 x float>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = tail call <4 x float> @llvm.exp2.v4f32 (<4 x float> %1)
  
  
  
  store <4 x float> %2, <4 x float>* %c
  

  ret void
  
}

define void @fexp2_v2f64(<2 x double>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = tail call <2 x double> @llvm.exp2.v2f64 (<2 x double> %1)
  
  
  
  store <2 x double> %2, <2 x double>* %c
  

  ret void
  
}

define void @fexp2_v4f32_2(<4 x float>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = tail call <4 x float> @llvm.exp2.v4f32 (<4 x float> %1)
  %3 = fmul <4 x float> <float 2.0, float 2.0, float 2.0, float 2.0>, %2
  
  
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @fexp2_v2f64_2(<2 x double>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = tail call <2 x double> @llvm.exp2.v2f64 (<2 x double> %1)
  %3 = fmul <2 x double> <double 2.0, double 2.0>, %2
  
  
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @fsqrt_v4f32(<4 x float>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = tail call <4 x float> @llvm.sqrt.v4f32 (<4 x float> %1)
  
  store <4 x float> %2, <4 x float>* %c
  

  ret void
  
}

define void @fsqrt_v2f64(<2 x double>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = tail call <2 x double> @llvm.sqrt.v2f64 (<2 x double> %1)
  
  store <2 x double> %2, <2 x double>* %c
  

  ret void
  
}

define void @ffint_u_v4f32(<4 x float>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = uitofp <4 x i32> %1 to <4 x float>
  
  store <4 x float> %2, <4 x float>* %c
  

  ret void
  
}

define void @ffint_u_v2f64(<2 x double>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = uitofp <2 x i64> %1 to <2 x double>
  
  store <2 x double> %2, <2 x double>* %c
  

  ret void
  
}

define void @ffint_s_v4f32(<4 x float>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = sitofp <4 x i32> %1 to <4 x float>
  
  store <4 x float> %2, <4 x float>* %c
  

  ret void
  
}

define void @ffint_s_v2f64(<2 x double>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = sitofp <2 x i64> %1 to <2 x double>
  
  store <2 x double> %2, <2 x double>* %c
  

  ret void
  
}

define void @ftrunc_u_v4f32(<4 x i32>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = fptoui <4 x float> %1 to <4 x i32>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @ftrunc_u_v2f64(<2 x i64>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = fptoui <2 x double> %1 to <2 x i64>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @ftrunc_s_v4f32(<4 x i32>* %c, <4 x float>* %a) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = fptosi <4 x float> %1 to <4 x i32>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @ftrunc_s_v2f64(<2 x i64>* %c, <2 x double>* %a) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = fptosi <2 x double> %1 to <2 x i64>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

declare <4 x float>  @llvm.fabs.v4f32(<4 x float>  %Val)
declare <2 x double> @llvm.fabs.v2f64(<2 x double> %Val)
declare <4 x float>  @llvm.exp2.v4f32(<4 x float>  %val)
declare <2 x double> @llvm.exp2.v2f64(<2 x double> %val)
declare <4 x float>  @llvm.fma.v4f32(<4 x float>  %a, <4 x float>  %b,
                                     <4 x float>  %c)
declare <2 x double> @llvm.fma.v2f64(<2 x double> %a, <2 x double> %b,
                                     <2 x double> %c)
declare <4 x float>  @llvm.sqrt.v4f32(<4 x float>  %Val)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double> %Val)
