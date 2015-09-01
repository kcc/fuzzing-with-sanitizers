




declare i32 @llvm.AMDGPU.imul24(i32, i32) nounwind readnone









define void @i32_mad24(i32 addrspace(1)* %out, i32 %a, i32 %b, i32 %c) {
entry:
  %0 = shl i32 %a, 8
  %a_24 = ashr i32 %0, 8
  %1 = shl i32 %b, 8
  %b_24 = ashr i32 %1, 8
  %2 = mul i32 %a_24, %b_24
  %3 = add i32 %2, %c
  store i32 %3, i32 addrspace(1)* %out
  ret void
}



define void @test_imul24(i32 addrspace(1)* %out, i32 %src0, i32 %src1, i32 %src2) nounwind {
  %mul = call i32 @llvm.AMDGPU.imul24(i32 %src0, i32 %src1) nounwind readnone
  %add = add i32 %mul, %src2
  store i32 %add, i32 addrspace(1)* %out, align 4
  ret void
}
