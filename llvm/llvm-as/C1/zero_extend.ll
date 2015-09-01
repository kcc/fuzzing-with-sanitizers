











define void @test(i64 addrspace(1)* %out, i32 %a, i32 %b, i32 %c) {
entry:
  %0 = mul i32 %a, %b
  %1 = add i32 %0, %c
  %2 = zext i32 %1 to i64
  store i64 %2, i64 addrspace(1)* %out
  ret void
}



define void @testi1toi32(i32 addrspace(1)* %out, i32 %a, i32 %b) {
entry:
  %0 = icmp eq i32 %a, %b
  %1 = zext i1 %0 to i32
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @zext_i1_to_i64(i64 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %cmp = icmp eq i32 %a, %b
  %ext = zext i1 %cmp to i64
  store i64 %ext, i64 addrspace(1)* %out, align 8
  ret void
}
