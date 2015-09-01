


@seed = common global i64 0, align 8

define void @Initrand() nounwind {
entry:




  store i64 74755, i64* @seed, align 8
  ret void
}

define i32 @Rand() nounwind {
entry:











  %0 = load i64, i64* @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, i64* @seed, align 8
  %1 = load i64, i64* @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}
