

define <4 x i32> @add_4i32(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  %1 = add <4 x i32> %a0, <i32  1, i32 -2, i32  3, i32 -4>
  %2 = add <4 x i32> %a1, <i32 -1, i32  2, i32 -3, i32  4>
  %3 = add <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @add_4i32_commute(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  %1 = add <4 x i32> <i32  1, i32 -2, i32  3, i32 -4>, %a0
  %2 = add <4 x i32> <i32 -1, i32  2, i32 -3, i32  4>, %a1
  %3 = add <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @mul_4i32(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = mul <4 x i32> %a0, <i32 1, i32 2, i32 3, i32 4>
  %2 = mul <4 x i32> %a1, <i32 4, i32 3, i32 2, i32 1>
  %3 = mul <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @mul_4i32_commute(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = mul <4 x i32> <i32 1, i32 2, i32 3, i32 4>, %a0
  %2 = mul <4 x i32> <i32 4, i32 3, i32 2, i32 1>, %a1
  %3 = mul <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @and_4i32(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = and <4 x i32> %a0, <i32 -2, i32 -2, i32  3, i32  3>
  %2 = and <4 x i32> %a1, <i32 -1, i32 -1, i32  1, i32  1>
  %3 = and <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @and_4i32_commute(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = and <4 x i32> <i32 -2, i32 -2, i32  3, i32  3>, %a0
  %2 = and <4 x i32> <i32 -1, i32 -1, i32  1, i32  1>, %a1
  %3 = and <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @or_4i32(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = or <4 x i32> %a0, <i32 -2, i32 -2, i32  3, i32  3>
  %2 = or <4 x i32> %a1, <i32 -1, i32 -1, i32  1, i32  1>
  %3 = or <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @or_4i32_commute(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = or <4 x i32> <i32 -2, i32 -2, i32  3, i32  3>, %a0 
  %2 = or <4 x i32> <i32 -1, i32 -1, i32  1, i32  1>, %a1
  %3 = or <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @xor_4i32(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = xor <4 x i32> %a0, <i32 -2, i32 -2, i32  3, i32  3>
  %2 = xor <4 x i32> %a1, <i32 -1, i32 -1, i32  1, i32  1>
  %3 = xor <4 x i32> %1, %2
  ret <4 x i32> %3
}

define <4 x i32> @xor_4i32_commute(<4 x i32> %a0, <4 x i32> %a1) {
  
  
  
  
  
  %1 = xor <4 x i32> <i32 -2, i32 -2, i32  3, i32  3>, %a0
  %2 = xor <4 x i32> <i32 -1, i32 -1, i32  1, i32  1>, %a1
  %3 = xor <4 x i32> %1, %2
  ret <4 x i32> %3
}
