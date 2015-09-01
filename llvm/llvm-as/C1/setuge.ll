

@j = global i32 5, align 4
@k = global i32 10, align 4
@l = global i32 20, align 4
@m = global i32 10, align 4
@r1 = common global i32 0, align 4
@r2 = common global i32 0, align 4
@r3 = common global i32 0, align 4

define void @test() nounwind {
entry:
  %0 = load i32, i32* @k, align 4
  %1 = load i32, i32* @j, align 4
  %cmp = icmp uge i32 %0, %1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @r1, align 4



  %2 = load i32, i32* @m, align 4
  %cmp1 = icmp uge i32 %0, %2
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, i32* @r2, align 4
  ret void
}
