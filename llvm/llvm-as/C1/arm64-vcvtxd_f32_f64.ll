

define float @fcvtxn(double %a) {



  %vcvtxd.i = tail call float @llvm.aarch64.sisd.fcvtxn(double %a) nounwind
  ret float %vcvtxd.i
}

declare float @llvm.aarch64.sisd.fcvtxn(double) nounwind readnone
