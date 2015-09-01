
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

@vf = global <4 x float> <float -1.500000e+00, float 2.500000e+00, float -3.500000e+00, float 4.500000e+00>, align 16
@vd = global <2 x double> <double 3.500000e+00, double -7.500000e+00>, align 16
@d = global double 2.340000e+01, align 8
@vf1 = common global <4 x float> zeroinitializer, align 16
@vd1 = common global <2 x double> zeroinitializer, align 16
@vf2 = common global <4 x float> zeroinitializer, align 16
@vf3 = common global <4 x float> zeroinitializer, align 16
@vd2 = common global <2 x double> zeroinitializer, align 16
@vf4 = common global <4 x float> zeroinitializer, align 16
@d1 = common global double 0.000000e+00, align 8
@d2 = common global double 0.000000e+00, align 8


define void @test1() #0 {

entry:
  %0 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %1 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %2 = tail call <4 x float> @llvm.ppc.vsx.xvmaxsp(<4 x float> %0, <4 x float> %1)

  store <4 x float> %2, <4 x float>* @vf1, align 16
  %3 = load <2 x double>, <2 x double>* @vd, align 16
  %4 = tail call <2 x double> @llvm.ppc.vsx.xvmaxdp(<2 x double> %3, <2 x double> %3)

  store <2 x double> %4, <2 x double>* @vd1, align 16
  %5 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %6 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %7 = tail call <4 x float> @llvm.ppc.vsx.xvmaxsp(<4 x float> %5, <4 x float> %6)

  store <4 x float> %7, <4 x float>* @vf2, align 16
  %8 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %9 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %10 = tail call <4 x float> @llvm.ppc.vsx.xvminsp(<4 x float> %8, <4 x float> %9)

  store <4 x float> %10, <4 x float>* @vf3, align 16
  %11 = load <2 x double>, <2 x double>* @vd, align 16
  %12 = tail call <2 x double> @llvm.ppc.vsx.xvmindp(<2 x double> %11, <2 x double> %11)

  store <2 x double> %12, <2 x double>* @vd2, align 16
  %13 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %14 = load volatile <4 x float>, <4 x float>* @vf, align 16
  %15 = tail call <4 x float> @llvm.ppc.vsx.xvminsp(<4 x float> %13, <4 x float> %14)

  store <4 x float> %15, <4 x float>* @vf4, align 16
  %16 = load double, double* @d, align 8
  %17 = tail call double @llvm.ppc.vsx.xsmaxdp(double %16, double %16)

  store double %17, double* @d1, align 8
  %18 = tail call double @llvm.ppc.vsx.xsmindp(double %16, double %16)

  store double %18, double* @d2, align 8
  ret void
}


declare double @llvm.ppc.vsx.xsmaxdp(double, double)


declare double @llvm.ppc.vsx.xsmindp(double, double)


declare <4 x float> @llvm.ppc.vsx.xvminsp(<4 x float>, <4 x float>)


declare <2 x double> @llvm.ppc.vsx.xvmindp(<2 x double>, <2 x double>)


declare <4 x float> @llvm.ppc.vsx.xvmaxsp(<4 x float>, <4 x float>)


declare <2 x double> @llvm.ppc.vsx.xvmaxdp(<2 x double>, <2 x double>)























