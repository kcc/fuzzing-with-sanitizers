






define void @test_0(i32 %in0, i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.OpenCL.sampler.get.resource.id(i32 %in0) #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}






define void @test_1(i32 %in0, i32 %in1, i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.OpenCL.sampler.get.resource.id(i32 %in1) #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}






define void @test_2(i32 %in0, i32 %in1, i32 %in2, i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.OpenCL.sampler.get.resource.id(i32 %in2) #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}


declare i32 @llvm.OpenCL.sampler.get.resource.id(i32) #0

attributes #0 = { readnone }

!opencl.kernels = !{!0, !1, !2}

!0 = !{void (i32, i32 addrspace(1)*)* @test_0, !10, !20, !30, !40, !50}
!10 = !{!"kernel_arg_addr_space", i32 0, i32 1}
!20 = !{!"kernel_arg_access_qual", !"none", !"none"}
!30 = !{!"kernel_arg_type", !"sampler_t", !"int*"}
!40 = !{!"kernel_arg_base_type", !"sampler_t", !"int*"}
!50 = !{!"kernel_arg_type_qual", !"", !""}

!1 = !{void (i32, i32, i32 addrspace(1)*)* @test_1, !11, !21, !31, !41, !51}
!11 = !{!"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!21 = !{!"kernel_arg_access_qual", !"none", !"none", !"none"}
!31 = !{!"kernel_arg_type", !"sampler_t", !"sampler_t", !"int*"}
!41 = !{!"kernel_arg_base_type", !"sampler_t", !"sampler_t", !"int*"}
!51 = !{!"kernel_arg_type_qual", !"", !"", !""}

!2 = !{void (i32, i32, i32, i32 addrspace(1)*)* @test_2, !12, !22, !32, !42, !52}
!12 = !{!"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!22 = !{!"kernel_arg_access_qual", !"none", !"none", !"none", !"none"}
!32 = !{!"kernel_arg_type", !"sampler_t", !"sampler_t", !"sampler_t", !"int*"}
!42 = !{!"kernel_arg_base_type", !"sampler_t", !"sampler_t", !"sampler_t", !"int*"}
!52 = !{!"kernel_arg_type_qual", !"", !"", !"", !""}
