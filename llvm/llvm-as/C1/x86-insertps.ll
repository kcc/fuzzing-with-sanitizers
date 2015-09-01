

declare <4 x float> @llvm.x86.sse41.insertps(<4 x float>, <4 x float>, i8) nounwind readnone



define <4 x float> @insertps_non_const_imm(<4 x float> %v1, <4 x float> %v2, i8 %c) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 %c)
  ret <4 x float> %res




}



define <4 x float> @insertps_0x0f(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 15)
  ret <4 x float> %res



}
define <4 x float> @insertps_0xff(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 255)
  ret <4 x float> %res



}



define <4 x float> @insertps_0x0c(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 12)
  ret <4 x float> %res




}



define <4 x float> @insertps_0x15_single_input(<4 x float> %v1) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v1, i8 21)
  ret <4 x float> %res




}



define <4 x float> @insertps_0x1a_single_input(<4 x float> %v1) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v1, i8 26)
  ret <4 x float> %res




}



define <4 x float> @insertps_0xc1(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 193)
  ret <4 x float> %res




}



define <4 x float> @insertps_0x00(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 0)
  ret <4 x float> %res




}

define <4 x float> @insertps_0x10(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 16)
  ret <4 x float> %res




}

define <4 x float> @insertps_0x20(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 32)
  ret <4 x float> %res




}

define <4 x float> @insertps_0x30(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 48)
  ret <4 x float> %res




}

define <4 x float> @insertps_0xc0(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 192)
  ret <4 x float> %res




}

define <4 x float> @insertps_0xd0(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 208)
  ret <4 x float> %res




}

define <4 x float> @insertps_0xe0(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 224)
  ret <4 x float> %res




}

define <4 x float> @insertps_0xf0(<4 x float> %v1, <4 x float> %v2) {
  %res = call <4 x float> @llvm.x86.sse41.insertps(<4 x float> %v1, <4 x float> %v2, i8 240)
  ret <4 x float> %res




}

