



define void @use_gep_address_space([1024 x i32] addrspace(3)* %array) nounwind {



  %p = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* %array, i16 0, i16 16
  store i32 99, i32 addrspace(3)* %p
  ret void
}

define void @use_gep_address_space_large_offset([1024 x i32] addrspace(3)* %array) nounwind {






  %p = getelementptr [1024 x i32], [1024 x i32] addrspace(3)* %array, i16 0, i16 16384
  store i32 99, i32 addrspace(3)* %p
  ret void
}

define void @gep_as_vector_v4(<4 x [1024 x i32] addrspace(3)*> %array) nounwind {





  %p = getelementptr [1024 x i32], <4 x [1024 x i32] addrspace(3)*> %array, <4 x i16> zeroinitializer, <4 x i16> <i16 16, i16 16, i16 16, i16 16>
  %p0 = extractelement <4 x i32 addrspace(3)*> %p, i32 0
  %p1 = extractelement <4 x i32 addrspace(3)*> %p, i32 1
  %p2 = extractelement <4 x i32 addrspace(3)*> %p, i32 2
  %p3 = extractelement <4 x i32 addrspace(3)*> %p, i32 3
  store i32 99, i32 addrspace(3)* %p0
  store i32 99, i32 addrspace(3)* %p1
  store i32 99, i32 addrspace(3)* %p2
  store i32 99, i32 addrspace(3)* %p3
  ret void
}

define void @gep_as_vector_v2(<2 x [1024 x i32] addrspace(3)*> %array) nounwind {



  %p = getelementptr [1024 x i32], <2 x [1024 x i32] addrspace(3)*> %array, <2 x i16> zeroinitializer, <2 x i16> <i16 16, i16 16>
  %p0 = extractelement <2 x i32 addrspace(3)*> %p, i32 0
  %p1 = extractelement <2 x i32 addrspace(3)*> %p, i32 1
  store i32 99, i32 addrspace(3)* %p0
  store i32 99, i32 addrspace(3)* %p1
  ret void
}

