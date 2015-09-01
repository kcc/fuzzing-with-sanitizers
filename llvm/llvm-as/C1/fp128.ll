



























define void @f128_ops(fp128* noalias sret %scalar.result, fp128* byval %a, fp128* byval %b, fp128* byval %c, fp128* byval %d) {
entry:
  %0 = load fp128, fp128* %a, align 8
  %1 = load fp128, fp128* %b, align 8
  %2 = load fp128, fp128* %c, align 8
  %3 = load fp128, fp128* %d, align 8
  %4 = fadd fp128 %0, %1
  %5 = fsub fp128 %4, %2
  %6 = fmul fp128 %5, %3
  %7 = fdiv fp128 %6, %4
  store fp128 %7, fp128* %scalar.result, align 8
  ret void
}















define void @f128_spill(fp128* noalias sret %scalar.result, fp128* byval %a) {
entry:
  %0 = load fp128, fp128* %a, align 8
  call void asm sideeffect "", "~{f0},~{f1},~{f2},~{f3},~{f4},~{f5},~{f6},~{f7},~{f8},~{f9},~{f10},~{f11},~{f12},~{f13},~{f14},~{f15},~{f16},~{f17},~{f18},~{f19},~{f20},~{f21},~{f22},~{f23},~{f24},~{f25},~{f26},~{f27},~{f28},~{f29},~{f30},~{f31}"()
  store fp128 %0, fp128* %scalar.result, align 8
  ret void
}








define i32 @f128_compare(fp128* byval %f0, fp128* byval %f1, i32 %a, i32 %b) {
entry:
   %0 = load fp128, fp128* %f0, align 8
   %1 = load fp128, fp128* %f1, align 8
   %cond = fcmp ult fp128 %0, %1
   %ret = select i1 %cond, i32 %a, i32 %b
   ret i32 %ret
}









define i32 @f128_compare2() {
entry:
  %0 = fcmp ogt fp128 undef, 0xL00000000000000000000000000000000
  br i1 %0, label %"5", label %"7"

"5":                                              
  ret i32 0

"7":                                              
  ret i32 1
}








define void @f128_abs(fp128* noalias sret %scalar.result, fp128* byval %a) {
entry:
  %0 = load fp128, fp128* %a, align 8
  %1 = tail call fp128 @llvm.fabs.f128(fp128 %0)
  store fp128 %1, fp128* %scalar.result, align 8
  ret void
}

declare fp128 @llvm.fabs.f128(fp128) nounwind readonly







define void @int_to_f128(fp128* noalias sret %scalar.result, i32 %i) {
entry:
  %0 = sitofp i32 %i to fp128
  store fp128 %0, fp128* %scalar.result, align 8
  ret void
}













define void @fp128_unaligned(fp128* %a, fp128* %b, fp128* %c) {
entry:
  %0 = load fp128, fp128* %a, align 1
  %1 = load fp128, fp128* %b, align 1
  %2 = fadd fp128 %0, %1
  store fp128 %2, fp128* %c, align 1
  ret void
}







define void @uint_to_f128(fp128* noalias sret %scalar.result, i32 %i) {
entry:
  %0 = uitofp i32 %i to fp128
  store fp128 %0, fp128* %scalar.result, align 8
  ret void
}










define i32 @f128_to_i32(fp128* %a, fp128* %b) {
entry:
  %0 = load fp128, fp128* %a, align 8
  %1 = load fp128, fp128* %b, align 8
  %2 = fptoui fp128 %0 to i32
  %3 = fptosi fp128 %1 to i32
  %4 = add i32 %2, %3
  ret i32 %4
}













define void @test_itoq_qtoi(i64 %a, i32 %b, fp128* %c, fp128* %d, i64* %ptr0, fp128* %ptr1) {
entry:
  %0 = sitofp i64 %a to fp128
  store  fp128 %0, fp128* %ptr1, align 8
  %cval = load fp128, fp128* %c, align 8
  %1 = fptosi fp128 %cval to i64
  store  i64 %1, i64* %ptr0, align 8
  %2 = sitofp i32 %b to fp128
  store  fp128 %2, fp128* %ptr1, align 8
  %dval = load fp128, fp128* %d, align 8
  %3 = fptosi fp128 %dval to i32
  %4 = bitcast i64* %ptr0 to i32*
  store  i32 %3, i32* %4, align 8
  ret void
}













define void @test_utoq_qtou(i64 %a, i32 %b, fp128* %c, fp128* %d, i64* %ptr0, fp128* %ptr1) {
entry:
  %0 = uitofp i64 %a to fp128
  store  fp128 %0, fp128* %ptr1, align 8
  %cval = load fp128, fp128* %c, align 8
  %1 = fptoui fp128 %cval to i64
  store  i64 %1, i64* %ptr0, align 8
  %2 = uitofp i32 %b to fp128
  store  fp128 %2, fp128* %ptr1, align 8
  %dval = load fp128, fp128* %d, align 8
  %3 = fptoui fp128 %dval to i32
  %4 = bitcast i64* %ptr0 to i32*
  store  i32 %3, i32* %4, align 8
  ret void
}




define void @f128_neg(fp128* noalias sret %scalar.result, fp128* byval %a) {
entry:
  %0 = load fp128, fp128* %a, align 8
  %1 = fsub fp128 0xL00000000000000008000000000000000, %0
  store fp128 %1, fp128* %scalar.result, align 8
  ret void
}
