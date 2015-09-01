

define i32 @t0(i64 %x) {






entry:
  %0 = bitcast i64 %x to <4 x i16>
  %1 = bitcast <4 x i16> %0 to x86_mmx
  %2 = tail call x86_mmx @llvm.x86.sse.pshuf.w(x86_mmx %1, i8 -18)
  %3 = bitcast x86_mmx %2 to <4 x i16>
  %4 = bitcast <4 x i16> %3 to <1 x i64>
  %5 = extractelement <1 x i64> %4, i32 0
  %6 = bitcast i64 %5 to <2 x i32>
  %7 = extractelement <2 x i32> %6, i32 0
  ret i32 %7
}

define i64 @t1(i64 %x, i32 %n) {







entry:
  %0 = bitcast i64 %x to x86_mmx
  %1 = tail call x86_mmx @llvm.x86.mmx.pslli.q(x86_mmx %0, i32 %n)
  %2 = bitcast x86_mmx %1 to i64
  ret i64 %2
}

define i64 @t2(i64 %x, i32 %n, i32 %w) {









entry:
  %0 = insertelement <2 x i32> undef, i32 %w, i32 0
  %1 = insertelement <2 x i32> %0, i32 0, i32 1
  %2 = bitcast <2 x i32> %1 to x86_mmx
  %3 = tail call x86_mmx @llvm.x86.mmx.pslli.q(x86_mmx %2, i32 %n)
  %4 = bitcast i64 %x to x86_mmx
  %5 = tail call x86_mmx @llvm.x86.mmx.por(x86_mmx %4, x86_mmx %3)
  %6 = bitcast x86_mmx %5 to i64
  ret i64 %6
}

define i64 @t3(<1 x i64>* %y, i32* %n) {






entry:
  %0 = bitcast <1 x i64>* %y to x86_mmx*
  %1 = load x86_mmx, x86_mmx* %0, align 8
  %2 = load i32, i32* %n, align 4
  %3 = tail call x86_mmx @llvm.x86.mmx.pslli.q(x86_mmx %1, i32 %2)
  %4 = bitcast x86_mmx %3 to i64
  ret i64 %4
}

declare x86_mmx @llvm.x86.sse.pshuf.w(x86_mmx, i8)
declare x86_mmx @llvm.x86.mmx.pslli.q(x86_mmx, i32)
declare x86_mmx @llvm.x86.mmx.por(x86_mmx, x86_mmx)

