







define <4 x i32> @commute_cmpps_eq(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  

  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp oeq <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <4 x i32> @commute_cmpps_ne(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  

  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp une <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <4 x i32> @commute_cmpps_ord(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  

  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp ord <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <4 x i32> @commute_cmpps_uno(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  

  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp uno <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <4 x i32> @commute_cmpps_lt(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  
  
  

  
  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp olt <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <4 x i32> @commute_cmpps_le(<4 x float>* %a0, <4 x float> %a1) #0 {
  
  
  
  
  

  
  
  
  

  %1 = load <4 x float>, <4 x float>* %a0
  %2 = fcmp ole <4 x float> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i32>
  ret <4 x i32> %3
}

define <8 x i32> @commute_cmpps_eq_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp oeq <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <8 x i32> @commute_cmpps_ne_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp une <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <8 x i32> @commute_cmpps_ord_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp ord <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <8 x i32> @commute_cmpps_uno_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp uno <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <8 x i32> @commute_cmpps_lt_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp olt <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}

define <8 x i32> @commute_cmpps_le_ymm(<8 x float>* %a0, <8 x float> %a1) #0 {
  
  
  
  

  %1 = load <8 x float>, <8 x float>* %a0
  %2 = fcmp ole <8 x float> %1, %a1
  %3 = sext <8 x i1> %2 to <8 x i32>
  ret <8 x i32> %3
}






define <2 x i64> @commute_cmppd_eq(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp oeq <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @commute_cmppd_ne(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp une <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @commute_cmppd_ord(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp ord <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @commute_cmppd_uno(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  

  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp uno <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @commute_cmppd_lt(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  
  
  

  
  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp olt <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <2 x i64> @commute_cmppd_le(<2 x double>* %a0, <2 x double> %a1) #0 {
  
  
  
  
  

  
  
  
  

  %1 = load <2 x double>, <2 x double>* %a0
  %2 = fcmp ole <2 x double> %1, %a1
  %3 = sext <2 x i1> %2 to <2 x i64>
  ret <2 x i64> %3
}

define <4 x i64> @commute_cmppd_eq_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp oeq <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <4 x i64> @commute_cmppd_ne_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp une <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <4 x i64> @commute_cmppd_ord_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp ord <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <4 x i64> @commute_cmppd_uno_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp uno <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <4 x i64> @commute_cmppd_lt_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp olt <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}

define <4 x i64> @commute_cmppd_le_ymmm(<4 x double>* %a0, <4 x double> %a1) #0 {
  
  
  
  

  %1 = load <4 x double>, <4 x double>* %a0
  %2 = fcmp ole <4 x double> %1, %a1
  %3 = sext <4 x i1> %2 to <4 x i64>
  ret <4 x i64> %3
}
