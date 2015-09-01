



define <4 x float> @vmaxnmq(<4 x float>* %A, <4 x float>* %B) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = call <4 x float> @llvm.arm.neon.vmaxnm.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
  ret <4 x float> %tmp3
}

define <2 x float> @vmaxnmd(<2 x float>* %A, <2 x float>* %B) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = call <2 x float> @llvm.arm.neon.vmaxnm.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
  ret <2 x float> %tmp3
}

define <4 x float> @vminnmq(<4 x float>* %A, <4 x float>* %B) nounwind {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = load <4 x float>, <4 x float>* %B
  %tmp3 = call <4 x float> @llvm.arm.neon.vminnm.v4f32(<4 x float> %tmp1, <4 x float> %tmp2)
  ret <4 x float> %tmp3
}

define <2 x float> @vminnmd(<2 x float>* %A, <2 x float>* %B) nounwind {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = load <2 x float>, <2 x float>* %B
  %tmp3 = call <2 x float> @llvm.arm.neon.vminnm.v2f32(<2 x float> %tmp1, <2 x float> %tmp2)
  ret <2 x float> %tmp3
}



define float @fp-armv8_vminnm_o(float %a, float %b) {


  %cmp = fcmp olt float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define double @fp-armv8_vminnm_ole(double %a, double %b) {


  %cmp = fcmp ole double %a, %b
  %cond = select i1 %cmp, double %a, double %b
  ret double %cond
}

define float @fp-armv8_vminnm_o_rev(float %a, float %b) {


  %cmp = fcmp ogt float %a, %b
  %cond = select i1 %cmp, float %b, float %a
  ret float %cond
}

define double @fp-armv8_vminnm_oge_rev(double %a, double %b) {


  %cmp = fcmp oge double %a, %b
  %cond = select i1 %cmp, double %b, double %a
  ret double %cond
}

define float @fp-armv8_vminnm_u(float %a, float %b) {


  %cmp = fcmp ult float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vminnm_ule(float %a, float %b) {


  %cmp = fcmp ule float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vminnm_u_rev(float %a, float %b) {


  %cmp = fcmp ugt float %a, %b
  %cond = select i1 %cmp, float %b, float %a
  ret float %cond
}

define double @fp-armv8_vminnm_uge_rev(double %a, double %b) {


  %cmp = fcmp uge double %a, %b
  %cond = select i1 %cmp, double %b, double %a
  ret double %cond
}

define float @fp-armv8_vmaxnm_o(float %a, float %b) {


  %cmp = fcmp ogt float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vmaxnm_oge(float %a, float %b) {


  %cmp = fcmp oge float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vmaxnm_o_rev(float %a, float %b) {


  %cmp = fcmp olt float %a, %b
  %cond = select i1 %cmp, float %b, float %a
  ret float %cond
}

define float @fp-armv8_vmaxnm_ole_rev(float %a, float %b) {


  %cmp = fcmp ole float %a, %b
  %cond = select i1 %cmp, float %b, float %a
  ret float %cond
}

define float @fp-armv8_vmaxnm_u(float %a, float %b) {


  %cmp = fcmp ugt float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vmaxnm_uge(float %a, float %b) {


  %cmp = fcmp uge float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond
}

define float @fp-armv8_vmaxnm_u_rev(float %a, float %b) {


  %cmp = fcmp ult float %a, %b
  %cond = select i1 %cmp, float %b, float %a
  ret float %cond
}

define double @fp-armv8_vmaxnm_ule_rev(double %a, double %b) {


  %cmp = fcmp ule double %a, %b
  %cond = select i1 %cmp, double %b, double %a
  ret double %cond
}



define float @fp-armv8_vminnm_NNNo(float %a) {



  %cmp1 = fcmp olt float %a, 12.
  %cond1 = select i1 %cmp1, float %a, float 12.
  %cmp2 = fcmp olt float 34., %cond1
  %cond2 = select i1 %cmp2, float 34., float %cond1
  ret float %cond2
}

define double @fp-armv8_vminnm_NNNole(double %a) {



  %cmp1 = fcmp ole double %a, 34.
  %cond1 = select i1 %cmp1, double %a, double 34.
  %cmp2 = fcmp ole double 56., %cond1
  %cond2 = select i1 %cmp2, double 56., double %cond1
  ret double %cond2
}

define float @fp-armv8_vminnm_NNNo_rev(float %a) {



  %cmp1 = fcmp ogt float %a, 56.
  %cond1 = select i1 %cmp1, float 56., float %a
  %cmp2 = fcmp ogt float 78., %cond1
  %cond2 = select i1 %cmp2, float %cond1, float 78.
  ret float %cond2
}

define double @fp-armv8_vminnm_NNNoge_rev(double %a) {



  %cmp1 = fcmp oge double %a, 78.
  %cond1 = select i1 %cmp1, double 78., double %a
  %cmp2 = fcmp oge double 90., %cond1
  %cond2 = select i1 %cmp2, double %cond1, double 90.
  ret double %cond2
}

define float @fp-armv8_vminnm_NNNu(float %b) {



  %cmp1 = fcmp ult float 12., %b
  %cond1 = select i1 %cmp1, float 12., float %b
  %cmp2 = fcmp ult float %cond1, 34.
  %cond2 = select i1 %cmp2, float %cond1, float 34.
  ret float %cond2
}

define float @fp-armv8_vminnm_NNNule(float %b) {



  %cmp1 = fcmp ule float 34., %b
  %cond1 = select i1 %cmp1, float 34., float %b
  %cmp2 = fcmp ule float %cond1, 56.
  %cond2 = select i1 %cmp2, float %cond1, float 56.
  ret float %cond2
}

define float @fp-armv8_vminnm_NNNu_rev(float %b) {



  %cmp1 = fcmp ugt float 56., %b
  %cond1 = select i1 %cmp1, float %b, float 56.
  %cmp2 = fcmp ugt float %cond1, 78.
  %cond2 = select i1 %cmp2, float 78., float %cond1
  ret float %cond2
}

define double @fp-armv8_vminnm_NNNuge_rev(double %b) {



  %cmp1 = fcmp uge double 78., %b
  %cond1 = select i1 %cmp1, double %b, double 78.
  %cmp2 = fcmp uge double %cond1, 90.
  %cond2 = select i1 %cmp2, double 90., double %cond1
  ret double %cond2
}

define float @fp-armv8_vmaxnm_NNNo(float %a) {



  %cmp1 = fcmp ogt float %a, 12.
  %cond1 = select i1 %cmp1, float %a, float 12.
  %cmp2 = fcmp ogt float 34., %cond1
  %cond2 = select i1 %cmp2, float 34., float %cond1
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNoge(float %a) {



  %cmp1 = fcmp oge float %a, 34.
  %cond1 = select i1 %cmp1, float %a, float 34.
  %cmp2 = fcmp oge float 56., %cond1
  %cond2 = select i1 %cmp2, float 56., float %cond1
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNo_rev(float %a) {



  %cmp1 = fcmp olt float %a, 56.
  %cond1 = select i1 %cmp1, float 56., float %a
  %cmp2 = fcmp olt float 78., %cond1
  %cond2 = select i1 %cmp2, float %cond1, float 78.
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNole_rev(float %a) {



  %cmp1 = fcmp ole float %a, 78.
  %cond1 = select i1 %cmp1, float 78., float %a
  %cmp2 = fcmp ole float 90., %cond1
  %cond2 = select i1 %cmp2, float %cond1, float 90.
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNu(float %b) {



  %cmp1 = fcmp ugt float 12., %b
  %cond1 = select i1 %cmp1, float 12., float %b
  %cmp2 = fcmp ugt float %cond1, 34.
  %cond2 = select i1 %cmp2, float %cond1, float 34.
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNuge(float %b) {



  %cmp1 = fcmp uge float 34., %b
  %cond1 = select i1 %cmp1, float 34., float %b
  %cmp2 = fcmp uge float %cond1, 56.
  %cond2 = select i1 %cmp2, float %cond1, float 56.
  ret float %cond2
}

define float @fp-armv8_vmaxnm_NNNu_rev(float %b) {



  %cmp1 = fcmp ult float 56., %b
  %cond1 = select i1 %cmp1, float %b, float 56.
  %cmp2 = fcmp ult float %cond1, 78.
  %cond2 = select i1 %cmp2, float 78., float %cond1
  ret float %cond2
}

define double @fp-armv8_vmaxnm_NNNule_rev( double %b) {



  %cmp1 = fcmp ule double 78., %b
  %cond1 = select i1 %cmp1, double %b, double 78.
  %cmp2 = fcmp ule double %cond1, 90.
  %cond2 = select i1 %cmp2, double 90., double %cond1
  ret double %cond2
}

define float @fp-armv8_vminmaxnm_0(float %a) {



  %cmp1 = fcmp ult float %a, 0.
  %cond1 = select i1 %cmp1, float %a, float 0.
  %cmp2 = fcmp ogt float %cond1, 0.
  %cond2 = select i1 %cmp2, float %cond1, float 0.
  ret float %cond2
}

define float @fp-armv8_vminmaxnm_neg0(float %a) {



  %cmp1 = fcmp olt float %a, -0.
  %cond1 = select i1 %cmp1, float %a, float -0.
  %cmp2 = fcmp ugt float %cond1, -0.
  %cond2 = select i1 %cmp2, float %cond1, float -0.
  ret float %cond2
}

define float @fp-armv8_vminmaxnm_e_0(float %a) {



  %cmp1 = fcmp nsz ole float 0., %a
  %cond1 = select i1 %cmp1, float 0., float %a
  %cmp2 = fcmp nsz uge float 0., %cond1
  %cond2 = select i1 %cmp2, float 0., float %cond1
  ret float %cond2
}

define float @fp-armv8_vminmaxnm_e_neg0(float %a) {



  %cmp1 = fcmp nsz ule float -0., %a
  %cond1 = select i1 %cmp1, float -0., float %a
  %cmp2 = fcmp nsz oge float -0., %cond1
  %cond2 = select i1 %cmp2, float -0., float %cond1
  ret float %cond2
}

declare <4 x float> @llvm.arm.neon.vminnm.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x float> @llvm.arm.neon.vminnm.v2f32(<2 x float>, <2 x float>) nounwind readnone
declare <4 x float> @llvm.arm.neon.vmaxnm.v4f32(<4 x float>, <4 x float>) nounwind readnone
declare <2 x float> @llvm.arm.neon.vmaxnm.v2f32(<2 x float>, <2 x float>) nounwind readnone
