


define void @loadstore_v16i8_near() nounwind {
  

  %1 = alloca <16 x i8>
  %2 = load volatile <16 x i8>, <16 x i8>* %1
  
  store volatile <16 x i8> %2, <16 x i8>* %1
  

  ret void
  
}

define void @loadstore_v16i8_just_under_simm10() nounwind {
  

  %1 = alloca <16 x i8>
  %2 = alloca [496 x i8] 

  %3 = load volatile <16 x i8>, <16 x i8>* %1
  
  store volatile <16 x i8> %3, <16 x i8>* %1
  

  ret void
  
}

define void @loadstore_v16i8_just_over_simm10() nounwind {
  

  %1 = alloca <16 x i8>
  %2 = alloca [497 x i8] 

  %3 = load volatile <16 x i8>, <16 x i8>* %1
  
  
  store volatile <16 x i8> %3, <16 x i8>* %1
  
  

  ret void
  
}

define void @loadstore_v16i8_just_under_simm16() nounwind {
  

  %1 = alloca <16 x i8>
  %2 = alloca [32752 x i8] 

  %3 = load volatile <16 x i8>, <16 x i8>* %1
  
  
  
  store volatile <16 x i8> %3, <16 x i8>* %1
  
  
  

  ret void
  
}

define void @loadstore_v16i8_just_over_simm16() nounwind {
  

  %1 = alloca <16 x i8>
  %2 = alloca [32753 x i8] 

  %3 = load volatile <16 x i8>, <16 x i8>* %1
  
  
  
  store volatile <16 x i8> %3, <16 x i8>* %1
  
  
  

  ret void
  
}

define void @loadstore_v8i16_near() nounwind {
  

  %1 = alloca <8 x i16>
  %2 = load volatile <8 x i16>, <8 x i16>* %1
  
  store volatile <8 x i16> %2, <8 x i16>* %1
  

  ret void
  
}

define void @loadstore_v8i16_unaligned() nounwind {
  

  %1 = alloca [2 x <8 x i16>]
  %2 = bitcast [2 x <8 x i16>]* %1 to i8*
  %3 = getelementptr i8, i8* %2, i32 1
  %4 = bitcast i8* %3 to [2 x <8 x i16>]*
  %5 = getelementptr [2 x <8 x i16>], [2 x <8 x i16>]* %4, i32 0, i32 0

  %6 = load volatile <8 x i16>, <8 x i16>* %5
  
  
  store volatile <8 x i16> %6, <8 x i16>* %5
  
  

  ret void
  
}

define void @loadstore_v8i16_just_under_simm10() nounwind {
  

  %1 = alloca <8 x i16>
  %2 = alloca [1008 x i8] 

  %3 = load volatile <8 x i16>, <8 x i16>* %1
  
  store volatile <8 x i16> %3, <8 x i16>* %1
  

  ret void
  
}

define void @loadstore_v8i16_just_over_simm10() nounwind {
  

  %1 = alloca <8 x i16>
  %2 = alloca [1009 x i8] 

  %3 = load volatile <8 x i16>, <8 x i16>* %1
  
  
  store volatile <8 x i16> %3, <8 x i16>* %1
  
  

  ret void
  
}

define void @loadstore_v8i16_just_under_simm16() nounwind {
  

  %1 = alloca <8 x i16>
  %2 = alloca [32752 x i8] 

  %3 = load volatile <8 x i16>, <8 x i16>* %1
  
  
  
  store volatile <8 x i16> %3, <8 x i16>* %1
  
  
  

  ret void
  
}

define void @loadstore_v8i16_just_over_simm16() nounwind {
  

  %1 = alloca <8 x i16>
  %2 = alloca [32753 x i8] 

  %3 = load volatile <8 x i16>, <8 x i16>* %1
  
  
  
  store volatile <8 x i16> %3, <8 x i16>* %1
  
  
  

  ret void
  
}

define void @loadstore_v4i32_near() nounwind {
  

  %1 = alloca <4 x i32>
  %2 = load volatile <4 x i32>, <4 x i32>* %1
  
  store volatile <4 x i32> %2, <4 x i32>* %1
  

  ret void
  
}

