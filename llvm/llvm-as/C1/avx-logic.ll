

define <4 x double> @andpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %x to <4 x i64>
  %1 = bitcast <4 x double> %y to <4 x i64>
  %and.i = and <4 x i64> %0, %1
  %2 = bitcast <4 x i64> %and.i to <4 x double>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <4 x double> @andpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %y to <4 x i64>
  %and.i = and <4 x i64> %0, <i64 4616752568008179712, i64 4614838538166547251, i64 4612361558371493478, i64 4608083138725491507>
  %1 = bitcast <4 x i64> %and.i to <4 x double>
  
  %2 = fadd <4 x double> %1, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %2
}

define <8 x float> @andps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %x to <8 x i32>
  %1 = bitcast <8 x float> %y to <8 x i32>
  %and.i = and <8 x i32> %0, %1
  %2 = bitcast <8 x i32> %and.i to <8 x float>
  ret <8 x float> %2
}

define <8 x float> @andps256fold(<8 x float> %y) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %y to <8 x i32>
  %and.i = and <8 x i32> %0, <i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938, i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938>
  %1 = bitcast <8 x i32> %and.i to <8 x float>
  ret <8 x float> %1
}

define <4 x double> @xorpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %x to <4 x i64>
  %1 = bitcast <4 x double> %y to <4 x i64>
  %xor.i = xor <4 x i64> %0, %1
  %2 = bitcast <4 x i64> %xor.i to <4 x double>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <4 x double> @xorpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %y to <4 x i64>
  %xor.i = xor <4 x i64> %0, <i64 4616752568008179712, i64 4614838538166547251, i64 4612361558371493478, i64 4608083138725491507>
  %1 = bitcast <4 x i64> %xor.i to <4 x double>
  
  %2 = fadd <4 x double> %1, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %2
}

define <8 x float> @xorps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %x to <8 x i32>
  %1 = bitcast <8 x float> %y to <8 x i32>
  %xor.i = xor <8 x i32> %0, %1
  %2 = bitcast <8 x i32> %xor.i to <8 x float>
  ret <8 x float> %2
}

define <8 x float> @xorps256fold(<8 x float> %y) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %y to <8 x i32>
  %xor.i = xor <8 x i32> %0, <i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938, i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938>
  %1 = bitcast <8 x i32> %xor.i to <8 x float>
  ret <8 x float> %1
}

define <4 x double> @orpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %x to <4 x i64>
  %1 = bitcast <4 x double> %y to <4 x i64>
  %or.i = or <4 x i64> %0, %1
  %2 = bitcast <4 x i64> %or.i to <4 x double>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <4 x double> @orpd256fold(<4 x double> %y) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %y to <4 x i64>
  %or.i = or <4 x i64> %0, <i64 4616752568008179712, i64 4614838538166547251, i64 4612361558371493478, i64 4608083138725491507>
  %1 = bitcast <4 x i64> %or.i to <4 x double>
  
  %2 = fadd <4 x double> %1, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %2
}

define <8 x float> @orps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %x to <8 x i32>
  %1 = bitcast <8 x float> %y to <8 x i32>
  %or.i = or <8 x i32> %0, %1
  %2 = bitcast <8 x i32> %or.i to <8 x float>
  ret <8 x float> %2
}

define <8 x float> @orps256fold(<8 x float> %y) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %y to <8 x i32>
  %or.i = or <8 x i32> %0, <i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938, i32 1083179008, i32 1079613850, i32 1075000115, i32 1067030938>
  %1 = bitcast <8 x i32> %or.i to <8 x float>
  ret <8 x float> %1
}

define <4 x double> @andnotpd256(<4 x double> %y, <4 x double> %x) nounwind uwtable readnone ssp {






entry:
  %0 = bitcast <4 x double> %x to <4 x i64>
  %neg.i = xor <4 x i64> %0, <i64 -1, i64 -1, i64 -1, i64 -1>
  %1 = bitcast <4 x double> %y to <4 x i64>
  %and.i = and <4 x i64> %1, %neg.i
  %2 = bitcast <4 x i64> %and.i to <4 x double>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <4 x double> @andnotpd256fold(<4 x double> %y, <4 x double>* nocapture %x) nounwind uwtable readonly ssp {






entry:
  %tmp2 = load <4 x double>, <4 x double>* %x, align 32
  %0 = bitcast <4 x double> %y to <4 x i64>
  %neg.i = xor <4 x i64> %0, <i64 -1, i64 -1, i64 -1, i64 -1>
  %1 = bitcast <4 x double> %tmp2 to <4 x i64>
  %and.i = and <4 x i64> %1, %neg.i
  %2 = bitcast <4 x i64> %and.i to <4 x double>
  
  %3 = fadd <4 x double> %2, <double 0x0, double 0x0, double 0x0, double 0x0>
  ret <4 x double> %3
}

define <8 x float> @andnotps256(<8 x float> %y, <8 x float> %x) nounwind uwtable readnone ssp {




entry:
  %0 = bitcast <8 x float> %x to <8 x i32>
  %neg.i = xor <8 x i32> %0, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1 = bitcast <8 x float> %y to <8 x i32>
  %and.i = and <8 x i32> %1, %neg.i
  %2 = bitcast <8 x i32> %and.i to <8 x float>
  ret <8 x float> %2
}

define <8 x float> @andnotps256fold(<8 x float> %y, <8 x float>* nocapture %x) nounwind uwtable readonly ssp {




entry:
  %tmp2 = load <8 x float>, <8 x float>* %x, align 32
  %0 = bitcast <8 x float> %y to <8 x i32>
  %neg.i = xor <8 x i32> %0, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1 = bitcast <8 x float> %tmp2 to <8 x i32>
  %and.i = and <8 x i32> %1, %neg.i
  %2 = bitcast <8 x i32> %and.i to <8 x float>
  ret <8 x float> %2
}



define <2 x i64> @vpandn(<2 x i64> %a, <2 x i64> %b) nounwind uwtable readnone ssp {





entry:
  
  %a2 = add <2 x i64> %a, <i64 1, i64 1>
  %y = xor <2 x i64> %a2, <i64 -1, i64 -1>
  %x = and <2 x i64> %a, %y
  ret <2 x i64> %x
}

define <2 x i64> @vpand(<2 x i64> %a, <2 x i64> %b) nounwind uwtable readnone ssp {





entry:
  
  %a2 = add <2 x i64> %a, <i64 1, i64 1>
  %x = and <2 x i64> %a2, %b
  ret <2 x i64> %x
}

