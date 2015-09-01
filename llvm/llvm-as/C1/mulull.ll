

@iiii = global i64 5, align 8
@jjjj = global i64 6, align 8
@kkkk = common global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%lld * %lld = %lld\0A\00", align 1

define void @test() nounwind {
entry:
  %0 = load i64, i64* @iiii, align 8
  %1 = load i64, i64* @jjjj, align 8
  %mul = mul nsw i64 %1, %0
  store i64 %mul, i64* @kkkk, align 8






  ret void
}
