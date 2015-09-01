








define void @width_2d (%opencl.image2d_t addrspace(1)* %in,
                       i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.2d(
      %opencl.image2d_t addrspace(1)* %in) #0
  %1 = extractvalue [3 x i32] %0, 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @width_3d (%opencl.image3d_t addrspace(1)* %in,
                       i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.3d(
      %opencl.image3d_t addrspace(1)* %in) #0
  %1 = extractvalue [3 x i32] %0, 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @height_2d (%opencl.image2d_t addrspace(1)* %in,
                        i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.2d(
      %opencl.image2d_t addrspace(1)* %in) #0
  %1 = extractvalue [3 x i32] %0, 1
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @height_3d (%opencl.image3d_t addrspace(1)* %in,
                        i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.3d(
      %opencl.image3d_t addrspace(1)* %in) #0
  %1 = extractvalue [3 x i32] %0, 1
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @depth_3d (%opencl.image3d_t addrspace(1)* %in,
                       i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.3d(
      %opencl.image3d_t addrspace(1)* %in) #0
  %1 = extractvalue [3 x i32] %0, 2
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @data_type_2d (%opencl.image2d_t addrspace(1)* %in,
                           i32 addrspace(1)* %out) {
entry:
  %0 = call [2 x i32] @llvm.OpenCL.image.get.format.2d(
      %opencl.image2d_t addrspace(1)* %in) #0
  %1 = extractvalue [2 x i32] %0, 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @data_type_3d (%opencl.image3d_t addrspace(1)* %in,
                                     i32 addrspace(1)* %out) {
entry:
  %0 = call [2 x i32] @llvm.OpenCL.image.get.format.3d(
      %opencl.image3d_t addrspace(1)* %in) #0
  %1 = extractvalue [2 x i32] %0, 0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @channel_order_2d (%opencl.image2d_t addrspace(1)* %in,
                               i32 addrspace(1)* %out) {
entry:
  %0 = call [2 x i32] @llvm.OpenCL.image.get.format.2d(
      %opencl.image2d_t addrspace(1)* %in) #0
  %1 = extractvalue [2 x i32] %0, 1
  store i32 %1, i32 addrspace(1)* %out
  ret void
}




define void @channel_order_3d (%opencl.image3d_t addrspace(1)* %in,
                                         i32 addrspace(1)* %out) {
entry:
  %0 = call [2 x i32] @llvm.OpenCL.image.get.format.3d(
      %opencl.image3d_t addrspace(1)* %in) #0
  %1 = extractvalue [2 x i32] %0, 1
  store i32 %1, i32 addrspace(1)* %out
  ret void
}










define void @image_arg_2nd (%opencl.image3d_t addrspace(1)* %in1,
                            i32 %x,
                            %opencl.image2d_t addrspace(1)* %in2,
                            i32 addrspace(1)* %out) {
entry:
  %0 = call [3 x i32] @llvm.OpenCL.image.get.size.2d(
      %opencl.image2d_t addrspace(1)* %in2) #0
  %1 = extractvalue [3 x i32] %0, 1
  store i32 %1, i32 addrspace(1)* %out
  ret void
}

%opencl.image2d_t = type opaque
%opencl.image3d_t = type opaque

declare [3 x i32] @llvm.OpenCL.image.get.size.2d(%opencl.image2d_t addrspace(1)*) #0
declare [3 x i32] @llvm.OpenCL.image.get.size.3d(%opencl.image3d_t addrspace(1)*) #0
declare [2 x i32] @llvm.OpenCL.image.get.format.2d(%opencl.image2d_t addrspace(1)*) #0
declare [2 x i32] @llvm.OpenCL.image.get.format.3d(%opencl.image3d_t addrspace(1)*) #0

attributes #0 = { readnone }

!opencl.kernels = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9}
!0 = !{void (%opencl.image2d_t addrspace(1)*, i32 addrspace(1)*)* @width_2d,
       !10, !20, !30, !40, !50}
!1 = !{void (%opencl.image3d_t addrspace(1)*, i32 addrspace(1)*)* @width_3d,
       !10, !21, !31, !41, !50}
!2 = !{void (%opencl.image2d_t addrspace(1)*, i32 addrspace(1)*)* @height_2d,
       !10, !20, !30, !40, !50}
!3 = !{void (%opencl.image3d_t addrspace(1)*, i32 addrspace(1)*)* @height_3d,
       !10, !21, !31, !41, !50}
!4 = !{void (%opencl.image3d_t addrspace(1)*, i32 addrspace(1)*)* @depth_3d,
       !10, !21, !31, !41, !50}
!5 = !{void (%opencl.image2d_t addrspace(1)*, i32 addrspace(1)*)* @data_type_2d,
       !10, !20, !30, !40, !50}
!6 = !{void (%opencl.image3d_t addrspace(1)*, i32 addrspace(1)*)* @data_type_3d,
       !10, !21, !31, !41, !50}
!7 = !{void (%opencl.image2d_t addrspace(1)*, i32 addrspace(1)*)* @channel_order_2d,
       !10, !20, !30, !40, !50}
!8 = !{void (%opencl.image3d_t addrspace(1)*, i32 addrspace(1)*)* @channel_order_3d,
       !10, !21, !31, !41, !50}
!9 = !{void (%opencl.image3d_t addrspace(1)*, i32, %opencl.image2d_t addrspace(1)*,
      i32 addrspace(1)*)* @image_arg_2nd, !12, !22, !32, !42, !52}

!10 = !{!"kernel_arg_addr_space", i32 1, i32 1}
!20 = !{!"kernel_arg_access_qual", !"read_only", !"none"}
!21 = !{!"kernel_arg_access_qual", !"read_only", !"none"}
!30 = !{!"kernel_arg_type", !"image2d_t", !"int*"}
!31 = !{!"kernel_arg_type", !"image3d_t", !"int*"}
!40 = !{!"kernel_arg_base_type", !"image2d_t", !"int*"}
!41 = !{!"kernel_arg_base_type", !"image3d_t", !"int*"}
!50 = !{!"kernel_arg_type_qual", !"", !""}

!12 = !{!"kernel_arg_addr_space", i32 1, i32 0, i32 1, i32 1}
!22 = !{!"kernel_arg_access_qual", !"read_only", !"none", !"write_only", !"none"}
!32 = !{!"kernel_arg_type", !"image3d_t", !"sampler_t", !"image2d_t", !"int*"}
!42 = !{!"kernel_arg_base_type", !"image3d_t", !"sampler_t", !"image2d_t", !"int*"}
!52 = !{!"kernel_arg_type_qual", !"", !"", !"", !""}
