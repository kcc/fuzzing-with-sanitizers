










define void @store_floats(<4 x float> %x, i64* %p) {











  %a = fadd <4 x float> %x, %x
  %b = shufflevector <4 x float> %a, <4 x float> undef, <2 x i32> <i32 0, i32 1>
  %c = bitcast <2 x float> %b to i64
  store i64 %c, i64* %p
  ret void
}

define void @store_double(<2 x double> %x, i64* %p) {











  %a = fadd <2 x double> %x, %x
  %b = extractelement <2 x double> %a, i32 0
  %c = bitcast double %b to i64
  store i64 %c, i64* %p
  ret void
}

define void @store_int(<4 x i32> %x, <2 x float>* %p) {











  %a = add <4 x i32> %x, %x
  %b = shufflevector <4 x i32> %a, <4 x i32> undef, <2 x i32> <i32 0, i32 1>
  %c = bitcast <2 x i32> %b to <2 x float>
  store <2 x float> %c, <2 x float>* %p
  ret void
}

