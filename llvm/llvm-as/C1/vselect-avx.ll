
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx"
















define void @test(<4 x i16>* %a, <4 x i16>* %b) {
body:
  %predphi = select <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i16> <i16 -3, i16 545, i16 4385, i16 14807>, <4 x i16> <i16 123, i16 124, i16 125, i16 127>
  %predphi42 = select <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>, <4 x i16> zeroinitializer
  store <4 x i16> %predphi, <4 x i16>* %a, align 8
  store <4 x i16> %predphi42, <4 x i16>* %b, align 8
  ret void
}
















define void @test2(double** %call1559, i64 %indvars.iv4198, <4 x i1> %tmp1895) {
bb:
  %arrayidx1928 = getelementptr inbounds double*, double** %call1559, i64 %indvars.iv4198
  %tmp1888 = load double*, double** %arrayidx1928, align 8
  %predphi.v.v = select <4 x i1> %tmp1895, <4 x double> <double -5.000000e-01, double -5.000000e-01, double -5.000000e-01, double -5.000000e-01>, <4 x double> <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>
  %tmp1900 = bitcast double* %tmp1888 to <4 x double>*
  store <4 x double> %predphi.v.v, <4 x double>* %tmp1900, align 8
  ret void
}






















define void @test3(<4 x i32> %induction30, <4 x i16>* %tmp16, <4 x i16>* %tmp17,  <4 x i16> %tmp3, <4 x i16> %tmp12) {
  %tmp6 = srem <4 x i32> %induction30, <i32 3, i32 3, i32 3, i32 3>
  %tmp7 = icmp eq <4 x i32> %tmp6, zeroinitializer
  %predphi = select <4 x i1> %tmp7, <4 x i16> %tmp3, <4 x i16> %tmp12
  %predphi31 = select <4 x i1> %tmp7, <4 x i16> <i16 -1, i16 -1, i16 -1, i16 -1>, <4 x i16> zeroinitializer

  store <4 x i16> %predphi31, <4 x i16>* %tmp16, align 8
  store <4 x i16> %predphi, <4 x i16>* %tmp17, align 8
 ret void
}







define <32 x i8> @PR22706(<32 x i1> %x) {
  %tmp = select <32 x i1> %x, <32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2>
  ret <32 x i8> %tmp
}
