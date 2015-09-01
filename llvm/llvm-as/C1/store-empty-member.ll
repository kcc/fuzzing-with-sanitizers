






%testType = type {i32, [0 x i32], i32}

define void @foo() nounwind {
  %1 = alloca %testType
  store volatile %testType {i32 1, [0 x i32] zeroinitializer, i32 2}, %testType* %1
  ret void
}
