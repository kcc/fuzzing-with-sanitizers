
















define void @kernel_func(float* %a) {
entry:
  %buf = alloca [16 x i8], align 4












  %0 = load float, float* %a, align 4
  %1 = bitcast [16 x i8]* %buf to float*
  store float %0, float* %1, align 4
  %arrayidx2 = getelementptr inbounds float, float* %a, i64 1
  %2 = load float, float* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 1
  %3 = bitcast i8* %arrayidx3 to float*
  store float %2, float* %3, align 4
  %arrayidx4 = getelementptr inbounds float, float* %a, i64 2
  %4 = load float, float* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 2
  %5 = bitcast i8* %arrayidx5 to float*
  store float %4, float* %5, align 4
  %arrayidx6 = getelementptr inbounds float, float* %a, i64 3
  %6 = load float, float* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 3
  %7 = bitcast i8* %arrayidx7 to float*
  store float %6, float* %7, align 4








  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  call void @callee(float* %a, i8* %arraydecay) #2
  ret void
}

declare void @callee(float*, i8*)

!nvvm.annotations = !{!0}

!0 = !{void (float*)* @kernel_func, !"kernel", i32 1}
