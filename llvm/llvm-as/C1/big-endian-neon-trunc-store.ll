

define void @vector_trunc_store_2i64_to_2i16( <2 x i64>* %loadaddr, <2 x i16>* %storeaddr ) {





  %1 = load <2 x i64>, <2 x i64>* %loadaddr
  %2 = trunc <2 x i64> %1 to <2 x i16>
  store <2 x i16> %2, <2 x i16>* %storeaddr
  ret void
}

define void @vector_trunc_store_4i32_to_4i8( <4 x i32>* %loadaddr, <4 x i8>* %storeaddr ) {





  %1 = load <4 x i32>, <4 x i32>* %loadaddr
  %2 = trunc <4 x i32> %1 to <4 x i8>
  store <4 x i8> %2, <4 x i8>* %storeaddr
  ret void
}

