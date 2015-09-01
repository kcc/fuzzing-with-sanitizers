






@s1 = internal unnamed_addr global i32 8, align 4
@g1 = external global i32

define void @foo() nounwind {
entry:























  %0 = load i32, i32* @s1, align 4
  tail call void @foo1(i32 %0) nounwind
  %1 = load i32, i32* @g1, align 4
  store i32 %1, i32* @s1, align 4
  %add = add nsw i32 %1, 2
  store i32 %add, i32* @g1, align 4
  ret void
}

declare void @foo1(i32)

