


declare void @llvm.memcpy.p3i8.p3i8.i32(i8 addrspace(3)* nocapture, i8 addrspace(3)* nocapture, i32, i32, i1) nounwind
declare void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* nocapture, i8 addrspace(1)* nocapture, i64, i32, i1) nounwind












































































define void @test_small_memcpy_i64_lds_to_lds_align1(i64 addrspace(3)* noalias %out, i64 addrspace(3)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(3)* %in to i8 addrspace(3)*
  %bcout = bitcast i64 addrspace(3)* %out to i8 addrspace(3)*
  call void @llvm.memcpy.p3i8.p3i8.i32(i8 addrspace(3)* %bcout, i8 addrspace(3)* %bcin, i32 32, i32 1, i1 false) nounwind
  ret void
}







































define void @test_small_memcpy_i64_lds_to_lds_align2(i64 addrspace(3)* noalias %out, i64 addrspace(3)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(3)* %in to i8 addrspace(3)*
  %bcout = bitcast i64 addrspace(3)* %out to i8 addrspace(3)*
  call void @llvm.memcpy.p3i8.p3i8.i32(i8 addrspace(3)* %bcout, i8 addrspace(3)* %bcin, i32 32, i32 2, i1 false) nounwind
  ret void
}






























define void @test_small_memcpy_i64_lds_to_lds_align4(i64 addrspace(3)* noalias %out, i64 addrspace(3)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(3)* %in to i8 addrspace(3)*
  %bcout = bitcast i64 addrspace(3)* %out to i8 addrspace(3)*
  call void @llvm.memcpy.p3i8.p3i8.i32(i8 addrspace(3)* %bcout, i8 addrspace(3)* %bcin, i32 32, i32 4, i1 false) nounwind
  ret void
}
































define void @test_small_memcpy_i64_lds_to_lds_align8(i64 addrspace(3)* noalias %out, i64 addrspace(3)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(3)* %in to i8 addrspace(3)*
  %bcout = bitcast i64 addrspace(3)* %out to i8 addrspace(3)*
  call void @llvm.memcpy.p3i8.p3i8.i32(i8 addrspace(3)* %bcout, i8 addrspace(3)* %bcin, i32 32, i32 8, i1 false) nounwind
  ret void
}







































































define void @test_small_memcpy_i64_global_to_global_align1(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(1)* %in to i8 addrspace(1)*
  %bcout = bitcast i64 addrspace(1)* %out to i8 addrspace(1)*
  call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* %bcout, i8 addrspace(1)* %bcin, i64 32, i32 1, i1 false) nounwind
  ret void
}





































define void @test_small_memcpy_i64_global_to_global_align2(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(1)* %in to i8 addrspace(1)*
  %bcout = bitcast i64 addrspace(1)* %out to i8 addrspace(1)*
  call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* %bcout, i8 addrspace(1)* %bcin, i64 32, i32 2, i1 false) nounwind
  ret void
}







define void @test_small_memcpy_i64_global_to_global_align4(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(1)* %in to i8 addrspace(1)*
  %bcout = bitcast i64 addrspace(1)* %out to i8 addrspace(1)*
  call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* %bcout, i8 addrspace(1)* %bcin, i64 32, i32 4, i1 false) nounwind
  ret void
}







define void @test_small_memcpy_i64_global_to_global_align8(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(1)* %in to i8 addrspace(1)*
  %bcout = bitcast i64 addrspace(1)* %out to i8 addrspace(1)*
  call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* %bcout, i8 addrspace(1)* %bcin, i64 32, i32 8, i1 false) nounwind
  ret void
}







define void @test_small_memcpy_i64_global_to_global_align16(i64 addrspace(1)* noalias %out, i64 addrspace(1)* noalias %in) nounwind {
  %bcin = bitcast i64 addrspace(1)* %in to i8 addrspace(1)*
  %bcout = bitcast i64 addrspace(1)* %out to i8 addrspace(1)*
  call void @llvm.memcpy.p1i8.p1i8.i64(i8 addrspace(1)* %bcout, i8 addrspace(1)* %bcin, i64 32, i32 16, i1 false) nounwind
  ret void
}
