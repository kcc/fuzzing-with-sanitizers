






define <4 x float> @test_x86_fma_vfmadd_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmadd.ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmadd.ss(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmadd_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmadd.sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmadd.sd(<2 x double>, <2 x double>, <2 x double>)

define <4 x float> @test_x86_fma_vfmadd_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmadd.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmadd.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmadd_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmadd.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmadd.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfmadd_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfmadd.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfmadd.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfmadd_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfmadd.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @test_x86_fma_vfmsub_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmsub.ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmsub.ss(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmsub_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmsub.sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmsub.sd(<2 x double>, <2 x double>, <2 x double>)

define <4 x float> @test_x86_fma_vfmsub_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmsub.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmsub.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmsub_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmsub.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmsub.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfmsub_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfmsub.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfmsub.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfmsub_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfmsub.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfmsub.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @test_x86_fma_vfnmadd_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfnmadd.ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfnmadd.ss(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfnmadd_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfnmadd.sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfnmadd.sd(<2 x double>, <2 x double>, <2 x double>)

define <4 x float> @test_x86_fma_vfnmadd_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfnmadd.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfnmadd.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfnmadd_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfnmadd.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfnmadd.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfnmadd_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfnmadd.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfnmadd.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfnmadd_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfnmadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfnmadd.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @test_x86_fma_vfnmsub_ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfnmsub.ss(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfnmsub.ss(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfnmsub_sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfnmsub.sd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfnmsub.sd(<2 x double>, <2 x double>, <2 x double>)

define <4 x float> @test_x86_fma_vfnmsub_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfnmsub.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfnmsub.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfnmsub_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfnmsub.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfnmsub.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfnmsub_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfnmsub.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfnmsub.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfnmsub_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfnmsub.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfnmsub.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @test_x86_fma_vfmaddsub_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmaddsub.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmaddsub_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmaddsub.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmaddsub.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfmaddsub_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfmaddsub.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfmaddsub_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfmaddsub.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfmaddsub.pd.256(<4 x double>, <4 x double>, <4 x double>)


define <4 x float> @test_x86_fma_vfmsubadd_ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2) #0 {









  %res = call <4 x float> @llvm.x86.fma.vfmsubadd.ps(<4 x float> %a0, <4 x float> %a1, <4 x float> %a2)
  ret <4 x float> %res
}
declare <4 x float> @llvm.x86.fma.vfmsubadd.ps(<4 x float>, <4 x float>, <4 x float>)

define <2 x double> @test_x86_fma_vfmsubadd_pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2) #0 {









  %res = call <2 x double> @llvm.x86.fma.vfmsubadd.pd(<2 x double> %a0, <2 x double> %a1, <2 x double> %a2)
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.fma.vfmsubadd.pd(<2 x double>, <2 x double>, <2 x double>)

define <8 x float> @test_x86_fma_vfmsubadd_ps_256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2) #0 {









  %res = call <8 x float> @llvm.x86.fma.vfmsubadd.ps.256(<8 x float> %a0, <8 x float> %a1, <8 x float> %a2)
  ret <8 x float> %res
}
declare <8 x float> @llvm.x86.fma.vfmsubadd.ps.256(<8 x float>, <8 x float>, <8 x float>)

define <4 x double> @test_x86_fma_vfmsubadd_pd_256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2) #0 {









  %res = call <4 x double> @llvm.x86.fma.vfmsubadd.pd.256(<4 x double> %a0, <4 x double> %a1, <4 x double> %a2)
  ret <4 x double> %res
}
declare <4 x double> @llvm.x86.fma.vfmsubadd.pd.256(<4 x double>, <4 x double>, <4 x double>)

attributes #0 = { nounwind }
