

define i32 @test1(i32 %x) nounwind {
  %i = shl i32 %x, 1
  switch i32 %i, label %a [
    i32 21, label %b
    i32 24, label %c
  ]

a:
  ret i32 0
b:
  ret i32 3
c:
  ret i32 5




}


define i32 @test2(i32 %x) nounwind {
  %i = shl i32 %x, 1
  switch i32 %i, label %a [
    i32 21, label %b
    i32 23, label %c
  ]

a:
  ret i32 0
b:
  ret i32 3
c:
  ret i32 5


}
