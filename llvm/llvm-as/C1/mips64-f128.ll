








@gld0 = external global fp128
@gld1 = external global fp128
@gld2 = external global fp128
@gf1 = external global float
@gd1 = external global double




define fp128 @addLD() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %add = fadd fp128 %0, %1
  ret fp128 %add
}




define fp128 @subLD() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %sub = fsub fp128 %0, %1
  ret fp128 %sub
}




define fp128 @mulLD() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %mul = fmul fp128 %0, %1
  ret fp128 %mul
}




define fp128 @divLD() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %div = fdiv fp128 %0, %1
  ret fp128 %div
}




define fp128 @conv_LD_char(i8 signext %a) {
entry:
  %conv = sitofp i8 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_short(i16 signext %a) {
entry:
  %conv = sitofp i16 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_int(i32 %a) {
entry:
  %conv = sitofp i32 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_LL(i64 %a) {
entry:
  %conv = sitofp i64 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_UChar(i8 zeroext %a) {
entry:
  %conv = uitofp i8 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_UShort(i16 zeroext %a) {
entry:
  %conv = uitofp i16 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_UInt(i32 signext %a) {
entry:
  %conv = uitofp i32 %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_ULL(i64 %a) {
entry:
  %conv = uitofp i64 %a to fp128
  ret fp128 %conv
}




define signext i8 @conv_char_LD(fp128 %a) {
entry:
  %conv = fptosi fp128 %a to i8
  ret i8 %conv
}




define signext i16 @conv_short_LD(fp128 %a) {
entry:
  %conv = fptosi fp128 %a to i16
  ret i16 %conv
}




define i32 @conv_int_LD(fp128 %a) {
entry:
  %conv = fptosi fp128 %a to i32
  ret i32 %conv
}




define i64 @conv_LL_LD(fp128 %a) {
entry:
  %conv = fptosi fp128 %a to i64
  ret i64 %conv
}




define zeroext i8 @conv_UChar_LD(fp128 %a) {
entry:
  %conv = fptoui fp128 %a to i8
  ret i8 %conv
}




define zeroext i16 @conv_UShort_LD(fp128 %a) {
entry:
  %conv = fptoui fp128 %a to i16
  ret i16 %conv
}




define i32 @conv_UInt_LD(fp128 %a) {
entry:
  %conv = fptoui fp128 %a to i32
  ret i32 %conv
}




define i64 @conv_ULL_LD(fp128 %a) {
entry:
  %conv = fptoui fp128 %a to i64
  ret i64 %conv
}




define fp128 @conv_LD_float(float %a) {
entry:
  %conv = fpext float %a to fp128
  ret fp128 %conv
}




define fp128 @conv_LD_double(double %a) {
entry:
  %conv = fpext double %a to fp128
  ret fp128 %conv
}




define float @conv_float_LD(fp128 %a) {
entry:
  %conv = fptrunc fp128 %a to float
  ret float %conv
}




define double @conv_double_LD(fp128 %a) {
entry:
  %conv = fptrunc fp128 %a to double
  ret double %conv
}









define fp128 @libcall1_fabsl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @fabsl(fp128 %0) nounwind readnone
  ret fp128 %call
}

declare fp128 @fabsl(fp128) #1




define fp128 @libcall1_ceill() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @ceill(fp128 %0) nounwind readnone
  ret fp128 %call
}

declare fp128 @ceill(fp128) #1




define fp128 @libcall1_sinl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @sinl(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @sinl(fp128) #2




define fp128 @libcall1_cosl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @cosl(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @cosl(fp128) #2




define fp128 @libcall1_expl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @expl(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @expl(fp128) #2




define fp128 @libcall1_exp2l() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @exp2l(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @exp2l(fp128) #2




define fp128 @libcall1_logl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @logl(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @logl(fp128) #2




define fp128 @libcall1_log2l() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @log2l(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @log2l(fp128) #2




define fp128 @libcall1_log10l() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @log10l(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @log10l(fp128) #2




define fp128 @libcall1_nearbyintl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @nearbyintl(fp128 %0) nounwind readnone
  ret fp128 %call
}

declare fp128 @nearbyintl(fp128) #1




define fp128 @libcall1_floorl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @floorl(fp128 %0) nounwind readnone
  ret fp128 %call
}

declare fp128 @floorl(fp128) #1




define fp128 @libcall1_sqrtl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @sqrtl(fp128 %0) nounwind
  ret fp128 %call
}

declare fp128 @sqrtl(fp128) #2




define fp128 @libcall1_rintl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %call = tail call fp128 @rintl(fp128 %0) nounwind readnone
  ret fp128 %call
}

declare fp128 @rintl(fp128) #1




define fp128 @libcall_powil(fp128 %a, i32 %b) {
entry:
  %0 = tail call fp128 @llvm.powi.f128(fp128 %a, i32 %b)
  ret fp128 %0
}

declare fp128 @llvm.powi.f128(fp128, i32) #3














define fp128 @libcall2_copysignl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %call = tail call fp128 @copysignl(fp128 %0, fp128 %1) nounwind readnone
  ret fp128 %call
}

declare fp128 @copysignl(fp128, fp128) #1




define fp128 @libcall2_powl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %call = tail call fp128 @powl(fp128 %0, fp128 %1) nounwind
  ret fp128 %call
}

declare fp128 @powl(fp128, fp128) #2




define fp128 @libcall2_fmodl() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld1, align 16
  %call = tail call fp128 @fmodl(fp128 %0, fp128 %1) nounwind
  ret fp128 %call
}

declare fp128 @fmodl(fp128, fp128) #2




define fp128 @libcall3_fmal() {
entry:
  %0 = load fp128, fp128* @gld0, align 16
  %1 = load fp128, fp128* @gld2, align 16
  %2 = load fp128, fp128* @gld1, align 16
  %3 = tail call fp128 @llvm.fma.f128(fp128 %0, fp128 %2, fp128 %1)
  ret fp128 %3
}

declare fp128 @llvm.fma.f128(fp128, fp128, fp128) #4




define i32 @cmp_lt(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp olt fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}




define i32 @cmp_le(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp ole fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}




define i32 @cmp_gt(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp ogt fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}




define i32 @cmp_ge(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp oge fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}




define i32 @cmp_eq(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp oeq fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}




define i32 @cmp_ne(fp128 %a, fp128 %b) {
entry:
  %cmp = fcmp une fp128 %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}






define fp128 @load_LD_LD() {
entry:
  %0 = load fp128, fp128* @gld1, align 16
  ret fp128 %0
}







define fp128 @load_LD_float() {
entry:
  %0 = load float, float* @gf1, align 4
  %conv = fpext float %0 to fp128
  ret fp128 %conv
}







define fp128 @load_LD_double() {
entry:
  %0 = load double, double* @gd1, align 8
  %conv = fpext double %0 to fp128
  ret fp128 %conv
}









define void @store_LD_LD() {
entry:
  %0 = load fp128, fp128* @gld1, align 16
  store fp128 %0, fp128* @gld0, align 16
  ret void
}










define void @store_LD_float() {
entry:
  %0 = load fp128, fp128* @gld1, align 16
  %conv = fptrunc fp128 %0 to float
  store float %conv, float* @gf1, align 4
  ret void
}










define void @store_LD_double() {
entry:
  %0 = load fp128, fp128* @gld1, align 16
  %conv = fptrunc fp128 %0 to double
  store double %conv, double* @gd1, align 8
  ret void
}


















define fp128 @select_LD(i32 signext %a, i64, fp128 %b, fp128 %c) {
entry:
  %tobool = icmp ne i32 %a, 0
  %cond = select i1 %tobool, fp128 %b, fp128 %c
  ret fp128 %cond
}























define fp128 @selectCC_LD(fp128 %a, fp128 %b, fp128 %c, fp128 %d) {
entry:
  %cmp = fcmp ogt fp128 %a, %b
  %cond = select i1 %cmp, fp128 %c, fp128 %d
  ret fp128 %cond
}
