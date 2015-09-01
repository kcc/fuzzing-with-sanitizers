


@j = external global i32
@k = external global i32

define void @foo() nounwind {
entry:
  %0 = load i32, i32* @j, align 4
  %1 = load i32, i32* @k, align 4
  %2 = call i32 @llvm.hexagon.A2.svaddh(i32 %0, i32 %1)
  store i32 %2, i32* @k, align 4
  ret void
}

declare i32 @llvm.hexagon.A2.svaddh(i32, i32) nounwind readnone
