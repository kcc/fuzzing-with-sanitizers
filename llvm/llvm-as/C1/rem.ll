

@iiii = global i32 103, align 4
@jjjj = global i32 -4, align 4
@kkkk = common global i32 0, align 4


define void @test() nounwind {
entry:
  %0 = load i32, i32* @iiii, align 4
  %1 = load i32, i32* @jjjj, align 4
  %rem = srem i32 %0, %1


  store i32 %rem, i32* @kkkk, align 4
  ret void
}


