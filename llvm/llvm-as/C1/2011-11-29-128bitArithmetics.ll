

@A = global <4 x float> <float 0., float 1., float 2., float 3.>

define void @test_sqrt(<4 x float>* %X) nounwind {












L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) nounwind readonly


define void @test_cos(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.cos.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.cos.v4f32(<4 x float>) nounwind readonly

define void @test_exp(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.exp.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.exp.v4f32(<4 x float>) nounwind readonly

define void @test_exp2(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.exp2.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.exp2.v4f32(<4 x float>) nounwind readonly

define void @test_log10(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.log10.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.log10.v4f32(<4 x float>) nounwind readonly

define void @test_log(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.log.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.log.v4f32(<4 x float>) nounwind readonly

define void @test_log2(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.log2.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.log2.v4f32(<4 x float>) nounwind readonly


define void @test_pow(<4 x float>* %X) nounwind {





















L.entry:

  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.pow.v4f32(<4 x float> %0, <4 x float> <float 2., float 2., float 2., float 2.>)

  store <4 x float> %1, <4 x float>* %X, align 16

  ret void
}

declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) nounwind readonly

define void @test_powi(<4 x float>* %X) nounwind {










L.entry:

  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.powi.v4f32(<4 x float> %0, i32 2)

  store <4 x float> %1, <4 x float>* %X, align 16

  ret void
}

declare <4 x float> @llvm.powi.v4f32(<4 x float>, i32) nounwind readonly

define void @test_sin(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.sin.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.sin.v4f32(<4 x float>) nounwind readonly

define void @test_floor(<4 x float>* %X) nounwind {





















L.entry:
  %0 = load <4 x float>, <4 x float>* @A, align 16
  %1 = call <4 x float> @llvm.floor.v4f32(<4 x float> %0)
  store <4 x float> %1, <4 x float>* %X, align 16
  ret void
}

declare <4 x float> @llvm.floor.v4f32(<4 x float>) nounwind readonly

