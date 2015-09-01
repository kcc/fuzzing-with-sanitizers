

@global = global [20 x i64] zeroinitializer, align 8




define void @test_stack_no_frame() {


  %local = alloca [20 x i64]
  %val = load volatile [20 x i64], [20 x i64]* @global, align 8
  store volatile [20 x i64] %val, [20 x i64]* %local, align 8

  %val2 = load volatile [20 x i64], [20 x i64]* %local, align 8
  store volatile [20 x i64] %val2, [20 x i64]* @global, align 8


  ret void
}
