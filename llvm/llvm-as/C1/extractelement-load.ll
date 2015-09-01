



target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @t(<2 x i64>* %val) nounwind  {




	%tmp2 = load <2 x i64>, <2 x i64>* %val, align 16		
	%tmp3 = bitcast <2 x i64> %tmp2 to <4 x i32>		
	%tmp4 = extractelement <4 x i32> %tmp3, i32 2		
	ret i32 %tmp4
}



define i32 @t2(<8 x i32>* %xp) {


  %x = load <8 x i32>, <8 x i32>* %xp
  %Shuff68 = shufflevector <8 x i32> %x, <8 x i32> undef, <8 x i32> <i32
undef, i32 7, i32 9, i32 undef, i32 13, i32 15, i32 1, i32 3>
  %y = extractelement <8 x i32> %Shuff68, i32 0
  ret i32 %y
}









define void @t3() {




bb:
  %tmp13 = load <2 x double>, <2 x double>* undef, align 1
  %.sroa.3.24.vec.extract = extractelement <2 x double> %tmp13, i32 1
  store double %.sroa.3.24.vec.extract, double* undef, align 8
  unreachable
}





define i64 @t4(<2 x double>* %a) {



  %b = load <2 x double>, <2 x double>* %a, align 16
  %c = shufflevector <2 x double> %b, <2 x double> %b, <2 x i32> <i32 1, i32 0>
  %d = bitcast <2 x double> %c to <2 x i64>
  %e = extractelement <2 x i64> %d, i32 1
  ret i64 %e
}

