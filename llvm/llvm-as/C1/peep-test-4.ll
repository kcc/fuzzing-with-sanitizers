
declare void @foo(i32)
declare void @foo32(i32)
declare void @foo64(i64)






define void @neg(i32 %x) nounwind {
  %sub = sub i32 0, %x
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %sub)
  br label %return

return:
  ret void
}






define void @sar(i32 %x) nounwind {
  %ashr = ashr i32 %x, 1
  %cmp = icmp eq i32 %ashr, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %ashr)
  br label %return

return:
  ret void
}






define void @shr(i32 %x) nounwind {
  %ashr = lshr i32 %x, 1
  %cmp = icmp eq i32 %ashr, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %ashr)
  br label %return

return:
  ret void
}






define void @shri(i32 %x) nounwind {
  %ashr = lshr i32 %x, 3
  %cmp = icmp eq i32 %ashr, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %ashr)
  br label %return

return:
  ret void
}






define void @shl(i32 %x) nounwind {
  %shl = shl i32 %x, 1
  %cmp = icmp eq i32 %shl, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %shl)
  br label %return

return:
  ret void
}






define void @shli(i32 %x) nounwind {
  %shl = shl i32 %x, 4
  %cmp = icmp eq i32 %shl, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %shl)
  br label %return

return:
  ret void
}







define zeroext i1 @adc(i128 %x) nounwind {
  %add = add i128 %x, 9223372036854775808
  %cmp = icmp ult i128 %add, 18446744073709551616
  ret i1 %cmp
}






define zeroext i1 @sbb(i128 %x, i128 %y) nounwind {
  %sub = sub i128 %x, %y
  %cmp = icmp sge i128 %sub, 0
  ret i1 %cmp
}






define void @andn(i32 %x, i32 %y) nounwind {
  %not = xor i32 %x, -1
  %andn = and i32 %y, %not
  %cmp = icmp eq i32 %andn, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %andn)
  br label %return

return:
  ret void
}






declare i32 @llvm.x86.bmi.bextr.32(i32, i32) nounwind readnone
define void @bextr(i32 %x, i32 %y) nounwind {
  %bextr = tail call i32 @llvm.x86.bmi.bextr.32(i32 %x, i32 %y)
  %cmp = icmp eq i32 %bextr, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %bextr)
  br label %return

return:
  ret void
}






declare i32 @llvm.ctpop.i32(i32) nounwind readnone
define void @popcnt(i32 %x) nounwind {
  %popcnt = tail call i32 @llvm.ctpop.i32(i32 %x)
  %cmp = icmp eq i32 %popcnt, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %popcnt)
  br label %return

return:
  ret void
}





declare i64 @llvm.cttz.i64(i64, i1)
define i64 @testCTZ(i64 %v) nounwind {
  %cnt = tail call i64 @llvm.cttz.i64(i64 %v, i1 true)
  %tobool = icmp eq i64 %v, 0
  %cond = select i1 %tobool, i64 255, i64 %cnt
  ret i64 %cond
}





declare i32 @llvm.cttz.i32(i32, i1)
define void @testCTZ2(i32 %v) nounwind {
  %cnt = tail call i32 @llvm.cttz.i32(i32 %v, i1 true)
  %cmp = icmp eq i32 %v, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %cnt)
  br label %return

return:
  tail call void @foo32(i32 %cnt)
  ret void
}





define void @testCTZ3(i32 %v) nounwind {
  %cnt = tail call i32 @llvm.cttz.i32(i32 %v, i1 true)
  %cmp = icmp ne i32 %v, 0
  br i1 %cmp, label %return, label %bb

bb:
  tail call void @foo(i32 %cnt)
  br label %return

return:
  tail call void @foo32(i32 %cnt)
  ret void
}





declare i64 @llvm.ctlz.i64(i64, i1)
define i64 @testCLZ(i64 %v) nounwind {
  %cnt = tail call i64 @llvm.ctlz.i64(i64 %v, i1 true)
  %tobool = icmp ne i64 %v, 0
  %cond = select i1 %tobool, i64 %cnt, i64 255
  ret i64 %cond
}





declare i64 @llvm.ctpop.i64(i64)
define i64 @testPOPCNT(i64 %v) nounwind {
  %cnt = tail call i64 @llvm.ctpop.i64(i64 %v)
  %tobool = icmp ne i64 %v, 0
  %cond = select i1 %tobool, i64 %cnt, i64 255
  ret i64 %cond
}
