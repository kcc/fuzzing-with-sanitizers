
target triple = "x86_64--"










define void @reg64_as_32(i32 %p) {
  call void asm sideeffect "# REG: $0", "{r8}"(i32 %p)
  ret void
}



define void @reg64_as_32_float(float %p) {
  call void asm sideeffect "# REG: $0", "{r8}"(float %p)
  ret void
}



define void @reg64_as_16(i16 %p) {
  call void asm sideeffect "# REG: $0", "{r9}"(i16 %p)
  ret void
}



define void @reg64_as_8(i8 %p) {
  call void asm sideeffect "# REG: $0", "{rbp}"(i8 %p)
  ret void
}



define void @reg32_as_16(i16 %p) {
  call void asm sideeffect "# REG: $0", "{r15d}"(i16 %p)
  ret void
}



define void @reg32_as_8(i8 %p) {
  call void asm sideeffect "# REG: $0", "{r12d}"(i8 %p)
  ret void
}



define void @reg16_as_8(i8 %p) {
  call void asm sideeffect "# REG: $0", "{cx}"(i8 %p)
  ret void
}



define void @reg32_as_64(i64 %p) {
  call void asm sideeffect "# REG: $0", "{ebp}"(i64 %p)
  ret void
}



define void @reg32_as_64_float(double %p) {
  call void asm sideeffect "# REG: $0", "{ebp}"(double %p)
  ret void
}



define void @reg16_as_64(i64 %p) {
  call void asm sideeffect "# REG: $0", "{r13w}"(i64 %p)
  ret void
}



define void @reg16_as_64_float(double %p) {
  call void asm sideeffect "# REG: $0", "{r13w}"(double %p)
  ret void
}



define void @reg8_as_64(i64 %p) {
  call void asm sideeffect "# REG: $0", "{al}"(i64 %p)
  ret void
}



define void @reg8_as_64_float(double %p) {
  call void asm sideeffect "# REG: $0", "{al}"(double %p)
  ret void
}



define void @reg16_as_32(i32 %p) {
  call void asm sideeffect "# REG: $0", "{r11w}"(i32 %p)
  ret void
}



define void @reg16_as_32_float(float %p) {
  call void asm sideeffect "# REG: $0", "{r11w}"(float %p)
  ret void
}



define void @reg8_as_32(i32 %p) {
  call void asm sideeffect "# REG: $0", "{r9b}"(i32 %p)
  ret void
}



define void @reg8_as_32_float(float %p) {
  call void asm sideeffect "# REG: $0", "{r9b}"(float %p)
  ret void
}



define void @reg8_as_16(i16 %p) {
  call void asm sideeffect "# REG: $0", "{dil}"(i16 %p)
  ret void
}
