


define arm_aapcs_vfpcc void @_Z27Benchmark_SceDualQuaternionPvm(i8* nocapture %pBuffer, i32 %numItems) nounwind {
entry:
  br i1 undef, label %return, label %bb

bb:                                               
  %0 = load float, float* undef, align 4                 
  %1 = load float, float* null, align 4                  
  %2 = insertelement <4 x float> undef, float undef, i32 1 
  %3 = insertelement <4 x float> %2, float %1, i32 2 
  %4 = insertelement <4 x float> undef, float %0, i32 2 
  %5 = insertelement <4 x float> %4, float 0.000000e+00, i32 3 
  %6 = fsub <4 x float> zeroinitializer, %3       
  %7 = shufflevector <4 x float> %6, <4 x float> undef, <4 x i32> zeroinitializer 
  %8 = shufflevector <4 x float> %5, <4 x float> undef, <2 x i32> <i32 0, i32 1> 
  %9 = shufflevector <2 x float> %8, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1> 
  %10 = fmul <4 x float> %7, %9                   
  %11 = shufflevector <4 x float> zeroinitializer, <4 x float> undef, <4 x i32> zeroinitializer 
  %12 = shufflevector <4 x float> %5, <4 x float> undef, <2 x i32> <i32 2, i32 3> 
  %13 = shufflevector <2 x float> %12, <2 x float> undef, <4 x i32> zeroinitializer 
  %14 = fmul <4 x float> %11, %13                 
  %15 = fadd <4 x float> %10, %14                 
  %16 = shufflevector <2 x float> %12, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1> 
  %17 = fadd <4 x float> %15, zeroinitializer     
  %18 = shufflevector <4 x float> %17, <4 x float> zeroinitializer, <4 x i32> <i32 0, i32 5, i32 undef, i32 undef> 
  %19 = fmul <4 x float> %7, %16                  
  %20 = fadd <4 x float> %19, zeroinitializer     
  %21 = shufflevector <4 x float> %3, <4 x float> undef, <4 x i32> <i32 2, i32 undef, i32 undef, i32 undef> 
  %22 = shufflevector <4 x float> %21, <4 x float> undef, <4 x i32> zeroinitializer 
  %23 = fmul <4 x float> %22, %9                  
  %24 = fadd <4 x float> %20, %23                 
  %25 = shufflevector <4 x float> %18, <4 x float> %24, <4 x i32> <i32 0, i32 1, i32 6, i32 undef> 
  %26 = shufflevector <4 x float> %25, <4 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 7> 
  %27 = fmul <4 x float> %26, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01> 
  %28 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %5 
  %29 = tail call <4 x float> @llvm.arm.neon.vrecpe.v4f32(<4 x float> zeroinitializer) nounwind 
  %30 = fmul <4 x float> zeroinitializer, %29     
  %31 = fmul <4 x float> %30, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00> 
  %32 = shufflevector <4 x float> %27, <4 x float> undef, <4 x i32> zeroinitializer 
  %33 = shufflevector <4 x float> %28, <4 x float> undef, <2 x i32> <i32 2, i32 3> 
  %34 = shufflevector <2 x float> %33, <2 x float> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1> 
  %35 = fmul <4 x float> %32, %34                 
  %36 = fadd <4 x float> %35, zeroinitializer     
  %37 = shufflevector <4 x float> %5, <4 x float> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef> 
  %38 = shufflevector <4 x float> %37, <4 x float> undef, <4 x i32> zeroinitializer 
  %39 = fmul <4 x float> zeroinitializer, %38     
  %40 = fadd <4 x float> %36, %39                 
  %41 = fadd <4 x float> %40, zeroinitializer     
  %42 = shufflevector <4 x float> undef, <4 x float> %41, <4 x i32> <i32 0, i32 1, i32 6, i32 3> 
  %43 = fmul <4 x float> %42, %31                 
  store float undef, float* undef, align 4
  store float 0.000000e+00, float* null, align 4
  %44 = extractelement <4 x float> %43, i32 1     
  store float %44, float* undef, align 4
  br i1 undef, label %return, label %bb

return:                                           
  ret void
}

declare <4 x float> @llvm.arm.neon.vrecpe.v4f32(<4 x float>) nounwind readnone
