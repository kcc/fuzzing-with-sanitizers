

target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"







define half @test_fadd(half %a, half %b) #0 {
  %r = fadd half %a, %b
  ret half %r
}







define half @test_fsub(half %a, half %b) #0 {
  %r = fsub half %a, %b
  ret half %r
}







define half @test_fmul(half %a, half %b) #0 {
  %r = fmul half %a, %b
  ret half %r
}







define half @test_fdiv(half %a, half %b) #0 {
  %r = fdiv half %a, %b
  ret half %r
}










define half @test_frem(half %a, half %b) #0 {
  %r = frem half %a, %b
  ret half %r
}




define void @test_store(half %a, half* %b) #0 {
  store half %a, half* %b
  ret void
}




define half @test_load(half* %a) #0 {
  %r = load half, half* %a
  ret half %r
}


declare half @test_callee(half %a, half %b) #0







define half @test_call(half %a, half %b) #0 {
  %r = call half @test_callee(half %a, half %b)
  ret half %r
}










define half @test_call_flipped(half %a, half %b) #0 {
  %r = call half @test_callee(half %b, half %a)
  ret half %r
}






define half @test_tailcall_flipped(half %a, half %b) #0 {
  %r = tail call half @test_callee(half %b, half %a)
  ret half %r
}








define half @test_select(half %a, half %b, i1 zeroext %c) #0 {
  %r = select i1 %c, half %a, half %b
  ret half %r
}












define half @test_select_cc(half %a, half %b, half %c, half %d) #0 {
  %cc = fcmp une half %c, %d
  %r = select i1 %cc, half %a, half %b
  ret half %r
}







define i1 @test_fcmp_une(half %a, half %b) #0 {
  %r = fcmp une half %a, %b
  ret i1 %r
}









define i1 @test_fcmp_ueq(half %a, half %b) #0 {
  %r = fcmp ueq half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ugt(half %a, half %b) #0 {
  %r = fcmp ugt half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_uge(half %a, half %b) #0 {
  %r = fcmp uge half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ult(half %a, half %b) #0 {
  %r = fcmp ult half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ule(half %a, half %b) #0 {
  %r = fcmp ule half %a, %b
  ret i1 %r
}








define i1 @test_fcmp_uno(half %a, half %b) #0 {
  %r = fcmp uno half %a, %b
  ret i1 %r
}









define i1 @test_fcmp_one(half %a, half %b) #0 {
  %r = fcmp one half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_oeq(half %a, half %b) #0 {
  %r = fcmp oeq half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ogt(half %a, half %b) #0 {
  %r = fcmp ogt half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_oge(half %a, half %b) #0 {
  %r = fcmp oge half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_olt(half %a, half %b) #0 {
  %r = fcmp olt half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ole(half %a, half %b) #0 {
  %r = fcmp ole half %a, %b
  ret i1 %r
}







define i1 @test_fcmp_ord(half %a, half %b) #0 {
  %r = fcmp ord half %a, %b
  ret i1 %r
}











define void @test_br_cc(half %a, half %b, i32* %p1, i32* %p2) #0 {
  %c = fcmp uge half %a, %b
  br i1 %c, label %then, label %else
then:
  store i32 0, i32* %p1
  ret void
else:
  store i32 0, i32* %p2
  ret void
}











define half @test_phi(half* %p1) #0 {
entry:
  %a = load half, half* %p1
  br label %loop
loop:
  %r = phi half [%a, %entry], [%b, %loop]
  %b = load half, half* %p1
  %c = call i1 @test_dummy(half* %p1)
  br i1 %c, label %loop, label %return
return:
  ret half %r
}
declare i1 @test_dummy(half* %p1) #0





define i32 @test_fptosi_i32(half %a) #0 {
  %r = fptosi half %a to i32
  ret i32 %r
}





define i64 @test_fptosi_i64(half %a) #0 {
  %r = fptosi half %a to i64
  ret i64 %r
}





define i32 @test_fptoui_i32(half %a) #0 {
  %r = fptoui half %a to i32
  ret i32 %r
}





define i64 @test_fptoui_i64(half %a) #0 {
  %r = fptoui half %a to i64
  ret i64 %r
}





define half @test_uitofp_i32(i32 %a) #0 {
  %r = uitofp i32 %a to half
  ret half %r
}





define half @test_uitofp_i64(i64 %a) #0 {
  %r = uitofp i64 %a to half
  ret half %r
}





define half @test_sitofp_i32(i32 %a) #0 {
  %r = sitofp i32 %a to half
  ret half %r
}





define half @test_sitofp_i64(i64 %a) #0 {
  %r = sitofp i64 %a to half
  ret half %r
}





define half @test_fptrunc_float(float %a) #0 {
  %r = fptrunc float %a to half
  ret half %r
}




define half @test_fptrunc_double(double %a) #0 {
  %r = fptrunc double %a to half
  ret half %r
}




define float @test_fpext_float(half %a) #0 {
  %r = fpext half %a to float
  ret float %r
}




define double @test_fpext_double(half %a) #0 {
  %r = fpext half %a to double
  ret double %r
}





