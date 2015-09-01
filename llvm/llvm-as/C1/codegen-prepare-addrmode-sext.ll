









define void @test(i8 addrspace(1)* nocapture readonly %in, i32 %a, i8 %b) {
entry:
  %0 = mul nsw i32 %a, 3
  %1 = sext i32 %0 to i64
  %2 = getelementptr i8, i8 addrspace(1)* %in, i64 %1
  store i8 %b, i8 addrspace(1)* %2
  ret void
}
