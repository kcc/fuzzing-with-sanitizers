


declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8) nounwind readnone

define <2 x i64> @commute_lq_lq(<2 x i64>* %a0, <2 x i64> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %1, <2 x i64> %a1, i8 0)
  ret <2 x i64> %2
}

define <2 x i64> @commute_lq_hq(<2 x i64>* %a0, <2 x i64> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %1, <2 x i64> %a1, i8 16)
  ret <2 x i64> %2
}

define <2 x i64> @commute_hq_lq(<2 x i64>* %a0, <2 x i64> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %1, <2 x i64> %a1, i8 1)
  ret <2 x i64> %2
}

define <2 x i64> @commute_hq_hq(<2 x i64>* %a0, <2 x i64> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %1, <2 x i64> %a1, i8 17)
  ret <2 x i64> %2
}
