

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"




define <1 x float> @test_copysign_v1f32_v1f32(<1 x float> %a, <1 x float> %b) #0 {




  %r = call <1 x float> @llvm.copysign.v1f32(<1 x float> %a, <1 x float> %b)
  ret <1 x float> %r
}


define <1 x float> @test_copysign_v1f32_v1f64(<1 x float> %a, <1 x double> %b) #0 {





  %tmp0 = fptrunc <1 x double> %b to <1 x float>
  %r = call <1 x float> @llvm.copysign.v1f32(<1 x float> %a, <1 x float> %tmp0)
  ret <1 x float> %r
}

declare <1 x float> @llvm.copysign.v1f32(<1 x float> %a, <1 x float> %b) #0




define <1 x double> @test_copysign_v1f64_v1f32(<1 x double> %a, <1 x float> %b) #0 {






  %tmp0 = fpext <1 x float> %b to <1 x double>
  %r = call <1 x double> @llvm.copysign.v1f64(<1 x double> %a, <1 x double> %tmp0)
  ret <1 x double> %r
}

define <1 x double> @test_copysign_v1f64_v1f64(<1 x double> %a, <1 x double> %b) #0 {





  %r = call <1 x double> @llvm.copysign.v1f64(<1 x double> %a, <1 x double> %b)
  ret <1 x double> %r
}

declare <1 x double> @llvm.copysign.v1f64(<1 x double> %a, <1 x double> %b) #0



define <2 x float> @test_copysign_v2f32_v2f32(<2 x float> %a, <2 x float> %b) #0 {




  %r = call <2 x float> @llvm.copysign.v2f32(<2 x float> %a, <2 x float> %b)
  ret <2 x float> %r
}

define <2 x float> @test_copysign_v2f32_v2f64(<2 x float> %a, <2 x double> %b) #0 {





  %tmp0 = fptrunc <2 x double> %b to <2 x float>
  %r = call <2 x float> @llvm.copysign.v2f32(<2 x float> %a, <2 x float> %tmp0)
  ret <2 x float> %r
}

declare <2 x float> @llvm.copysign.v2f32(<2 x float> %a, <2 x float> %b) #0



define <4 x float> @test_copysign_v4f32_v4f32(<4 x float> %a, <4 x float> %b) #0 {




  %r = call <4 x float> @llvm.copysign.v4f32(<4 x float> %a, <4 x float> %b)
  ret <4 x float> %r
}


define <4 x float> @test_copysign_v4f32_v4f64(<4 x float> %a, <4 x double> %b) #0 {



















  %tmp0 = fptrunc <4 x double> %b to <4 x float>
  %r = call <4 x float> @llvm.copysign.v4f32(<4 x float> %a, <4 x float> %tmp0)
  ret <4 x float> %r
}

declare <4 x float> @llvm.copysign.v4f32(<4 x float> %a, <4 x float> %b) #0



define <2 x double> @test_copysign_v2f64_v232(<2 x double> %a, <2 x float> %b) #0 {






  %tmp0 = fpext <2 x float> %b to <2 x double>
  %r = call <2 x double> @llvm.copysign.v2f64(<2 x double> %a, <2 x double> %tmp0)
  ret <2 x double> %r
}

define <2 x double> @test_copysign_v2f64_v2f64(<2 x double> %a, <2 x double> %b) #0 {





  %r = call <2 x double> @llvm.copysign.v2f64(<2 x double> %a, <2 x double> %b)
  ret <2 x double> %r
}

declare <2 x double> @llvm.copysign.v2f64(<2 x double> %a, <2 x double> %b) #0




define <4 x double> @test_copysign_v4f64_v4f32(<4 x double> %a, <4 x float> %b) #0 {








  %tmp0 = fpext <4 x float> %b to <4 x double>
  %r = call <4 x double> @llvm.copysign.v4f64(<4 x double> %a, <4 x double> %tmp0)
  ret <4 x double> %r
}


define <4 x double> @test_copysign_v4f64_v4f64(<4 x double> %a, <4 x double> %b) #0 {






  %r = call <4 x double> @llvm.copysign.v4f64(<4 x double> %a, <4 x double> %b)
  ret <4 x double> %r
}

declare <4 x double> @llvm.copysign.v4f64(<4 x double> %a, <4 x double> %b) #0

attributes #0 = { nounwind }
