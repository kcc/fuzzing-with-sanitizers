




define <4 x float> @bar(<4 x float> %v) nounwind {
entry:
  %v.addr = alloca <4 x float>, align 16
  store <4 x float> %v, <4 x float>* %v.addr, align 16
  %0 = load <4 x float>, <4 x float>* %v.addr, align 16
  ret <4 x float> %0
}



