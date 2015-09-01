



define <4 x double> @perm2pd_non_const_imm(<4 x double> %a0, <4 x double> %a1, i8 %b) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 %b) 
  ret <4 x double> %res




}




define <4 x double> @perm2pd_0x88(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 136) 
  ret <4 x double> %res



}

define <8 x float> @perm2ps_0x88(<8 x float> %a0, <8 x float> %a1) {
  %res = call <8 x float> @llvm.x86.avx.vperm2f128.ps.256(<8 x float> %a0, <8 x float> %a1, i8 136) 
  ret <8 x float> %res



}

define <8 x i32> @perm2si_0x88(<8 x i32> %a0, <8 x i32> %a1) {
  %res = call <8 x i32> @llvm.x86.avx.vperm2f128.si.256(<8 x i32> %a0, <8 x i32> %a1, i8 136) 
  ret <8 x i32> %res



}

define <4 x i64> @perm2i_0x88(<4 x i64> %a0, <4 x i64> %a1) {
  %res = call <4 x i64> @llvm.x86.avx2.vperm2i128(<4 x i64> %a0, <4 x i64> %a1, i8 136) 
  ret <4 x i64> %res



}




define <4 x double> @perm2pd_0xff(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 255) 
  ret <4 x double> %res



}





define <4 x double> @perm2pd_0x00(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 0)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x01(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 1)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x02(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 2)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x03(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 3)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x10(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 16)
  ret <4 x double> %res



}

define <4 x double> @perm2pd_0x11(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 17)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x12(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 18)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x13(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 19)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x20(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 32)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x21(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 33)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x22(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 34)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x23(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 35)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x30(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 48)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x31(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 49)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x32(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 50)
  ret <4 x double> %res



}

define <4 x double> @perm2pd_0x33(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 51)
  ret <4 x double> %res




}



define <8 x float> @perm2ps_0x31(<8 x float> %a0, <8 x float> %a1) {
  %res = call <8 x float> @llvm.x86.avx.vperm2f128.ps.256(<8 x float> %a0, <8 x float> %a1, i8 49)
  ret <8 x float> %res




}




define <4 x i64> @perm2i_0x33(<4 x i64> %a0, <4 x i64> %a1) {
  %res = call <4 x i64> @llvm.x86.avx2.vperm2i128(<4 x i64> %a0, <4 x i64> %a1, i8 51)
  ret <4 x i64> %res




}




define <4 x double> @perm2pd_0x81(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 129)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x83(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 131)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x28(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 40)
  ret <4 x double> %res




}

define <4 x double> @perm2pd_0x08(<4 x double> %a0, <4 x double> %a1) {
  %res = call <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double> %a0, <4 x double> %a1, i8 8)
  ret <4 x double> %res




}



define <4 x i64> @perm2i_0x28(<4 x i64> %a0, <4 x i64> %a1) {
  %res = call <4 x i64> @llvm.x86.avx2.vperm2i128(<4 x i64> %a0, <4 x i64> %a1, i8 40)
  ret <4 x i64> %res




}

declare <4 x double> @llvm.x86.avx.vperm2f128.pd.256(<4 x double>, <4 x double>, i8) nounwind readnone
declare <8 x float> @llvm.x86.avx.vperm2f128.ps.256(<8 x float>, <8 x float>, i8) nounwind readnone
declare <8 x i32> @llvm.x86.avx.vperm2f128.si.256(<8 x i32>, <8 x i32>, i8) nounwind readnone
declare <4 x i64> @llvm.x86.avx2.vperm2i128(<4 x i64>, <4 x i64>, i8) nounwind readnone

