

define <8 x float> @sitofp00(<8 x i32> %a) nounwind {




  %b = sitofp <8 x i32> %a to <8 x float>
  ret <8 x float> %b
}

define <8 x i32> @fptosi00(<8 x float> %a) nounwind {




  %b = fptosi <8 x float> %a to <8 x i32>
  ret <8 x i32> %b
}

define <4 x double> @sitofp01(<4 x i32> %a) {




  %b = sitofp <4 x i32> %a to <4 x double>
  ret <4 x double> %b
}

define <8 x float> @sitofp02(<8 x i16> %a) {








  %b = sitofp <8 x i16> %a to <8 x float>
  ret <8 x float> %b
}

define <4 x i32> @fptosi01(<4 x double> %a) {





  %b = fptosi <4 x double> %a to <4 x i32>
  ret <4 x i32> %b
}

define <8 x float> @fptrunc00(<8 x double> %b) nounwind {






  %a = fptrunc <8 x double> %b to <8 x float>
  ret <8 x float> %a
}

define <4 x double> @fpext00(<4 x float> %b) nounwind {




  %a = fpext <4 x float> %b to <4 x double>
  ret <4 x double> %a
}

define double @funcA(i64* nocapture %e) nounwind uwtable readonly ssp {




  %tmp1 = load i64, i64* %e, align 8
  %conv = sitofp i64 %tmp1 to double
  ret double %conv
}

define double @funcB(i32* nocapture %e) nounwind uwtable readonly ssp {




  %tmp1 = load i32, i32* %e, align 4
  %conv = sitofp i32 %tmp1 to double
  ret double %conv
}

define float @funcC(i32* nocapture %e) nounwind uwtable readonly ssp {




  %tmp1 = load i32, i32* %e, align 4
  %conv = sitofp i32 %tmp1 to float
  ret float %conv
}

define float @funcD(i64* nocapture %e) nounwind uwtable readonly ssp {




  %tmp1 = load i64, i64* %e, align 8
  %conv = sitofp i64 %tmp1 to float
  ret float %conv
}

define void @fpext() nounwind uwtable {





  %f = alloca float, align 4
  %d = alloca double, align 8
  %tmp = load float, float* %f, align 4
  %conv = fpext float %tmp to double
  store double %conv, double* %d, align 8
  ret void
}

define double @nearbyint_f64(double %a) {




  %res = call double @llvm.nearbyint.f64(double %a)
  ret double %res
}
declare double @llvm.nearbyint.f64(double %p)

define float @floor_f32(float %a) {




  %res = call float @llvm.floor.f32(float %a)
  ret float %res
}
declare float @llvm.floor.f32(float %p)


