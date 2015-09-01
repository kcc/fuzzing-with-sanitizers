





define float @device_func(float %a) noinline {
  %ret = fmul float %a, %a
  ret float %ret
}


define void @kernel_func(float* %a) {
  %val = load float, float* %a


  %mul = call float @device_func(float %val)
  store float %mul, float* %a
  ret void
}



!nvvm.annotations = !{!1}

!1 = !{void (float*)* @kernel_func, !"kernel", i32 1}
