

define void @test(i64 %a, i64 %b, i2* %c) {





 %1 = trunc i64 %a to i2
 %2 = trunc i64 %b to i1

 store i2 %1, i2* %c, align 8
 br i1 %2, label %bb1, label %bb2

bb1:
  ret void

bb2:
  ret void
}
