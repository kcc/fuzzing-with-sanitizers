


define void @test_reg_stride(double %a, double %b) {








  call void asm "", "~{r0},~{r1},~{d0},~{d1}"()
  call arm_aapcs_vfpcc void @eat_doubles(double %a, double %b)
  ret void
}

define void @test_stride_minsize(float %a, float %b) minsize {







  call void asm "", "~{r0},~{r1},~{s0},~{s1},~{d0},~{d1}"()
  call arm_aapcs_vfpcc void @eat_floats(float %a, float %b)
  ret void
}


declare arm_aapcs_vfpcc void @eat_doubles(double, double)
declare arm_aapcs_vfpcc void @eat_floats(float, float)
