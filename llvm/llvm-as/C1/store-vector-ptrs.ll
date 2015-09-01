






define void @store_vector_ptrs(<4 x i32*>* %out, <4 x [1024 x i32]*> %array) nounwind {
  %p = getelementptr [1024 x i32], <4 x [1024 x i32]*> %array, <4 x i16> zeroinitializer, <4 x i16> <i16 16, i16 16, i16 16, i16 16>
  store <4 x i32*> %p, <4 x i32*>* %out
  ret void
}
