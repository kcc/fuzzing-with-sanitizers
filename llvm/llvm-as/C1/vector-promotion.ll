
















define void @simpleOneInstructionPromotion(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = or i32 %extract, 1
  store i32 %out, i32* %dest, align 4
  ret void
}












define void @unsupportedInstructionForPromotion(<2 x i32>* %addr1, i32 %in2, i1* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 0
  %out = icmp eq i32 %extract, %in2
  store i1 %out, i1* %dest, align 4
  ret void
}















define void @unsupportedChainInDifferentBBs(<2 x i32>* %addr1, i32* %dest, i1 %bool) {
bb1:
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 0
  br i1 %bool, label %bb2, label %end
bb2: 
  %out = or i32 %extract, 1
  store i32 %out, i32* %dest, align 4
  br label %end
end:
  ret void
}


















define void @chainOfInstructionsToPromote(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 0
  %out1 = or i32 %extract, 1
  %out2 = or i32 %out1, 1
  %out3 = or i32 %out2, 1
  %out4 = or i32 %out3, 1
  %out5 = or i32 %out4, 1
  %out6 = or i32 %out5, 1
  %out7 = or i32 %out6, 1
  store i32 %out7, i32* %dest, align 4
  ret void
}












define i32 @unsupportedMultiUses(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = or i32 %extract, 1
  store i32 %out, i32* %dest, align 4
  ret i32 %out
}














define void @udivCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = udiv i32 %extract, 7
  store i32 %out, i32* %dest, align 4
  ret void
}












define void @uremCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = urem i32 %extract, 7
  store i32 %out, i32* %dest, align 4
  ret void
}












define void @sdivCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = sdiv i32 %extract, 7
  store i32 %out, i32* %dest, align 4
  ret void
}












define void @sremCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = srem i32 %extract, 7
  store i32 %out, i32* %dest, align 4
  ret void
}












define void @fdivCase(<2 x float>* %addr1, float* %dest) {
  %in1 = load <2 x float>, <2 x float>* %addr1, align 8   
  %extract = extractelement <2 x float> %in1, i32 1
  %out = fdiv float %extract, 7.0
  store float %out, float* %dest, align 4
  ret void
}












define void @fremCase(<2 x float>* %addr1, float* %dest) {
  %in1 = load <2 x float>, <2 x float>* %addr1, align 8   
  %extract = extractelement <2 x float> %in1, i32 1
  %out = frem float %extract, 7.0
  store float %out, float* %dest, align 4
  ret void
}









define void @undefDivCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = udiv i32 7, %extract
  store i32 %out, i32* %dest, align 4
  ret void
}










define void @undefRemCase(<2 x i32>* %addr1, i32* %dest) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 1
  %out = srem i32 7, %extract
  store i32 %out, i32* %dest, align 4
  ret void
}














define void @undefConstantFRemCaseWithFastMath(<2 x float>* %addr1, float* %dest) {
  %in1 = load <2 x float>, <2 x float>* %addr1, align 8   
  %extract = extractelement <2 x float> %in1, i32 1
  %out = frem nnan float %extract, 7.0
  store float %out, float* %dest, align 4
  ret void
}














define void @undefVectorFRemCaseWithFastMath(<2 x float>* %addr1, float* %dest) {
  %in1 = load <2 x float>, <2 x float>* %addr1, align 8   
  %extract = extractelement <2 x float> %in1, i32 1
  %out = frem nnan float 7.0, %extract
  store float %out, float* %dest, align 4
  ret void
}















define void @simpleOneInstructionPromotionFloat(<2 x float>* %addr1, float* %dest) {
  %in1 = load <2 x float>, <2 x float>* %addr1, align 8
  %extract = extractelement <2 x float> %in1, i32 1
  %out = fadd float %extract, 1.0
  store float %out, float* %dest, align 4
  ret void
}
















define void @simpleOneInstructionPromotionVariableIdx(<2 x i32>* %addr1, i32* %dest, i32 %idx) {
  %in1 = load <2 x i32>, <2 x i32>* %addr1, align 8
  %extract = extractelement <2 x i32> %in1, i32 %idx
  %out = or i32 %extract, 1
  store i32 %out, i32* %dest, align 4
  ret void
}
















define void @simpleOneInstructionPromotion8x8(<8 x i8>* %addr1, i8* %dest) {
  %in1 = load <8 x i8>, <8 x i8>* %addr1, align 8
  %extract = extractelement <8 x i8> %in1, i32 1
  %out = or i8 %extract, 1
  store i8 %out, i8* %dest, align 4
  ret void
}

















define void @simpleOneInstructionPromotion4x32(<4 x i32>* %addr1, i32* %dest) {
  %in1 = load <4 x i32>, <4 x i32>* %addr1, align 8
  %extract = extractelement <4 x i32> %in1, i32 1
  %out = or i32 %extract, 1
  store i32 %out, i32* %dest, align 1
  ret void
}
