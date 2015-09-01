






define ptx_kernel void @kernel_func(float* %a) {

  ret void
}



define void @device_func(float* %a) {

  ret void
}



define void @metadata_kernel(float* %a) {

  ret void
}


!nvvm.annotations = !{!1}

!1 = !{void (float*)* @metadata_kernel, !"kernel", i32 1}
