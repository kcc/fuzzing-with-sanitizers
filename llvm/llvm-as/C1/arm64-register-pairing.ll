



define void @odd() nounwind {




















  call void asm sideeffect "mov x0, #42", "~{x0},~{x19},~{x21},~{x23},~{x25},~{x27},~{d8},~{d10},~{d12},~{d14}"() nounwind
  ret void
}

define void @even() nounwind {




















  call void asm sideeffect "mov x0, #42", "~{x0},~{x20},~{x22},~{x24},~{x26},~{x28},~{d9},~{d11},~{d13},~{d15}"() nounwind
  ret void
}
