









define i256 @test1(i256 %a) {
  %b = add i256 %a, 1 
  %m = shl i256 %b, 1
  %p = add i256 %m, 1
  %v = lshr i256 %b, %p
  %t = trunc i256 %v to i1
  %c = shl i256 1, %p
  %f = select i1 %t, i256 undef, i256 %c
  ret i256 %f
}


define i256 @test2(i256 %a) {
  %b = sub i256 0, %a
  %c = and i256 %b, %a
  %d = call i256 @llvm.ctlz.i256(i256 %c, i1 false)
  ret i256 %d
}


define i256 @test3(i256 %n) {
  %m = sub i256 -1, %n
  %x = sub i256 0, %n
  %y = and i256 %x, %m
  %z = call i256 @llvm.ctlz.i256(i256 %y, i1 false)
  ret i256 %z
}

declare i256 @llvm.ctlz.i256(i256, i1) nounwind readnone


define i64 @test4(i64 %a, i64 %b) {
  %r = zext i64 %b to i256
  %u = add i256 %r, 1
  %w = and i256 %u, 1461501637330902918203684832716283019655932542975
  %x = zext i64 %a to i256
  %c = icmp uge i256 %w, %x
  %y = select i1 %c, i64 0, i64 1
  %z = add i64 %y, 1
  ret i64 %z
}
