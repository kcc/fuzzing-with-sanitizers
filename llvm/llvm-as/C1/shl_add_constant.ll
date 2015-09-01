

declare i32 @llvm.r600.read.tidig.x() #1








define void @shl_2_add_9_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %ptr = getelementptr i32, i32 addrspace(1)* %in, i32 %tid.x
  %val = load i32, i32 addrspace(1)* %ptr, align 4
  %add = add i32 %val, 9
  %result = shl i32 %add, 2
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}







define void @shl_2_add_9_i32_2_add_uses(i32 addrspace(1)* %out0, i32 addrspace(1)* %out1, i32 addrspace(1)* %in) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %ptr = getelementptr i32, i32 addrspace(1)* %in, i32 %tid.x
  %val = load i32, i32 addrspace(1)* %ptr, align 4
  %add = add i32 %val, 9
  %result = shl i32 %add, 2
  store i32 %result, i32 addrspace(1)* %out0, align 4
  store i32 %add, i32 addrspace(1)* %out1, align 4
  ret void
}








define void @shl_2_add_999_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) #0 {
  %tid.x = tail call i32 @llvm.r600.read.tidig.x() #1
  %ptr = getelementptr i32, i32 addrspace(1)* %in, i32 %tid.x
  %val = load i32, i32 addrspace(1)* %ptr, align 4
  %shl = add i32 %val, 999
  %result = shl i32 %shl, 2
  store i32 %result, i32 addrspace(1)* %out, align 4
  ret void
}









define void @test_add_shl_add_constant(i32 addrspace(1)* %out, i32 %x, i32 %y) #0 {
  %add.0 = add i32 %x, 123
  %shl = shl i32 %add.0, 3
  %add.1 = add i32 %shl, %y
   store i32 %add.1, i32 addrspace(1)* %out, align 4
  ret void
}










define void @test_add_shl_add_constant_inv(i32 addrspace(1)* %out, i32 %x, i32 %y) #0 {
  %add.0 = add i32 %x, 123
  %shl = shl i32 %add.0, 3
  %add.1 = add i32 %y, %shl
  store i32 %add.1, i32 addrspace(1)* %out, align 4
  ret void
}

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
