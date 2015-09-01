


target triple = "x86_64-unknown-linux-gnu"

declare float @llvm.floor.f32(float)



define float @myfloor(float %a) {
  %val = tail call float @llvm.floor.f32(float %a)
  ret float %val
}
