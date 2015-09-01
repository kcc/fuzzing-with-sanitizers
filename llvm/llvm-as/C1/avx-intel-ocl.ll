




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















define i32 @test_int(i32 %a, i32 %b) nounwind {
    %c1 = add i32 %a, %b
	%c2 = call intel_ocl_bicc i32 @func_int(i32 %c1, i32 %a)
    %c = add i32 %c2, %b
	ret i32 %c
}






















declare <4 x float> @func_float4(<4 x float>, <4 x float>, <4 x float>)

define <8 x float> @test_float4(<8 x float> %a, <8 x float> %b, <8 x float> %c) nounwind readnone {
entry:
  %0 = shufflevector <8 x float> %a, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %1 = shufflevector <8 x float> %b, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <8 x float> %c, <8 x float> undef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %call.i = tail call intel_ocl_bicc <4 x float> @func_float4(<4 x float> %0, <4 x float> %1, <4 x float> %2) nounwind
  %3 = shufflevector <4 x float> %call.i, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %4 = shufflevector <8 x float> %a, <8 x float> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <8 x float> %b, <8 x float> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <8 x float> %c, <8 x float> undef, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %call.i2 = tail call intel_ocl_bicc <4 x float> @func_float4(<4 x float> %4, <4 x float> %5, <4 x float> %6) nounwind
  %7 = shufflevector <4 x float> %call.i2, <4 x float> undef, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef>
  %8 = shufflevector <8 x float> %3, <8 x float> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  ret <8 x float> %8
}