define void @loadstore_v4i32_unaligned() nounwind {
  

  %1 = alloca [2 x <4 x i32>]
  %2 = bitcast [2 x <4 x i32>]* %1 to i8*
  %3 = getelementptr i8, i8* %2, i32 1
  %4 = bitcast i8* %3 to [2 x <4 x i32>]*
  %5 = getelementptr [2 x <4 x i32>], [2 x <4 x i32>]* %4, i32 0, i32 0

  %6 = load volatile <4 x i32>, <4 x i32>* %5
  
  
  store volatile <4 x i32> %6, <4 x i32>* %5
  
  

  ret void
  
}

define void @loadstore_v4i32_just_under_simm10() nounwind {
  

  %1 = alloca <4 x i32>
  %2 = alloca [2032 x i8] 

  %3 = load volatile <4 x i32>, <4 x i32>* %1
  
  store volatile <4 x i32> %3, <4 x i32>* %1
  

  ret void
  
}

define void @loadstore_v4i32_just_over_simm10() nounwind {
  

  %1 = alloca <4 x i32>
  %2 = alloca [2033 x i8] 

  %3 = load volatile <4 x i32>, <4 x i32>* %1
  
  
  store volatile <4 x i32> %3, <4 x i32>* %1
  
  

  ret void
  
}

define void @loadstore_v4i32_just_under_simm16() nounwind {
  

  %1 = alloca <4 x i32>
  %2 = alloca [32752 x i8] 

  %3 = load volatile <4 x i32>, <4 x i32>* %1
  
  
  
  store volatile <4 x i32> %3, <4 x i32>* %1
  
  
  

  ret void
  
}

define void @loadstore_v4i32_just_over_simm16() nounwind {
  

  %1 = alloca <4 x i32>
  %2 = alloca [32753 x i8] 

  %3 = load volatile <4 x i32>, <4 x i32>* %1
  
  
  
  store volatile <4 x i32> %3, <4 x i32>* %1
  
  
  

  ret void
  
}

define void @loadstore_v2i64_near() nounwind {
  

  %1 = alloca <2 x i64>
  %2 = load volatile <2 x i64>, <2 x i64>* %1
  
  store volatile <2 x i64> %2, <2 x i64>* %1
  

  ret void
  
}

define void @loadstore_v2i64_unaligned() nounwind {
  

  %1 = alloca [2 x <2 x i64>]
  %2 = bitcast [2 x <2 x i64>]* %1 to i8*
  %3 = getelementptr i8, i8* %2, i32 1
  %4 = bitcast i8* %3 to [2 x <2 x i64>]*
  %5 = getelementptr [2 x <2 x i64>], [2 x <2 x i64>]* %4, i32 0, i32 0

  %6 = load volatile <2 x i64>, <2 x i64>* %5
  
  
  store volatile <2 x i64> %6, <2 x i64>* %5
  
  

  ret void
  
}

define void @loadstore_v2i64_just_under_simm10() nounwind {
  

  %1 = alloca <2 x i64>
  %2 = alloca [4080 x i8] 

  %3 = load volatile <2 x i64>, <2 x i64>* %1
  
  store volatile <2 x i64> %3, <2 x i64>* %1
  

  ret void
  
}

define void @loadstore_v2i64_just_over_simm10() nounwind {
  

  %1 = alloca <2 x i64>
  %2 = alloca [4081 x i8] 

  %3 = load volatile <2 x i64>, <2 x i64>* %1
  
  
  store volatile <2 x i64> %3, <2 x i64>* %1
  
  

  ret void
  
}

define void @loadstore_v2i64_just_under_simm16() nounwind {
  

  %1 = alloca <2 x i64>
  %2 = alloca [32752 x i8] 

  %3 = load volatile <2 x i64>, <2 x i64>* %1
  
  
  
  store volatile <2 x i64> %3, <2 x i64>* %1
  
  
  

  ret void
  
}

define void @loadstore_v2i64_just_over_simm16() nounwind {
  

  %1 = alloca <2 x i64>
  %2 = alloca [32753 x i8] 

  %3 = load volatile <2 x i64>, <2 x i64>* %1
  
  
  
  store volatile <2 x i64> %3, <2 x i64>* %1
  
  
  

  ret void
  
}
