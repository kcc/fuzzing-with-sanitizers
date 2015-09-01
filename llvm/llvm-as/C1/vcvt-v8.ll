
define <4 x i32> @vcvtasq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtas.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtasd(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtas.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtnsq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtns.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtnsd(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtns.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtpsq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtps.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtpsd(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtps.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtmsq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtms.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtmsd(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtms.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtauq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtau.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtaud(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtau.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtnuq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtnu.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtnud(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtnu.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtpuq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtpu.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtpud(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtpu.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

define <4 x i32> @vcvtmuq(<4 x float>* %A) {


  %tmp1 = load <4 x float>, <4 x float>* %A
  %tmp2 = call <4 x i32> @llvm.arm.neon.vcvtmu.v4i32.v4f32(<4 x float> %tmp1)
  ret <4 x i32> %tmp2
}

define <2 x i32> @vcvtmud(<2 x float>* %A) {


  %tmp1 = load <2 x float>, <2 x float>* %A
  %tmp2 = call <2 x i32> @llvm.arm.neon.vcvtmu.v2i32.v2f32(<2 x float> %tmp1)
  ret <2 x i32> %tmp2
}

declare <4 x i32> @llvm.arm.neon.vcvtas.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtas.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtns.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtns.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtps.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtps.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtms.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtms.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtau.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtau.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtnu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtnu.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtpu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtpu.v2i32.v2f32(<2 x float>) nounwind readnone
declare <4 x i32> @llvm.arm.neon.vcvtmu.v4i32.v4f32(<4 x float>) nounwind readnone
declare <2 x i32> @llvm.arm.neon.vcvtmu.v2i32.v2f32(<2 x float>) nounwind readnone
