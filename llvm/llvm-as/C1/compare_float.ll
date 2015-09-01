


declare <4 x float> @llvm.mips.fmax.w(<4 x float>, <4 x float>) nounwind
declare <2 x double> @llvm.mips.fmax.d(<2 x double>, <2 x double>) nounwind
declare <4 x float> @llvm.mips.fmin.w(<4 x float>, <4 x float>) nounwind
declare <2 x double> @llvm.mips.fmin.d(<2 x double>, <2 x double>) nounwind

define void @false_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  %2 = load <4 x float>, <4 x float>* %b
  %3 = fcmp false <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  store <4 x i32> %4, <4 x i32>* %c
  ret void

  
  
  
  
}

define void @false_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  %2 = load <2 x double>, <2 x double>* %b
  %3 = fcmp false <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  store <2 x i64> %4, <2 x i64>* %c
  ret void

  
  
  
  
}

define void @oeq_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp oeq <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @oeq_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp oeq <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @oge_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp oge <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @oge_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp oge <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ogt_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ogt <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ogt_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ogt <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ole_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ole <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ole_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ole <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @olt_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp olt <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @olt_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp olt <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @one_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp one <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @one_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp one <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ord_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ord <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ord_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ord <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ueq_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ueq <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ueq_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ueq <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @uge_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp uge <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @uge_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp uge <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ugt_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ugt <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ugt_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ugt <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ule_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ule <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ule_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ule <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ult_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ult <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ult_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ult <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @uno_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp uno <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @uno_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp uno <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @true_v4f32(<4 x i32>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  %2 = load <4 x float>, <4 x float>* %b
  %3 = fcmp true <4 x float> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  store <4 x i32> %4, <4 x i32>* %c
  ret void

  
  
  
  
}

define void @true_v2f64(<2 x i64>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  %2 = load <2 x double>, <2 x double>* %b
  %3 = fcmp true <2 x double> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  store <2 x i64> %4, <2 x i64>* %c
  ret void

  
  
  
  
}

define void @bsel_v4f32(<4 x float>* %d, <4 x float>* %a, <4 x float>* %b,
                          <4 x float>* %c) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = load <4 x float>, <4 x float>* %c
  
  %4 = fcmp ogt <4 x float> %1, %2
  
  %5 = select <4 x i1> %4, <4 x float> %1, <4 x float> %3
  
  
  store <4 x float> %5, <4 x float>* %d
  

  ret void
  
}

define void @bsel_v2f64(<2 x double>* %d, <2 x double>* %a, <2 x double>* %b,
                          <2 x double>* %c) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = load <2 x double>, <2 x double>* %c
  
  %4 = fcmp ogt <2 x double> %1, %2
  
  %5 = select <2 x i1> %4, <2 x double> %1, <2 x double> %3
  
  
  store <2 x double> %5, <2 x double>* %d
  

  ret void
  
}

define void @bseli_v4f32(<4 x float>* %d, <4 x float>* %a, <4 x float>* %b,
                          <4 x float>* %c) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = fcmp ogt <4 x float> %1, %2
  
  %4 = select <4 x i1> %3, <4 x float> %1, <4 x float> zeroinitializer
  
  
  store <4 x float> %4, <4 x float>* %d
  

  ret void
  
}

define void @bseli_v2f64(<2 x double>* %d, <2 x double>* %a, <2 x double>* %b,
                          <2 x double>* %c) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = fcmp ogt <2 x double> %1, %2
  
  %4 = select <2 x i1> %3, <2 x double> %1, <2 x double> zeroinitializer
  
  
  store <2 x double> %4, <2 x double>* %d
  

  ret void
  
}

define void @max_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = tail call <4 x float> @llvm.mips.fmax.w(<4 x float> %1, <4 x float> %2)
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @max_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = tail call <2 x double> @llvm.mips.fmax.d(<2 x double> %1, <2 x double> %2)
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}

define void @min_v4f32(<4 x float>* %c, <4 x float>* %a, <4 x float>* %b) nounwind {
  

  %1 = load <4 x float>, <4 x float>* %a
  
  %2 = load <4 x float>, <4 x float>* %b
  
  %3 = tail call <4 x float> @llvm.mips.fmin.w(<4 x float> %1, <4 x float> %2)
  
  store <4 x float> %3, <4 x float>* %c
  

  ret void
  
}

define void @min_v2f64(<2 x double>* %c, <2 x double>* %a, <2 x double>* %b) nounwind {
  

  %1 = load <2 x double>, <2 x double>* %a
  
  %2 = load <2 x double>, <2 x double>* %b
  
  %3 = tail call <2 x double> @llvm.mips.fmin.d(<2 x double> %1, <2 x double> %2)
  
  store <2 x double> %3, <2 x double>* %c
  

  ret void
  
}
