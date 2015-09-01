





@G = private unnamed_addr constant [1 x i8] c"\00", align 1



define void @test_no_crash() #0 {
entry:
  call i8* asm "nop", "=r,r"(
       i8* getelementptr inbounds ([1 x i8], [1 x i8]* @G, i64 0, i64 0))
  ret void
}
