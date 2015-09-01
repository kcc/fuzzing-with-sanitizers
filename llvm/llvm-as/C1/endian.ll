


@v16i8 = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
@v8i16 = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
@v4i32 = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>
@v2i64 = global <2 x i64> <i64 0, i64 0>

define void @const_v16i8() nounwind {
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  store volatile <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, <16 x i8>*@v16i8

  ret void
}

define void @const_v8i16() nounwind {
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  store volatile <8 x i16> <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, <8 x i16>*@v8i16

  ret void
}

define void @const_v4i32() nounwind {
  
  
  
  
  
  
  
  
  
  

  store volatile <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32>*@v4i32

  ret void
}

define void @const_v2i64() nounwind {
  
  
  
  
  
  
  
  
  
  

  store volatile <2 x i64> <i64 1, i64 2>, <2 x i64>*@v2i64

  ret void
}
