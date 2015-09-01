






@v4i8 = global <4 x i8> <i8 0, i8 0, i8 0, i8 0>
@v16i8 = global <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
@v8i16 = global <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
@v4i32 = global <4 x i32> <i32 0, i32 0, i32 0, i32 0>
@v2i64 = global <2 x i64> <i64 0, i64 0>
@i32 = global i32 0
@i64 = global i64 0

define void @const_v16i8() nounwind {
  

  store volatile <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8>*@v16i8
  

  store volatile <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8>*@v16i8
  

  store volatile <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 31>, <16 x i8>*@v16i8
  
  
  
  

  store volatile <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6>, <16 x i8>*@v16i8
  
  
  
  

  store volatile <16 x i8> <i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0, i8 1, i8 0>, <16 x i8>*@v16i8
  
  

  store volatile <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 1, i8 2, i8 3, i8 4, i8 1, i8 2, i8 3, i8 4, i8 1, i8 2, i8 3, i8 4>, <16 x i8>*@v16i8
  
  
  
  
  

  store volatile <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, <16 x i8>*@v16i8
  
  
  
  

  ret void
}

define void @const_v8i16() nounwind {
  

  store volatile <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16>*@v8i16
  

  store volatile <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, <8 x i16>*@v8i16
  

  store volatile <8 x i16> <i16 1, i16 1, i16 1, i16 2, i16 1, i16 1, i16 1, i16 31>, <8 x i16>*@v8i16
  
  
  
  

  store volatile <8 x i16> <i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028, i16 1028>, <8 x i16>*@v8i16
  

  store volatile <8 x i16> <i16 1, i16 2, i16 1, i16 2, i16 1, i16 2, i16 1, i16 2>, <8 x i16>*@v8i16
  
  
  
  
  

  store volatile <8 x i16> <i16 1, i16 2, i16 3, i16 4, i16 1, i16 2, i16 3, i16 4>, <8 x i16>*@v8i16
  
  
  
  

  ret void
}

define void @const_v4i32() nounwind {
  

  store volatile <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32>*@v4i32
  

  store volatile <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>*@v4i32
  

  store volatile <4 x i32> <i32 1, i32 1, i32 1, i32 31>, <4 x i32>*@v4i32
  
  
  
  

  store volatile <4 x i32> <i32 16843009, i32 16843009, i32 16843009, i32 16843009>, <4 x i32>*@v4i32
  

  store volatile <4 x i32> <i32 65537, i32 65537, i32 65537, i32 65537>, <4 x i32>*@v4i32
  

  store volatile <4 x i32> <i32 1, i32 2, i32 1, i32 2>, <4 x i32>*@v4i32
  
  
  
  

  store volatile <4 x i32> <i32 3, i32 4, i32 5, i32 6>, <4 x i32>*@v4i32
  
  
  
  

  ret void
}

define void @const_v2i64() nounwind {
  

  store volatile <2 x i64> <i64 0, i64 0>, <2 x i64>*@v2i64
  

  store volatile <2 x i64> <i64 72340172838076673, i64 72340172838076673>, <2 x i64>*@v2i64
  

  store volatile <2 x i64> <i64 281479271743489, i64 281479271743489>, <2 x i64>*@v2i64
  

  store volatile <2 x i64> <i64 4294967297, i64 4294967297>, <2 x i64>*@v2i64
  

  store volatile <2 x i64> <i64 1, i64 1>, <2 x i64>*@v2i64
  

  store volatile <2 x i64> <i64 1, i64 31>, <2 x i64>*@v2i64
  
  
  
  
  

  store volatile <2 x i64> <i64 3, i64 4>, <2 x i64>*@v2i64
  
  
  
  
  

  ret void
}

define void @nonconst_v16i8(i8 signext %a, i8 signext %b, i8 signext %c, i8 signext %d, i8 signext %e, i8 signext %f, i8 signext %g, i8 signext %h) nounwind {
  

  %1 = insertelement <16 x i8> undef, i8 %a, i32 0
  %2 = insertelement <16 x i8> %1, i8 %b, i32 1
  %3 = insertelement <16 x i8> %2, i8 %c, i32 2
  %4 = insertelement <16 x i8> %3, i8 %d, i32 3
  %5 = insertelement <16 x i8> %4, i8 %e, i32 4
  %6 = insertelement <16 x i8> %5, i8 %f, i32 5
  %7 = insertelement <16 x i8> %6, i8 %g, i32 6
  %8 = insertelement <16 x i8> %7, i8 %h, i32 7
  %9 = insertelement <16 x i8> %8, i8 %h, i32 8
  %10 = insertelement <16 x i8> %9, i8 %h, i32 9
  %11 = insertelement <16 x i8> %10, i8 %h, i32 10
  %12 = insertelement <16 x i8> %11, i8 %h, i32 11
  %13 = insertelement <16 x i8> %12, i8 %h, i32 12
  %14 = insertelement <16 x i8> %13, i8 %h, i32 13
  %15 = insertelement <16 x i8> %14, i8 %h, i32 14
  %16 = insertelement <16 x i8> %15, i8 %h, i32 15
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  store volatile <16 x i8> %16, <16 x i8>*@v16i8

  ret void
}

