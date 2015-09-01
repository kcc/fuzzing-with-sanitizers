



%struct.small = type { i32, i32 }

@s1 = common global %struct.small zeroinitializer, align 4

define void @foo() nounwind {
entry:
  %0 = load i64, i64* bitcast (%struct.small* @s1 to i64*), align 1
  call void @bar(i64 %0)
  ret void
}

declare void @bar(i64)
