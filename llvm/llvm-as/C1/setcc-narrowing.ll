


@t1.global = internal global i64 -1, align 8

define i32 @t1() nounwind ssp {
entry:





  %0 = load i64, i64* @t1.global, align 8
  %and = and i64 4294967295, %0
  %cmp = icmp sgt i64 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}
