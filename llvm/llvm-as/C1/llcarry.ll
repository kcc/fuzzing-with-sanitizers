

@i = global i64 4294967295, align 8
@j = global i64 15, align 8
@ii = global i64 4294967295, align 8
@k = common global i64 0, align 8
@l = common global i64 0, align 8
@m = common global i64 0, align 8

define void @test1() nounwind {
entry:
  %0 = load i64, i64* @i, align 8
  %1 = load i64, i64* @j, align 8
  %add = add nsw i64 %1, %0
  store i64 %add, i64* @k, align 8





  ret void
}

define void @test2() nounwind {
entry:
  %0 = load i64, i64* @i, align 8
  %1 = load i64, i64* @j, align 8
  %sub = sub nsw i64 %0, %1





  store i64 %sub, i64* @l, align 8
  ret void
}

define void @test3() nounwind {
entry:
  %0 = load i64, i64* @ii, align 8
  %add = add nsw i64 %0, 15





  store i64 %add, i64* @m, align 8
  ret void
}


