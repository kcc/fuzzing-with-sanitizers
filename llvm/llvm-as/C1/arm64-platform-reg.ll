









@var = global [30 x i64] zeroinitializer

define void @keep_live() {
  %val = load volatile [30 x i64], [30 x i64]* @var
  store volatile [30 x i64] %val, [30 x i64]* @var










  ret void
}
