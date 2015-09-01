








define void @rsqrtss(<4 x float> %a) nounwind uwtable ssp {
entry:








  %0 = tail call <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %a) nounwind
  %a.addr.0.extract = extractelement <4 x float> %0, i32 0
  %conv = fpext float %a.addr.0.extract to double
  %a.addr.4.extract = extractelement <4 x float> %0, i32 1
  %conv3 = fpext float %a.addr.4.extract to double
  tail call void @callee(double %conv, double %conv3) nounwind
  ret void
}
declare void @callee(double, double)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) nounwind readnone

define void @rcpss(<4 x float> %a) nounwind uwtable ssp {
entry:








  %0 = tail call <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %a) nounwind
  %a.addr.0.extract = extractelement <4 x float> %0, i32 0
  %conv = fpext float %a.addr.0.extract to double
  %a.addr.4.extract = extractelement <4 x float> %0, i32 1
  %conv3 = fpext float %a.addr.4.extract to double
  tail call void @callee(double %conv, double %conv3) nounwind
  ret void
}
declare <4 x float> @llvm.x86.sse.rcp.ss(<4 x float>) nounwind readnone

define void @sqrtss(<4 x float> %a) nounwind uwtable ssp {
entry:








  %0 = tail call <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float> %a) nounwind
  %a.addr.0.extract = extractelement <4 x float> %0, i32 0
  %conv = fpext float %a.addr.0.extract to double
  %a.addr.4.extract = extractelement <4 x float> %0, i32 1
  %conv3 = fpext float %a.addr.4.extract to double
  tail call void @callee(double %conv, double %conv3) nounwind
  ret void
}
declare <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float>) nounwind readnone

define void @sqrtsd(<2 x double> %a) nounwind uwtable ssp {
entry:








 %0 = tail call <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double> %a) nounwind
 %a0 = extractelement <2 x double> %0, i32 0
 %conv = fptrunc double %a0 to float
 %a1 = extractelement <2 x double> %0, i32 1
 %conv3 = fptrunc double %a1 to float
 tail call void @callee2(float %conv, float %conv3) nounwind
 ret void
}

declare void @callee2(float, float)
declare <2 x double> @llvm.x86.sse2.sqrt.sd(<2 x double>) nounwind readnone

define <2 x double> @load_fold_cvtss2sd_int(<4 x float> *%a) {





  %ld = load <4 x float>, <4 x float> *%a
  %x = call <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double> <double 0x0, double 0x0>, <4 x float> %ld)
  ret <2 x double> %x
}

define <2 x double> @load_fold_cvtss2sd_int_optsize(<4 x float> *%a) optsize {




  %ld = load <4 x float>, <4 x float> *%a
  %x = call <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double> <double 0x0, double 0x0>, <4 x float> %ld)
  ret <2 x double> %x
}

define <2 x double> @load_fold_cvtss2sd_int_minsize(<4 x float> *%a) minsize {




  %ld = load <4 x float>, <4 x float> *%a
  %x = call <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double> <double 0x0, double 0x0>, <4 x float> %ld)
  ret <2 x double> %x
}

declare <2 x double> @llvm.x86.sse2.cvtss2sd(<2 x double>, <4 x float>) nounwind readnone