define void @nonconst_v8i16(i16 signext %a, i16 signext %b, i16 signext %c, i16 signext %d, i16 signext %e, i16 signext %f, i16 signext %g, i16 signext %h) nounwind {
  

  %1 = insertelement <8 x i16> undef, i16 %a, i32 0
  %2 = insertelement <8 x i16> %1, i16 %b, i32 1
  %3 = insertelement <8 x i16> %2, i16 %c, i32 2
  %4 = insertelement <8 x i16> %3, i16 %d, i32 3
  %5 = insertelement <8 x i16> %4, i16 %e, i32 4
  %6 = insertelement <8 x i16> %5, i16 %f, i32 5
  %7 = insertelement <8 x i16> %6, i16 %g, i32 6
  %8 = insertelement <8 x i16> %7, i16 %h, i32 7
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  store volatile <8 x i16> %8, <8 x i16>*@v8i16

  ret void
}

define void @nonconst_v4i32(i32 signext %a, i32 signext %b, i32 signext %c, i32 signext %d) nounwind {
  

  %1 = insertelement <4 x i32> undef, i32 %a, i32 0
  %2 = insertelement <4 x i32> %1, i32 %b, i32 1
  %3 = insertelement <4 x i32> %2, i32 %c, i32 2
  %4 = insertelement <4 x i32> %3, i32 %d, i32 3
  
  
  
  

  store volatile <4 x i32> %4, <4 x i32>*@v4i32

  ret void
}

define void @nonconst_v2i64(i64 signext %a, i64 signext %b) nounwind {
  

  %1 = insertelement <2 x i64> undef, i64 %a, i32 0
  %2 = insertelement <2 x i64> %1, i64 %b, i32 1
  
  
  
  
  
  

  store volatile <2 x i64> %2, <2 x i64>*@v2i64

  ret void
}

define i32 @extract_sext_v16i8() nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  

  %2 = add <16 x i8> %1, %1
  

  %3 = extractelement <16 x i8> %2, i32 1
  %4 = sext i8 %3 to i32
  
  
  

  ret i32 %4
}

define i32 @extract_sext_v8i16() nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  

  %2 = add <8 x i16> %1, %1
  

  %3 = extractelement <8 x i16> %2, i32 1
  %4 = sext i16 %3 to i32
  
  
  

  ret i32 %4
}

define i32 @extract_sext_v4i32() nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  

  %2 = add <4 x i32> %1, %1
  

  %3 = extractelement <4 x i32> %2, i32 1
  

  ret i32 %3
}

define i64 @extract_sext_v2i64() nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  

  %2 = add <2 x i64> %1, %1
  

  %3 = extractelement <2 x i64> %2, i32 1
  
  
  
  
  

  ret i64 %3
}

define i32 @extract_zext_v16i8() nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  

  %2 = add <16 x i8> %1, %1
  

  %3 = extractelement <16 x i8> %2, i32 1
  %4 = zext i8 %3 to i32
  
  

  ret i32 %4
}

define i32 @extract_zext_v8i16() nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  

  %2 = add <8 x i16> %1, %1
  

  %3 = extractelement <8 x i16> %2, i32 1
  %4 = zext i16 %3 to i32
  
  

  ret i32 %4
}

define i32 @extract_zext_v4i32() nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  

  %2 = add <4 x i32> %1, %1
  

  %3 = extractelement <4 x i32> %2, i32 1
  

  ret i32 %3
}

define i64 @extract_zext_v2i64() nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  

  %2 = add <2 x i64> %1, %1
  

  %3 = extractelement <2 x i64> %2, i32 1
  
  
  
  

  ret i64 %3
}

define i32 @extract_sext_v16i8_vidx() nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  
  
  
  

  %2 = add <16 x i8> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <16 x i8> %2, i32 %3
  %5 = sext i8 %4 to i32
  
  
  

  ret i32 %5
}

