











define void @scalar_to_vector_v2i32(<4 x i16> addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %tmp1 = load i32, i32 addrspace(1)* %in, align 4
  %bc = bitcast i32 %tmp1 to <2 x i16>
  %tmp2 = shufflevector <2 x i16> %bc, <2 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %tmp2, <4 x i16> addrspace(1)* %out, align 8
  ret void
}









define void @scalar_to_vector_v2f32(<4 x i16> addrspace(1)* %out, float addrspace(1)* %in) nounwind {
  %tmp1 = load float, float addrspace(1)* %in, align 4
  %bc = bitcast float %tmp1 to <2 x i16>
  %tmp2 = shufflevector <2 x i16> %bc, <2 x i16> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x i16> %tmp2, <4 x i16> addrspace(1)* %out, align 8
  ret void
}














































