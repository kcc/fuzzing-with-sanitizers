




@gll0 = common global i64 0, align 8
@gll1 = common global i64 0, align 8

define i64 @f0(i64 %a0, i64 %a1) nounwind readnone {
entry:


  %add = add nsw i64 %a1, %a0
  ret i64 %add
}

define i64 @f1(i64 %a0, i64 %a1) nounwind readnone {
entry:


  %sub = sub nsw i64 %a0, %a1
  ret i64 %sub
}

define i64 @f4(i64 %a0, i64 %a1) nounwind readnone {
entry:


  %and = and i64 %a1, %a0
  ret i64 %and
}

define i64 @f5(i64 %a0, i64 %a1) nounwind readnone {
entry:


  %or = or i64 %a1, %a0
  ret i64 %or
}

define i64 @f6(i64 %a0, i64 %a1) nounwind readnone {
entry:


  %xor = xor i64 %a1, %a0
  ret i64 %xor
}

define i64 @f7(i64 %a0) nounwind readnone {
entry:


  %add = add nsw i64 %a0, 20
  ret i64 %add
}

define i64 @f8(i64 %a0) nounwind readnone {
entry:


  %sub = add nsw i64 %a0, -20
  ret i64 %sub
}

define i64 @f9(i64 %a0) nounwind readnone {
entry:


  %and = and i64 %a0, 20
  ret i64 %and
}

define i64 @f10(i64 %a0) nounwind readnone {
entry:


  %or = or i64 %a0, 20
  ret i64 %or
}

define i64 @f11(i64 %a0) nounwind readnone {
entry:


  %xor = xor i64 %a0, 20
  ret i64 %xor
}

define i64 @f12(i64 %a, i64 %b) nounwind readnone {
entry:





  %mul = mul nsw i64 %b, %a
  ret i64 %mul
}

define i64 @f13(i64 %a, i64 %b) nounwind readnone {
entry:





  %mul = mul i64 %b, %a
  ret i64 %mul
}

define i64 @f14(i64 %a, i64 %b) nounwind readnone {
entry:













  %0 = load i64, i64* @gll0, align 8
  %1 = load i64, i64* @gll1, align 8
  %div = sdiv i64 %0, %1
  ret i64 %div
}

define i64 @f15() nounwind readnone {
entry:













  %0 = load i64, i64* @gll0, align 8
  %1 = load i64, i64* @gll1, align 8
  %div = udiv i64 %0, %1
  ret i64 %div
}

define i64 @f16(i64 %a, i64 %b) nounwind readnone {
entry:









  %rem = srem i64 %a, %b
  ret i64 %rem
}

define i64 @f17(i64 %a, i64 %b) nounwind readnone {
entry:









  %rem = urem i64 %a, %b
  ret i64 %rem
}

declare i64 @llvm.ctlz.i64(i64, i1) nounwind readnone

define i64 @f18(i64 %X) nounwind readnone {
entry:







  %tmp1 = tail call i64 @llvm.ctlz.i64(i64 %X, i1 true)
  ret i64 %tmp1
}

define i64 @f19(i64 %X) nounwind readnone {
entry:







  %neg = xor i64 %X, -1
  %tmp1 = tail call i64 @llvm.ctlz.i64(i64 %neg, i1 true)
  ret i64 %tmp1
}

define i64 @f20(i64 %a, i64 %b) nounwind readnone {
entry:


  %or = or i64 %b, %a
  %neg = xor i64 %or, -1
  ret i64 %neg
}
