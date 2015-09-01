







define void @test(i64 addrspace(1)* %out) {
entry:
  %tmp0 = alloca [16 x i32]
  %tmp1 = ptrtoint [16 x i32]* %tmp0 to i32
  %tmp2 = sext i32 %tmp1 to i64
  store i64 %tmp2, i64 addrspace(1)* %out
  ret void
}
