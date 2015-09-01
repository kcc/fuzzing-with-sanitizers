

define i32 @test1(i32 %x) nounwind {
  %and = and i32 %x, 31
  %sub = sub i32 63, %and
  ret i32 %sub





}

declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone

define i32 @test2(i32 %x) nounwind {
  %count = tail call i32 @llvm.ctlz.i32(i32 %x, i1 true) nounwind readnone
  %sub = sub i32 31, %count
  ret i32 %sub





}

define i32 @test3(i32 %x) nounwind {
  %and = and i32 %x, 31
  %sub = xor i32 31, %and
  %add = add i32 %sub, 42
  ret i32 %add





}

define i32 @test4(i32 %x) nounwind {
  %sub = xor i32 %x, 2147483648
  %add = add i32 %sub, 42
  ret i32 %add




}
