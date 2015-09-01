











define void @branch_use_flat_i32(i32 addrspace(1)* noalias %out, i32 addrspace(1)* %gptr, i32 addrspace(3)* %lptr, i32 %x, i32 %c) #0 {
entry:
  %cmp = icmp ne i32 %c, 0
  br i1 %cmp, label %local, label %global

local:
  %flat_local = addrspacecast i32 addrspace(3)* %lptr to i32 addrspace(4)*
  br label %end

global:
  %flat_global = addrspacecast i32 addrspace(1)* %gptr to i32 addrspace(4)*
  br label %end

end:
  %fptr = phi i32 addrspace(4)* [ %flat_local, %local ], [ %flat_global, %global ]
  store i32 %x, i32 addrspace(4)* %fptr, align 4


  ret void
}











define void @store_flat_i32(i32 addrspace(1)* %gptr, i32 %x) #0 {
  %fptr = addrspacecast i32 addrspace(1)* %gptr to i32 addrspace(4)*
  store i32 %x, i32 addrspace(4)* %fptr, align 4
  ret void
}



define void @store_flat_i64(i64 addrspace(1)* %gptr, i64 %x) #0 {
  %fptr = addrspacecast i64 addrspace(1)* %gptr to i64 addrspace(4)*
  store i64 %x, i64 addrspace(4)* %fptr, align 8
  ret void
}



define void @store_flat_v4i32(<4 x i32> addrspace(1)* %gptr, <4 x i32> %x) #0 {
  %fptr = addrspacecast <4 x i32> addrspace(1)* %gptr to <4 x i32> addrspace(4)*
  store <4 x i32> %x, <4 x i32> addrspace(4)* %fptr, align 16
  ret void
}



define void @store_flat_trunc_i16(i16 addrspace(1)* %gptr, i32 %x) #0 {
  %fptr = addrspacecast i16 addrspace(1)* %gptr to i16 addrspace(4)*
  %y = trunc i32 %x to i16
  store i16 %y, i16 addrspace(4)* %fptr, align 2
  ret void
}



define void @store_flat_trunc_i8(i8 addrspace(1)* %gptr, i32 %x) #0 {
  %fptr = addrspacecast i8 addrspace(1)* %gptr to i8 addrspace(4)*
  %y = trunc i32 %x to i8
  store i8 %y, i8 addrspace(4)* %fptr, align 2
  ret void
}





define void @load_flat_i32(i32 addrspace(1)* noalias %out, i32 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i32 addrspace(1)* %gptr to i32 addrspace(4)*
  %fload = load i32, i32 addrspace(4)* %fptr, align 4
  store i32 %fload, i32 addrspace(1)* %out, align 4
  ret void
}



define void @load_flat_i64(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i64 addrspace(1)* %gptr to i64 addrspace(4)*
  %fload = load i64, i64 addrspace(4)* %fptr, align 4
  store i64 %fload, i64 addrspace(1)* %out, align 8
  ret void
}



define void @load_flat_v4i32(<4 x i32> addrspace(1)* noalias %out, <4 x i32> addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast <4 x i32> addrspace(1)* %gptr to <4 x i32> addrspace(4)*
  %fload = load <4 x i32>, <4 x i32> addrspace(4)* %fptr, align 4
  store <4 x i32> %fload, <4 x i32> addrspace(1)* %out, align 8
  ret void
}



define void @sextload_flat_i8(i32 addrspace(1)* noalias %out, i8 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i8 addrspace(1)* %gptr to i8 addrspace(4)*
  %fload = load i8, i8 addrspace(4)* %fptr, align 4
  %ext = sext i8 %fload to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}



define void @zextload_flat_i8(i32 addrspace(1)* noalias %out, i8 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i8 addrspace(1)* %gptr to i8 addrspace(4)*
  %fload = load i8, i8 addrspace(4)* %fptr, align 4
  %ext = zext i8 %fload to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}



define void @sextload_flat_i16(i32 addrspace(1)* noalias %out, i16 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i16 addrspace(1)* %gptr to i16 addrspace(4)*
  %fload = load i16, i16 addrspace(4)* %fptr, align 4
  %ext = sext i16 %fload to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}



define void @zextload_flat_i16(i32 addrspace(1)* noalias %out, i16 addrspace(1)* noalias %gptr) #0 {
  %fptr = addrspacecast i16 addrspace(1)* %gptr to i16 addrspace(4)*
  %fload = load i16, i16 addrspace(4)* %fptr, align 4
  %ext = zext i16 %fload to i32
  store i32 %ext, i32 addrspace(1)* %out, align 4
  ret void
}














define void @store_flat_scratch(i32 addrspace(1)* noalias %out, i32) #0 {
  %alloca = alloca i32, i32 9, align 4
  %x = call i32 @llvm.r600.read.tidig.x() #3
  %pptr = getelementptr i32, i32* %alloca, i32 %x
  %fptr = addrspacecast i32* %pptr to i32 addrspace(4)*
  store i32 %x, i32 addrspace(4)* %fptr
  
  call void @llvm.AMDGPU.barrier.local() #1
  %reload = load i32, i32 addrspace(4)* %fptr, align 4
  store i32 %reload, i32 addrspace(1)* %out, align 4
  ret void
}

declare void @llvm.AMDGPU.barrier.local() #1
declare i32 @llvm.r600.read.tidig.x() #3

attributes #0 = { nounwind }
attributes #1 = { nounwind noduplicate }
attributes #3 = { nounwind readnone }
