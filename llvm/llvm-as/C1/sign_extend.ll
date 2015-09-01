





define void @s_sext_i1_to_i32(i32 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %cmp = icmp eq i32 %a, %b
  %sext = sext i1 %cmp to i32
  store i32 %sext, i32 addrspace(1)* %out, align 4
  ret void
}




define void @test_s_sext_i32_to_i64(i64 addrspace(1)* %out, i32 %a, i32 %b, i32 %c) nounwind {
entry:
  %mul = mul i32 %a, %b
  %add = add i32 %mul, %c
  %sext = sext i32 %add to i64
  store i64 %sext, i64 addrspace(1)* %out, align 8
  ret void
}






define void @s_sext_i1_to_i64(i64 addrspace(1)* %out, i32 %a, i32 %b) nounwind {
  %cmp = icmp eq i32 %a, %b
  %sext = sext i1 %cmp to i64
  store i64 %sext, i64 addrspace(1)* %out, align 8
  ret void
}




define void @s_sext_i32_to_i64(i64 addrspace(1)* %out, i32 %a) nounwind {
  %sext = sext i32 %a to i64
  store i64 %sext, i64 addrspace(1)* %out, align 8
  ret void
}




define void @v_sext_i32_to_i64(i64 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %val = load i32, i32 addrspace(1)* %in, align 4
  %sext = sext i32 %val to i64
  store i64 %sext, i64 addrspace(1)* %out, align 8
  ret void
}



define void @s_sext_i16_to_i64(i64 addrspace(1)* %out, i16 %a) nounwind {
  %sext = sext i16 %a to i64
  store i64 %sext, i64 addrspace(1)* %out, align 8
  ret void
}
