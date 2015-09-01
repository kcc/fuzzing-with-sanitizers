



@array = internal addrspace(3) global [10 x float] zeroinitializer, align 4
@scalar = internal addrspace(3) global float 0.000000e+00, align 4









define float @ld_st_shared_f32(i32 %i, float %v) {



  
  %1 = load float, float* addrspacecast (float addrspace(3)* @scalar to float*), align 4

  
  store float %v, float* addrspacecast (float addrspace(3)* @scalar to float*), align 4

  
  call void @llvm.cuda.syncthreads()


  
  %2 = addrspacecast float addrspace(3)* @scalar to float*
  %3 = load float, float* %2, align 4

  
  store float %v, float* %2, align 4

  call void @llvm.cuda.syncthreads()


  
  %4 = load float, float* getelementptr inbounds ([10 x float], [10 x float]* addrspacecast ([10 x float] addrspace(3)* @array to [10 x float]*), i32 0, i32 5), align 4

  
  store float %v, float* getelementptr inbounds ([10 x float], [10 x float]* addrspacecast ([10 x float] addrspace(3)* @array to [10 x float]*), i32 0, i32 5), align 4

  call void @llvm.cuda.syncthreads()


  
  %5 = getelementptr inbounds [10 x float], [10 x float]* addrspacecast ([10 x float] addrspace(3)* @array to [10 x float]*), i32 0, i32 5
  %6 = load float, float* %5, align 4

  
  store float %v, float* %5, align 4

  call void @llvm.cuda.syncthreads()


  
  %7 = addrspacecast [10 x float] addrspace(3)* @array to [10 x float]*
  %8 = getelementptr inbounds [10 x float], [10 x float]* %7, i32 0, i32 %i
  %9 = load float, float* %8, align 4

  
  store float %v, float* %8, align 4

  call void @llvm.cuda.syncthreads()


  %sum2 = fadd float %1, %3
  %sum3 = fadd float %sum2, %4
  %sum4 = fadd float %sum3, %6
  %sum5 = fadd float %sum4, %9
  ret float %sum5
}



define i32 @ld_int_from_float() {




  %1 = load i32, i32* addrspacecast(float addrspace(3)* @scalar to i32*), align 4
  ret i32 %1
}

define i32 @ld_int_from_global_float(float addrspace(1)* %input, i32 %i, i32 %j) {


  %1 = addrspacecast float addrspace(1)* %input to float*
  %2 = getelementptr float, float* %1, i32 %i

  %3 = getelementptr float, float* %2, i32 %j

  %4 = bitcast float* %3 to i32*

  %5 = load i32, i32* %4


  ret i32 %5
}

define void @nested_const_expr() {

  
  store i32 1, i32* bitcast (float* getelementptr ([10 x float], [10 x float]* addrspacecast ([10 x float] addrspace(3)* @array to [10 x float]*), i64 0, i64 1) to i32*), align 4


  ret void
}

define void @rauw(float addrspace(1)* %input) {
  %generic_input = addrspacecast float addrspace(1)* %input to float*
  %addr = getelementptr float, float* %generic_input, i64 10
  %v = load float, float* %addr
  store float %v, float* %addr
  ret void





}

declare void @llvm.cuda.syncthreads() #3

attributes #3 = { noduplicate nounwind }

