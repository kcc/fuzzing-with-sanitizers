








define i64 @ret2(i64 %a, i64 %b) {
  ret i64 %b
}







define i64 @shl_imm(i64 %a) {
  %x = shl i64 %a, 7
  ret i64 %x
}







define i64 @sra_reg(i64 %a, i64 %b) {
  %x = ashr i64 %a, %b
  ret i64 %x
}












define i64 @ret_imm0() {
  ret i64 0
}







define i64 @ret_simm13() {
  ret i64 -4096
}









define i64 @ret_sethi() {
  ret i64 4096
}










define i64 @ret_sethi_or() {
  ret i64 4097
}










define i64 @ret_nimm33() {
  ret i64 -4100
}




define i64 @ret_bigimm() {
  ret i64 6800754272627607872
}



define i64 @ret_bigimm2() {
  ret i64 4611686018427387904 
}





define i64 @reg_reg_alu(i64 %x, i64 %y, i64 %z) {
  %a = add i64 %x, %y
  %b = sub i64 %a, %z
  %c = xor i64 %x, -1
  %d = and i64 %b, %c
  ret i64 %d
}




define i64 @reg_imm_alu(i64 %x, i64 %y, i64 %z) {
  %a = add i64 %x, -5
  %b = xor i64 %a, 2
  ret i64 %b
}










define i64 @loads(i64* %p, i32* %q, i32* %r, i16* %s) {
  %a = load i64, i64* %p
  %ai = add i64 1, %a
  store i64 %ai, i64* %p
  %b = load i32, i32* %q
  %b2 = zext i32 %b to i64
  %bi = trunc i64 %ai to i32
  store i32 %bi, i32* %q
  %c = load i32, i32* %r
  %c2 = sext i32 %c to i64
  store i64 %ai, i64* %p
  %d = load i16, i16* %s
  %d2 = sext i16 %d to i64
  %di = trunc i64 %ai to i16
  store i16 %di, i16* %s

  %x1 = add i64 %a, %b2
  %x2 = add i64 %c2, %d2
  %x3 = add i64 %x1, %x2
  ret i64 %x3
}



define i64 @load_bool(i1* %p) {
  %a = load i1, i1* %p
  %b = zext i1 %a to i64
  ret i64 %b
}







define void @stores(i64* %p, i32* %q, i16* %r, i8* %s) {
  %p1 = getelementptr i64, i64* %p, i64 1
  %p2 = getelementptr i64, i64* %p, i64 2
  %pv = load i64, i64* %p1
  store i64 %pv, i64* %p2

  %q2 = getelementptr i32, i32* %q, i32 -2
  %qv = trunc i64 %pv to i32
  store i32 %qv, i32* %q2

  %r2 = getelementptr i16, i16* %r, i16 20
  %rv = trunc i64 %pv to i16
  store i16 %rv, i16* %r2

  %s2 = getelementptr i8, i8* %s, i8 -20
  %sv = trunc i64 %pv to i8
  store i8 %sv, i8* %s2

  ret void
}




define i8 @promote_shifts(i8* %p) {
  %L24 = load i8, i8* %p
  %L32 = load i8, i8* %p
  %B36 = shl i8 %L24, %L32
  ret i8 %B36
}



define i64 @multiply(i64 %a, i64 %b) {
  %r = mul i64 %a, %b
  ret i64 %r
}



define i64 @signed_divide(i64 %a, i64 %b) {
  %r = sdiv i64 %a, %b
  ret i64 %r
}



define i64 @unsigned_divide(i64 %a, i64 %b) {
  %r = udiv i64 %a, %b
  ret i64 %r
}

define void @access_fi() {
entry:
  %b = alloca [32 x i8], align 1
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %b, i64 0, i64 0
  call void @g(i8* %arraydecay) #2
  ret void
}

declare void @g(i8*)




define i32 @expand_setcc(i64 %a) {
  %cond = icmp sle i64 %a, 0
  %cast2 = zext i1 %cond to i32
  %RV = sub i32 1, %cast2
  ret i32 %RV
}




define i64 @spill_i64(i64 %x) {
  call void asm sideeffect "", "~{i0},~{i1},~{i2},~{i3},~{i4},~{i5},~{o0},~{o1},~{o2},~{o3},~{o4},~{o5},~{o7},~{l0},~{l1},~{l2},~{l3},~{l4},~{l5},~{l6},~{l7},~{g1},~{g2},~{g3},~{g4},~{g5},~{g6},~{g7}"()
  ret i64 %x
}




define i64 @bitcast_i64_f64(double %x) {
  %y = bitcast double %x to i64
  ret i64 %y
}




define double @bitcast_f64_i64(i64 %x) {
  %y = bitcast i64 %x to double
  ret double %y
}








define i64 @store_zero(i64* nocapture %a, i64* nocapture %b) {
entry:
  store i64 0, i64* %a, align 8
  %0 = getelementptr inbounds i64, i64* %b, i32 1
  store i64 0, i64* %0, align 8
  ret i64 0
}







define i64 @bit_ops(i64 %arg) {
entry:
  %0 = tail call i64 @llvm.ctpop.i64(i64 %arg)
  %1 = tail call i64 @llvm.ctlz.i64(i64 %arg, i1 true)
  %2 = tail call i64 @llvm.cttz.i64(i64 %arg, i1 true)
  %3 = tail call i64 @llvm.bswap.i64(i64 %arg)
  %4 = add i64 %0, %1
  %5 = add i64 %2, %3
  %6 = add i64 %4, %5
  ret i64 %6
}

declare i64 @llvm.ctpop.i64(i64) nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) nounwind readnone
declare i64 @llvm.bswap.i64(i64) nounwind readnone
