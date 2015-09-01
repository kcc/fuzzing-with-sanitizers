

define <2 x float> @test_vmovs_via_vext_lane0to0(float %arg, <2 x float> %in) {

  %vec = insertelement <2 x float> %in, float %arg, i32 0
  %res = fadd <2 x float> %vec, %vec





  ret <2 x float> %res
}

define <2 x float> @test_vmovs_via_vext_lane0to1(float %arg, <2 x float> %in) {

  %vec = insertelement <2 x float> %in, float %arg, i32 1
  %res = fadd <2 x float> %vec, %vec





  ret <2 x float> %res
}

define <2 x float> @test_vmovs_via_vext_lane1to0(float, float %arg, <2 x float> %in) {

  %vec = insertelement <2 x float> %in, float %arg, i32 0
  %res = fadd <2 x float> %vec, %vec





  ret <2 x float> %res
}

define <2 x float> @test_vmovs_via_vext_lane1to1(float, float %arg, <2 x float> %in) {

  %vec = insertelement <2 x float> %in, float %arg, i32 1
  %res = fadd <2 x float> %vec, %vec





  ret <2 x float> %res
}


define float @test_vmovs_via_vdup(float, float %ret, float %lhs, float %rhs) {


  
  
  %res = fadd float %ret, %ret
  
  


  ret float %res
}

declare float @llvm.sqrt.f32(float)

declare void @bar()


define float @test_ineligible(float, float %in) {


  %sqrt = call float @llvm.sqrt.f32(float %in)
  %val = fadd float %sqrt, %sqrt

  
  
  
  
  call void @bar()



  ret float %val
}

define i32 @test_vmovs_no_sreg(i32 %in) {


  

  %x = bitcast i32 %in to float

  %res = fadd float %x, %x


  %resi = bitcast float %res to i32

  ret i32 %resi
}











declare float @clobbers_s1(float, float)

define <2 x float> @test_clobbers_recognised(<2 x float> %invec, float %val) {
  %elt = call float @clobbers_s1(float %val, float %val)

  %vec = insertelement <2 x float> %invec, float %elt, i32 0
  %res = fadd <2 x float> %vec, %vec
  ret <2 x float> %res
}