define i16 @test_bitcast_halftoi16(half %a) #0 {
  %r = bitcast half %a to i16
  ret i16 %r
}




define half @test_bitcast_i16tohalf(i16 %a) #0 {
  %r = bitcast i16 %a to half
  ret half %r
}


declare half @llvm.sqrt.f16(half %a) #0
declare half @llvm.powi.f16(half %a, i32 %b) #0
declare half @llvm.sin.f16(half %a) #0
declare half @llvm.cos.f16(half %a) #0
declare half @llvm.pow.f16(half %a, half %b) #0
declare half @llvm.exp.f16(half %a) #0
declare half @llvm.exp2.f16(half %a) #0
declare half @llvm.log.f16(half %a) #0
declare half @llvm.log10.f16(half %a) #0
declare half @llvm.log2.f16(half %a) #0
declare half @llvm.fma.f16(half %a, half %b, half %c) #0
declare half @llvm.fabs.f16(half %a) #0
declare half @llvm.minnum.f16(half %a, half %b) #0
declare half @llvm.maxnum.f16(half %a, half %b) #0
declare half @llvm.copysign.f16(half %a, half %b) #0
declare half @llvm.floor.f16(half %a) #0
declare half @llvm.ceil.f16(half %a) #0
declare half @llvm.trunc.f16(half %a) #0
declare half @llvm.rint.f16(half %a) #0
declare half @llvm.nearbyint.f16(half %a) #0
declare half @llvm.round.f16(half %a) #0
declare half @llvm.fmuladd.f16(half %a, half %b, half %c) #0






define half @test_sqrt(half %a) #0 {
  %r = call half @llvm.sqrt.f16(half %a)
  ret half %r
}









define half @test_powi(half %a, i32 %b) #0 {
  %r = call half @llvm.powi.f16(half %a, i32 %b)
  ret half %r
}









define half @test_sin(half %a) #0 {
  %r = call half @llvm.sin.f16(half %a)
  ret half %r
}









define half @test_cos(half %a) #0 {
  %r = call half @llvm.cos.f16(half %a)
  ret half %r
}










define half @test_pow(half %a, half %b) #0 {
  %r = call half @llvm.pow.f16(half %a, half %b)
  ret half %r
}









define half @test_exp(half %a) #0 {
  %r = call half @llvm.exp.f16(half %a)
  ret half %r
}









define half @test_exp2(half %a) #0 {
  %r = call half @llvm.exp2.f16(half %a)
  ret half %r
}









define half @test_log(half %a) #0 {
  %r = call half @llvm.log.f16(half %a)
  ret half %r
}









define half @test_log10(half %a) #0 {
  %r = call half @llvm.log10.f16(half %a)
  ret half %r
}









define half @test_log2(half %a) #0 {
  %r = call half @llvm.log2.f16(half %a)
  ret half %r
}








define half @test_fma(half %a, half %b, half %c) #0 {
  %r = call half @llvm.fma.f16(half %a, half %b, half %c)
  ret half %r
}






define half @test_fabs(half %a) #0 {
  %r = call half @llvm.fabs.f16(half %a)
  ret half %r
}







define half @test_minnum(half %a, half %b) #0 {
  %r = call half @llvm.minnum.f16(half %a, half %b)
  ret half %r
}







define half @test_maxnum(half %a, half %b) #0 {
  %r = call half @llvm.maxnum.f16(half %a, half %b)
  ret half %r
}








define half @test_copysign(half %a, half %b) #0 {
  %r = call half @llvm.copysign.f16(half %a, half %b)
  ret half %r
}







define half @test_copysign_f32(half %a, float %b) #0 {
  %tb = fptrunc float %b to half
  %r = call half @llvm.copysign.f16(half %a, half %tb)
  ret half %r
}








define half @test_copysign_f64(half %a, double %b) #0 {
  %tb = fptrunc double %b to half
  %r = call half @llvm.copysign.f16(half %a, half %tb)
  ret half %r
}










define float @test_copysign_extended(half %a, half %b) #0 {
  %r = call half @llvm.copysign.f16(half %a, half %b)
  %xr = fpext half %r to float
  ret float %xr
}






define half @test_floor(half %a) #0 {
  %r = call half @llvm.floor.f16(half %a)
  ret half %r
}






define half @test_ceil(half %a) #0 {
  %r = call half @llvm.ceil.f16(half %a)
  ret half %r
}






define half @test_trunc(half %a) #0 {
  %r = call half @llvm.trunc.f16(half %a)
  ret half %r
}






define half @test_rint(half %a) #0 {
  %r = call half @llvm.rint.f16(half %a)
  ret half %r
}






define half @test_nearbyint(half %a) #0 {
  %r = call half @llvm.nearbyint.f16(half %a)
  ret half %r
}






define half @test_round(half %a) #0 {
  %r = call half @llvm.round.f16(half %a)
  ret half %r
}











define half @test_fmuladd(half %a, half %b, half %c) #0 {
  %r = call half @llvm.fmuladd.f16(half %a, half %b, half %c)
  ret half %r
}

attributes #0 = { nounwind }
