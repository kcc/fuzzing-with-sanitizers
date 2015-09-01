




declare <16 x float> @func_float16_ptr(<16 x float>, <16 x float> *)
declare <16 x float> @func_float16(<16 x float>, <16 x float>)
declare i32 @func_int(i32, i32)




















define <16 x float> @testf16_inp(<16 x float> %a, <16 x float> %b) nounwind {
  %y = alloca <16 x float>, align 16
  %x = fadd <16 x float> %a, %b
  %1 = call intel_ocl_bicc <16 x float> @func_float16_ptr(<16 x float> %x, <16 x float>* %y)
  %2 = load <16 x float>, <16 x float>* %y, align 16
  %3 = fadd <16 x float> %2, %1
  ret <16 x float> %3
}















define <16 x float> @testf16_regs(<16 x float> %a, <16 x float> %b) nounwind {
  %y = alloca <16 x float>, align 16
  %x = fadd <16 x float> %a, %b
  %1 = call intel_ocl_bicc <16 x float> @func_float16_ptr(<16 x float> %x, <16 x float>* %y)
  %2 = load <16 x float>, <16 x float>* %y, align 16
  %3 = fadd <16 x float> %1, %b
  %4 = fadd <16 x float> %2, %3
  ret <16 x float> %4
}



















define intel_ocl_bicc <16 x float> @test_prolog_epilog(<16 x float> %a, <16 x float> %b) nounwind {
   %c = call <16 x float> @func_float16(<16 x float> %a, <16 x float> %b)
   ret <16 x float> %c
}


declare <16 x float> @func_float16_mask(<16 x float>, <16 x i1>)




define <16 x float> @testf16_inp_mask(<16 x float> %a, i16 %mask)  {
  %imask = bitcast i16 %mask to <16 x i1>
  %1 = call intel_ocl_bicc <16 x float> @func_float16_mask(<16 x float> %a, <16 x i1> %imask)
  ret <16 x float> %1
}




define intel_ocl_bicc <16 x float> @test_prolog_epilog_with_mask(<16 x float> %a, <16 x i32> %x1, <16 x i32>%x2, <16 x i1> %mask) nounwind {
   %cmp_res = icmp eq <16 x i32>%x1, %x2
   %mask1 = xor <16 x i1> %cmp_res, %mask
   %c = call intel_ocl_bicc <16 x float> @func_float16_mask(<16 x float> %a, <16 x i1>%mask1)
   ret <16 x float> %c
}