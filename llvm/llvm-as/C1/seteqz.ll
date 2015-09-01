

@i = global i32 0, align 4
@j = global i32 99, align 4
@r1 = common global i32 0, align 4
@r2 = common global i32 0, align 4

define void @test() nounwind {
entry:
  %0 = load i32, i32* @i, align 4
  %cmp = icmp eq i32 %0, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @r1, align 4


  %1 = load i32, i32* @j, align 4
  %cmp1 = icmp eq i32 %1, 99
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* @r2, align 4



  ret void
}
