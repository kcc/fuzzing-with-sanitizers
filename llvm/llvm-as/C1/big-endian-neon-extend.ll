

define void @vector_ext_2i8_to_2i64( <2 x i8>* %loadaddr, <2 x i64>* %storeaddr ) {








  %1 = load <2 x i8>, <2 x i8>* %loadaddr
  %2 = zext <2 x i8> %1 to <2 x i64>
  store <2 x i64> %2, <2 x i64>* %storeaddr
  ret void
}

define void @vector_ext_2i16_to_2i64( <2 x i16>* %loadaddr, <2 x i64>* %storeaddr ) {







  %1 = load <2 x i16>, <2 x i16>* %loadaddr
  %2 = zext <2 x i16> %1 to <2 x i64>
  store <2 x i64> %2, <2 x i64>* %storeaddr
  ret void
}


define void @vector_ext_2i8_to_2i32( <2 x i8>* %loadaddr, <2 x i32>* %storeaddr ) {








  %1 = load <2 x i8>, <2 x i8>* %loadaddr
  %2 = zext <2 x i8> %1 to <2 x i32>
  store <2 x i32> %2, <2 x i32>* %storeaddr
  ret void
}

define void @vector_ext_2i16_to_2i32( <2 x i16>* %loadaddr, <2 x i32>* %storeaddr ) {







  %1 = load <2 x i16>, <2 x i16>* %loadaddr
  %2 = zext <2 x i16> %1 to <2 x i32>
  store <2 x i32> %2, <2 x i32>* %storeaddr
  ret void
}

define void @vector_ext_2i8_to_2i16( <2 x i8>* %loadaddr, <2 x i16>* %storeaddr ) {










  %1 = load <2 x i8>, <2 x i8>* %loadaddr
  %2 = zext <2 x i8> %1 to <2 x i16>
  store <2 x i16> %2, <2 x i16>* %storeaddr
  ret void
}

define void @vector_ext_4i8_to_4i32( <4 x i8>* %loadaddr, <4 x i32>* %storeaddr ) {








  %1 = load <4 x i8>, <4 x i8>* %loadaddr
  %2 = zext <4 x i8> %1 to <4 x i32>
  store <4 x i32> %2, <4 x i32>* %storeaddr
  ret void
}

define void @vector_ext_4i8_to_4i16( <4 x i8>* %loadaddr, <4 x i16>* %storeaddr ) {







  %1 = load <4 x i8>, <4 x i8>* %loadaddr
  %2 = zext <4 x i8> %1 to <4 x i16>
  store <4 x i16> %2, <4 x i16>* %storeaddr
  ret void
}