define i32 @extract_sext_v8i16_vidx() nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  
  
  
  

  %2 = add <8 x i16> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <8 x i16> %2, i32 %3
  %5 = sext i16 %4 to i32
  
  
  

  ret i32 %5
}

define i32 @extract_sext_v4i32_vidx() nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  
  
  
  

  %2 = add <4 x i32> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <4 x i32> %2, i32 %3
  
  
  

  ret i32 %4
}

define i64 @extract_sext_v2i64_vidx() nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  
  
  
  

  %2 = add <2 x i64> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <2 x i64> %2, i32 %3
  
  
  
  
  
  
  

  ret i64 %4
}

define i32 @extract_zext_v16i8_vidx() nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  
  
  
  

  %2 = add <16 x i8> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <16 x i8> %2, i32 %3
  %5 = zext i8 %4 to i32
  
  
  

  ret i32 %5
}

define i32 @extract_zext_v8i16_vidx() nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  
  
  
  

  %2 = add <8 x i16> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <8 x i16> %2, i32 %3
  %5 = zext i16 %4 to i32
  
  
  

  ret i32 %5
}

define i32 @extract_zext_v4i32_vidx() nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  
  
  
  

  %2 = add <4 x i32> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <4 x i32> %2, i32 %3
  
  
  

  ret i32 %4
}

define i64 @extract_zext_v2i64_vidx() nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  
  
  
  

  %2 = add <2 x i64> %1, %1
  

  %3 = load i32, i32* @i32
  
  
  
  

  %4 = extractelement <2 x i64> %2, i32 %3
  
  
  
  
  
  
  

  ret i64 %4
}

define void @insert_v16i8(i32 signext %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  

  %a2 = trunc i32 %a to i8
  %a3 = sext i8 %a2 to i32
  %a4 = trunc i32 %a3 to i8
  
  

  %2 = insertelement <16 x i8> %1, i8 %a4, i32 1
  

  store <16 x i8> %2, <16 x i8>* @v16i8
  

  ret void
}

define void @insert_v8i16(i32 signext %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  

  %a2 = trunc i32 %a to i16
  %a3 = sext i16 %a2 to i32
  %a4 = trunc i32 %a3 to i16
  
  

  %2 = insertelement <8 x i16> %1, i16 %a4, i32 1
  

  store <8 x i16> %2, <8 x i16>* @v8i16
  

  ret void
}

define void @insert_v4i32(i32 signext %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  

  
  

  %2 = insertelement <4 x i32> %1, i32 %a, i32 1
  

  store <4 x i32> %2, <4 x i32>* @v4i32
  

  ret void
}

define void @insert_v2i64(i64 signext %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  
  

  
  

  %2 = insertelement <2 x i64> %1, i64 %a, i32 1
  
  
  

  store <2 x i64> %2, <2 x i64>* @v2i64
  
  

  ret void
}

define void @insert_v16i8_vidx(i32 signext %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* @v16i8
  

  %2 = load i32, i32* @i32
  
  
  
  

  %a2 = trunc i32 %a to i8
  %a3 = sext i8 %a2 to i32
  %a4 = trunc i32 %a3 to i8
  
  

  %3 = insertelement <16 x i8> %1, i8 %a4, i32 %2
  
  
  
  
  
  

  store <16 x i8> %3, <16 x i8>* @v16i8
  

  ret void
}

define void @insert_v8i16_vidx(i32 signext %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* @v8i16
  

  %2 = load i32, i32* @i32
  
  
  
  

  %a2 = trunc i32 %a to i16
  %a3 = sext i16 %a2 to i32
  %a4 = trunc i32 %a3 to i16
  
  

  %3 = insertelement <8 x i16> %1, i16 %a4, i32 %2
  
  
  
  
  
  
  

  store <8 x i16> %3, <8 x i16>* @v8i16
  

  ret void
}

define void @insert_v4i32_vidx(i32 signext %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* @v4i32
  

  %2 = load i32, i32* @i32
  
  
  
  

  
  

  %3 = insertelement <4 x i32> %1, i32 %a, i32 %2
  
  
  
  
  
  
  

  store <4 x i32> %3, <4 x i32>* @v4i32
  

  ret void
}

define void @insert_v2i64_vidx(i64 signext %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* @v2i64
  
  

  %2 = load i32, i32* @i32
  
  
  
  

  
  

  %3 = insertelement <2 x i64> %1, i64 %a, i32 %2
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  

  store <2 x i64> %3, <2 x i64>* @v2i64
  
  

  ret void
}

define void @truncstore() nounwind {
  

  store volatile <4 x i8> <i8 -1, i8 -1, i8 -1, i8 -1>, <4 x i8>*@v4i8
  

  ret void
}
