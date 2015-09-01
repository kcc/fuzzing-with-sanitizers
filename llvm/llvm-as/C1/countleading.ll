












define i32 @ctlz_i32(i32 signext %X) nounwind readnone {
entry:








  %tmp1 = tail call i32 @llvm.ctlz.i32(i32 %X, i1 true)
  ret i32 %tmp1
}

declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone

define i32 @ctlo_i32(i32 signext %X) nounwind readnone {
entry:








  %neg = xor i32 %X, -1
  %tmp1 = tail call i32 @llvm.ctlz.i32(i32 %neg, i1 true)
  ret i32 %tmp1
}

define i64 @ctlz_i64(i64 %X) nounwind readnone {
entry:















  %tmp1 = tail call i64 @llvm.ctlz.i64(i64 %X, i1 true)
  ret i64 %tmp1
}

declare i64 @llvm.ctlz.i64(i64, i1) nounwind readnone

define i64 @ctlo_i64(i64 %X) nounwind readnone {
entry:

















  %neg = xor i64 %X, -1
  %tmp1 = tail call i64 @llvm.ctlz.i64(i64 %neg, i1 true)
  ret i64 %tmp1
}
