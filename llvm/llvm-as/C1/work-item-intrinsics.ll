











define void @ngroups_x (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.ngroups.x() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @ngroups_y (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.ngroups.y() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @ngroups_z (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.ngroups.z() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @global_size_x (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.global.size.x() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @global_size_y (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.global.size.y() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @global_size_z (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.global.size.z() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @local_size_x (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.local.size.x() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @local_size_y (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.local.size.y() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @local_size_z (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.local.size.z() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}









define void @get_work_dim (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.AMDGPU.read.workdim() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}








define void @tgid_x (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tgid.x() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}




define void @tgid_y (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tgid.y() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}




define void @tgid_z (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tgid.z() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}



define void @tidig_x (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tidig.x() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}



define void @tidig_y (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tidig.y() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}



define void @tidig_z (i32 addrspace(1)* %out) {
entry:
  %0 = call i32 @llvm.r600.read.tidig.z() #0
  store i32 %0, i32 addrspace(1)* %out
  ret void
}

declare i32 @llvm.r600.read.ngroups.x() #0
declare i32 @llvm.r600.read.ngroups.y() #0
declare i32 @llvm.r600.read.ngroups.z() #0

declare i32 @llvm.r600.read.global.size.x() #0
declare i32 @llvm.r600.read.global.size.y() #0
declare i32 @llvm.r600.read.global.size.z() #0

declare i32 @llvm.r600.read.local.size.x() #0
declare i32 @llvm.r600.read.local.size.y() #0
declare i32 @llvm.r600.read.local.size.z() #0

declare i32 @llvm.r600.read.tgid.x() #0
declare i32 @llvm.r600.read.tgid.y() #0
declare i32 @llvm.r600.read.tgid.z() #0

declare i32 @llvm.r600.read.tidig.x() #0
declare i32 @llvm.r600.read.tidig.y() #0
declare i32 @llvm.r600.read.tidig.z() #0

declare i32 @llvm.AMDGPU.read.workdim() #0

attributes #0 = { readnone }
