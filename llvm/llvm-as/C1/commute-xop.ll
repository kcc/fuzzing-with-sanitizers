

define <16 x i8> @commute_fold_vpcomb(<16 x i8>* %a0, <16 x i8> %a1) {
  
  
  %1 = load <16 x i8>, <16 x i8>* %a0
  %2 = call <16 x i8> @llvm.x86.xop.vpcomb(<16 x i8> %1, <16 x i8> %a1, i8 0) 
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.xop.vpcomb(<16 x i8>, <16 x i8>, i8) nounwind readnone

define <4 x i32> @commute_fold_vpcomd(<4 x i32>* %a0, <4 x i32> %a1) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpcomd(<4 x i32> %1, <4 x i32> %a1, i8 1) 
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpcomd(<4 x i32>, <4 x i32>, i8) nounwind readnone

define <2 x i64> @commute_fold_vpcomq(<2 x i64>* %a0, <2 x i64> %a1) {
  
  
  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpcomq(<2 x i64> %1, <2 x i64> %a1, i8 2) 
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpcomq(<2 x i64>, <2 x i64>, i8) nounwind readnone

define <16 x i8> @commute_fold_vpcomub(<16 x i8>* %a0, <16 x i8> %a1) {
  
  
  %1 = load <16 x i8>, <16 x i8>* %a0
  %2 = call <16 x i8> @llvm.x86.xop.vpcomub(<16 x i8> %1, <16 x i8> %a1, i8 3) 
  ret <16 x i8> %2
}
declare <16 x i8> @llvm.x86.xop.vpcomub(<16 x i8>, <16 x i8>, i8) nounwind readnone

define <4 x i32> @commute_fold_vpcomud(<4 x i32>* %a0, <4 x i32> %a1) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpcomud(<4 x i32> %1, <4 x i32> %a1, i8 4) 
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpcomud(<4 x i32>, <4 x i32>, i8) nounwind readnone

define <2 x i64> @commute_fold_vpcomuq(<2 x i64>* %a0, <2 x i64> %a1) {
  
  
  %1 = load <2 x i64>, <2 x i64>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpcomuq(<2 x i64> %1, <2 x i64> %a1, i8 5) 
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpcomuq(<2 x i64>, <2 x i64>, i8) nounwind readnone

define <8 x i16> @commute_fold_vpcomuw(<8 x i16>* %a0, <8 x i16> %a1) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <8 x i16> @llvm.x86.xop.vpcomuw(<8 x i16> %1, <8 x i16> %a1, i8 6) 
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.xop.vpcomuw(<8 x i16>, <8 x i16>, i8) nounwind readnone

define <8 x i16> @commute_fold_vpcomw(<8 x i16>* %a0, <8 x i16> %a1) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <8 x i16> @llvm.x86.xop.vpcomw(<8 x i16> %1, <8 x i16> %a1, i8 7) 
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.xop.vpcomw(<8 x i16>, <8 x i16>, i8) nounwind readnone

define <4 x i32> @commute_fold_vpmacsdd(<4 x i32>* %a0, <4 x i32> %a1, <4 x i32> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmacsdd(<4 x i32> %1, <4 x i32> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmacsdd(<4 x i32>, <4 x i32>, <4 x i32>) nounwind readnone

define <2 x i64> @commute_fold_vpmacsdqh(<4 x i32>* %a0, <4 x i32> %a1, <2 x i64> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpmacsdqh(<4 x i32> %1, <4 x i32> %a1, <2 x i64> %a2)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpmacsdqh(<4 x i32>, <4 x i32>, <2 x i64>) nounwind readnone

define <2 x i64> @commute_fold_vpmacsdql(<4 x i32>* %a0, <4 x i32> %a1, <2 x i64> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpmacsdql(<4 x i32> %1, <4 x i32> %a1, <2 x i64> %a2)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpmacsdql(<4 x i32>, <4 x i32>, <2 x i64>) nounwind readnone

define <4 x i32> @commute_fold_vpmacssdd(<4 x i32>* %a0, <4 x i32> %a1, <4 x i32> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmacssdd(<4 x i32> %1, <4 x i32> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmacssdd(<4 x i32>, <4 x i32>, <4 x i32>) nounwind readnone

define <2 x i64> @commute_fold_vpmacssdqh(<4 x i32>* %a0, <4 x i32> %a1, <2 x i64> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpmacssdqh(<4 x i32> %1, <4 x i32> %a1, <2 x i64> %a2)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpmacssdqh(<4 x i32>, <4 x i32>, <2 x i64>) nounwind readnone

define <2 x i64> @commute_fold_vpmacssdql(<4 x i32>* %a0, <4 x i32> %a1, <2 x i64> %a2) {
  
  
  %1 = load <4 x i32>, <4 x i32>* %a0
  %2 = call <2 x i64> @llvm.x86.xop.vpmacssdql(<4 x i32> %1, <4 x i32> %a1, <2 x i64> %a2)
  ret <2 x i64> %2
}
declare <2 x i64> @llvm.x86.xop.vpmacssdql(<4 x i32>, <4 x i32>, <2 x i64>) nounwind readnone

define <4 x i32> @commute_fold_vpmacsswd(<8 x i16>* %a0, <8 x i16> %a1, <4 x i32> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmacsswd(<8 x i16> %1, <8 x i16> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmacsswd(<8 x i16>, <8 x i16>, <4 x i32>) nounwind readnone

define <8 x i16> @commute_fold_vpmacssww(<8 x i16>* %a0, <8 x i16> %a1, <8 x i16> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <8 x i16> @llvm.x86.xop.vpmacssww(<8 x i16> %1, <8 x i16> %a1, <8 x i16> %a2)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.xop.vpmacssww(<8 x i16>, <8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @commute_fold_vpmacswd(<8 x i16>* %a0, <8 x i16> %a1, <4 x i32> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %1, <8 x i16> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16>, <8 x i16>, <4 x i32>) nounwind readnone

define <8 x i16> @commute_fold_vpmacsww(<8 x i16>* %a0, <8 x i16> %a1, <8 x i16> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <8 x i16> @llvm.x86.xop.vpmacsww(<8 x i16> %1, <8 x i16> %a1, <8 x i16> %a2)
  ret <8 x i16> %2
}
declare <8 x i16> @llvm.x86.xop.vpmacsww(<8 x i16>, <8 x i16>, <8 x i16>) nounwind readnone

define <4 x i32> @commute_fold_vpmadcsswd(<8 x i16>* %a0, <8 x i16> %a1, <4 x i32> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmadcsswd(<8 x i16> %1, <8 x i16> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmadcsswd(<8 x i16>, <8 x i16>, <4 x i32>) nounwind readnone

define <4 x i32> @commute_fold_vpmadcswd(<8 x i16>* %a0, <8 x i16> %a1, <4 x i32> %a2) {
  
  
  %1 = load <8 x i16>, <8 x i16>* %a0
  %2 = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %1, <8 x i16> %a1, <4 x i32> %a2)
  ret <4 x i32> %2
}
declare <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16>, <8 x i16>, <4 x i32>) nounwind readnone



