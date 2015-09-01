



target datalayout = "e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown"

declare float @llvm.fabs.f32(float)
declare float @llvm.copysign.f32(float, float)
declare float @llvm.sqrt.f32(float)
declare float @llvm.ceil.f32(float)
declare float @llvm.floor.f32(float)
declare float @llvm.trunc.f32(float)
declare float @llvm.nearbyint.f32(float)
declare float @llvm.rint.f32(float)







define float @fadd32(float %x, float %y) {
  %a = fadd float %x, %y
  ret float %a
}



define float @fsub32(float %x, float %y) {
  %a = fsub float %x, %y
  ret float %a
}



define float @fmul32(float %x, float %y) {
  %a = fmul float %x, %y
  ret float %a
}



define float @fdiv32(float %x, float %y) {
  %a = fdiv float %x, %y
  ret float %a
}



define float @fabs32(float %x) {
  %a = call float @llvm.fabs.f32(float %x)
  ret float %a
}



define float @fneg32(float %x) {
  %a = fsub float -0., %x
  ret float %a
}



define float @copysign32(float %x, float %y) {
  %a = call float @llvm.copysign.f32(float %x, float %y)
  ret float %a
}



define float @sqrt32(float %x) {
  %a = call float @llvm.sqrt.f32(float %x)
  ret float %a
}



define float @ceil32(float %x) {
  %a = call float @llvm.ceil.f32(float %x)
  ret float %a
}



define float @floor32(float %x) {
  %a = call float @llvm.floor.f32(float %x)
  ret float %a
}



define float @trunc32(float %x) {
  %a = call float @llvm.trunc.f32(float %x)
  ret float %a
}



define float @nearestint32(float %x) {
  %a = call float @llvm.nearbyint.f32(float %x)
  ret float %a
}



define float @nearestint32_via_rint(float %x) {
  %a = call float @llvm.rint.f32(float %x)
  ret float %a
}
