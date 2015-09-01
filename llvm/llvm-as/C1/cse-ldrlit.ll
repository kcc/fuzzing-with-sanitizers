





@var = global [16 x i32] zeroinitializer

declare void @bar(i32*)

define void @foo() {
  %flag = load i32, i32* getelementptr inbounds([16 x i32], [16 x i32]* @var, i32 0, i32 1)
  %tst = icmp eq i32 %flag, 0
  br i1 %tst, label %true, label %false
true:
  tail call void @bar(i32* getelementptr inbounds([16 x i32], [16 x i32]* @var, i32 0, i32 4))
  ret void
false:
  ret void
}









































