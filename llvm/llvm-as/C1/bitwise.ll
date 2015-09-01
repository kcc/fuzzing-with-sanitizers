


define void @and_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = and <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @and_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = and <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @and_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = and <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @and_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = and <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @and_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = and <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @and_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = and <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @and_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = and <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @and_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = and <2 x i64> %1, <i64 1, i64 1>
  
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @or_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = or <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @or_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = or <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @or_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = or <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @or_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = or <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @or_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = or <16 x i8> %1, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @or_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = or <8 x i16> %1, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @or_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = or <4 x i32> %1, <i32 3, i32 3, i32 3, i32 3>
  
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @or_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = or <2 x i64> %1, <i64 3, i64 3>
  
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @nor_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = or <16 x i8> %1, %2
  %4 = xor <16 x i8> %3, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @nor_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = or <8 x i16> %1, %2
  %4 = xor <8 x i16> %3, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @nor_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = or <4 x i32> %1, %2
  %4 = xor <4 x i32> %3, <i32 -1, i32 -1, i32 -1, i32 -1>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @nor_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = or <2 x i64> %1, %2
  %4 = xor <2 x i64> %3, <i64 -1, i64 -1>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @nor_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = or <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = xor <16 x i8> %2, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @nor_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = or <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = xor <8 x i16> %2, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @nor_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = or <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = xor <4 x i32> %2, <i32 -1, i32 -1, i32 -1, i32 -1>
  
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @nor_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = or <2 x i64> %1, <i64 1, i64 1>
  %3 = xor <2 x i64> %2, <i64 -1, i64 -1>
  
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @xor_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = xor <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @xor_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = xor <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @xor_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = xor <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @xor_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = xor <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @xor_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = xor <16 x i8> %1, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @xor_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = xor <8 x i16> %1, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3>
  
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @xor_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = xor <4 x i32> %1, <i32 3, i32 3, i32 3, i32 3>
  
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @xor_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = xor <2 x i64> %1, <i64 3, i64 3>
  
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @sll_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shl <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @sll_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shl <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @sll_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shl <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @sll_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shl <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @sll_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = shl <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @sll_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = shl <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @sll_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = shl <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @sll_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = shl <2 x i64> %1, <i64 1, i64 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @sra_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = ashr <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @sra_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = ashr <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @sra_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = ashr <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @sra_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = ashr <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @sra_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = ashr <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @sra_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = ashr <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @sra_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = ashr <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @sra_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = ashr <2 x i64> %1, <i64 1, i64 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @srl_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = lshr <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @srl_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = lshr <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @srl_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = lshr <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @srl_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = lshr <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @srl_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = lshr <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @srl_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = lshr <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @srl_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = lshr <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @srl_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = lshr <2 x i64> %1, <i64 1, i64 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @ctpop_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = tail call <16 x i8> @llvm.ctpop.v16i8 (<16 x i8> %1)
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @ctpop_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = tail call <8 x i16> @llvm.ctpop.v8i16 (<8 x i16> %1)
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @ctpop_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = tail call <4 x i32> @llvm.ctpop.v4i32 (<4 x i32> %1)
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @ctpop_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = tail call <2 x i64> @llvm.ctpop.v2i64 (<2 x i64> %1)
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @ctlz_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = tail call <16 x i8> @llvm.ctlz.v16i8 (<16 x i8> %1)
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @ctlz_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = tail call <8 x i16> @llvm.ctlz.v8i16 (<8 x i16> %1)
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @ctlz_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = tail call <4 x i32> @llvm.ctlz.v4i32 (<4 x i32> %1)
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @ctlz_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = tail call <2 x i64> @llvm.ctlz.v2i64 (<2 x i64> %1)
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @bsel_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b, <16 x i8>* %m) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = load <16 x i8>, <16 x i8>* %m
  
  %4 = xor <16 x i8> %3, <i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1>
  %5 = and <16 x i8> %1, %3
  %6 = and <16 x i8> %2, %4
  %7 = or <16 x i8> %5, %6
  
  
  
  store <16 x i8> %7, <16 x i8>* %c
  

  ret void
  
}

define void @bsel_v16i8_i(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %m) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %m
  
  %3 = xor <16 x i8> %2, <i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1,
                          i8 -1, i8 -1, i8 -1, i8 -1>
  %4 = and <16 x i8> %1, %3
  %5 = and <16 x i8> <i8 6, i8 6, i8 6, i8 6,
                      i8 6, i8 6, i8 6, i8 6,
                      i8 6, i8 6, i8 6, i8 6,
                      i8 6, i8 6, i8 6, i8 6>, %2
  %6 = or <16 x i8> %4, %5
  
  store <16 x i8> %6, <16 x i8>* %c
  

  ret void
  
}

define void @bsel_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = and <8 x i16> %1, <i16 6, i16 6, i16 6, i16 6,
                          i16 6, i16 6, i16 6, i16 6>
  %4 = and <8 x i16> %2, <i16 65529, i16 65529, i16 65529, i16 65529,
                          i16 65529, i16 65529, i16 65529, i16 65529>
  %5 = or <8 x i16> %3, %4
  
  
  store <8 x i16> %5, <8 x i16>* %c
  

  ret void
  
}

define void @bsel_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = and <4 x i32> %1, <i32 6, i32 6, i32 6, i32 6>
  %4 = and <4 x i32> %2, <i32 4294967289, i32 4294967289, i32 4294967289, i32 4294967289>
  %5 = or <4 x i32> %3, %4
  
  
  store <4 x i32> %5, <4 x i32>* %c
  

  ret void
  
}

define void @bsel_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = and <2 x i64> %1, <i64 6, i64 6>
  %4 = and <2 x i64> %2, <i64 18446744073709551609, i64 18446744073709551609>
  %5 = or <2 x i64> %3, %4
  
  
  store <2 x i64> %5, <2 x i64>* %c
  

  ret void
  
}

define void @binsl_v16i8_i(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = and <16 x i8> %1, <i8 192, i8 192, i8 192, i8 192,
                          i8 192, i8 192, i8 192, i8 192,
                          i8 192, i8 192, i8 192, i8 192,
                          i8 192, i8 192, i8 192, i8 192>
  %4 = and <16 x i8> %2, <i8 63, i8 63, i8 63, i8 63,
                          i8 63, i8 63, i8 63, i8 63,
                          i8 63, i8 63, i8 63, i8 63,
                          i8 63, i8 63, i8 63, i8 63>
  %5 = or <16 x i8> %3, %4
  
  store <16 x i8> %5, <16 x i8>* %c
  

  ret void
  
}

define void @binsl_v8i16_i(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = and <8 x i16> %1, <i16 49152, i16 49152, i16 49152, i16 49152,
                          i16 49152, i16 49152, i16 49152, i16 49152>
  %4 = and <8 x i16> %2, <i16 16383, i16 16383, i16 16383, i16 16383,
                          i16 16383, i16 16383, i16 16383, i16 16383>
  %5 = or <8 x i16> %3, %4
  
  store <8 x i16> %5, <8 x i16>* %c
  

  ret void
  
}

define void @binsl_v4i32_i(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = and <4 x i32> %1, <i32 3221225472, i32 3221225472, i32 3221225472, i32 3221225472>
  %4 = and <4 x i32> %2, <i32 1073741823, i32 1073741823, i32 1073741823, i32 1073741823>
  %5 = or <4 x i32> %3, %4
  
  store <4 x i32> %5, <4 x i32>* %c
  

  ret void
  
}

define void @binsl_v2i64_i(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = and <2 x i64> %1, <i64 18446744073709551608, i64 18446744073709551608>
  %4 = and <2 x i64> %2, <i64 7, i64 7>
  %5 = or <2 x i64> %3, %4
  
  
  
  
  
  store <2 x i64> %5, <2 x i64>* %c
  

  ret void
  
}

define void @binsr_v16i8_i(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = and <16 x i8> %1, <i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3,
                          i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3, i8 3>
  %4 = and <16 x i8> %2, <i8 252, i8 252, i8 252, i8 252,
                          i8 252, i8 252, i8 252, i8 252,
                          i8 252, i8 252, i8 252, i8 252,
                          i8 252, i8 252, i8 252, i8 252>
  %5 = or <16 x i8> %3, %4
  
  store <16 x i8> %5, <16 x i8>* %c
  

  ret void
  
}

define void @binsr_v8i16_i(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = and <8 x i16> %1, <i16 3, i16 3, i16 3, i16 3,
                          i16 3, i16 3, i16 3, i16 3>
  %4 = and <8 x i16> %2, <i16 65532, i16 65532, i16 65532, i16 65532,
                          i16 65532, i16 65532, i16 65532, i16 65532>
  %5 = or <8 x i16> %3, %4
  
  store <8 x i16> %5, <8 x i16>* %c
  

  ret void
  
}

define void @binsr_v4i32_i(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = and <4 x i32> %1, <i32 3, i32 3, i32 3, i32 3>
  %4 = and <4 x i32> %2, <i32 4294967292, i32 4294967292, i32 4294967292, i32 4294967292>
  %5 = or <4 x i32> %3, %4
  
  store <4 x i32> %5, <4 x i32>* %c
  

  ret void
  
}

define void @binsr_v2i64_i(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = and <2 x i64> %1, <i64 3, i64 3>
  %4 = and <2 x i64> %2, <i64 18446744073709551612, i64 18446744073709551612>
  %5 = or <2 x i64> %3, %4
  
  store <2 x i64> %5, <2 x i64>* %c
  

  ret void
  
}

define void @bclr_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shl <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, %2
  %4 = xor <16 x i8> %3, <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %5 = and <16 x i8> %1, %4
  
  store <16 x i8> %5, <16 x i8>* %c
  

  ret void
  
}

define void @bclr_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shl <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, %2
  %4 = xor <8 x i16> %3, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %5 = and <8 x i16> %1, %4
  
  store <8 x i16> %5, <8 x i16>* %c
  

  ret void
  
}

define void @bclr_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %2
  %4 = xor <4 x i32> %3, <i32 -1, i32 -1, i32 -1, i32 -1>
  %5 = and <4 x i32> %1, %4
  
  store <4 x i32> %5, <4 x i32>* %c
  

  ret void
  
}

define void @bclr_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shl <2 x i64> <i64 1, i64 1>, %2
  %4 = xor <2 x i64> %3, <i64 -1, i64 -1>
  %5 = and <2 x i64> %1, %4
  
  store <2 x i64> %5, <2 x i64>* %c
  

  ret void
  
}

define void @bset_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shl <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, %2
  %4 = or <16 x i8> %1, %3
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @bset_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shl <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, %2
  %4 = or <8 x i16> %1, %3
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @bset_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %2
  %4 = or <4 x i32> %1, %3
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @bset_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shl <2 x i64> <i64 1, i64 1>, %2
  %4 = or <2 x i64> %1, %3
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @bneg_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = shl <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, %2
  %4 = xor <16 x i8> %1, %3
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @bneg_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = shl <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, %2
  %4 = xor <8 x i16> %1, %3
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @bneg_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = shl <4 x i32> <i32 1, i32 1, i32 1, i32 1>, %2
  %4 = xor <4 x i32> %1, %3
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @bneg_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = shl <2 x i64> <i64 1, i64 1>, %2
  %4 = xor <2 x i64> %1, %3
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @bclri_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = xor <16 x i8> <i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8, i8  8>,
                     <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
  %3 = and <16 x i8> %1, %2
  
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @bclri_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = xor <8 x i16> <i16  8, i16  8, i16  8, i16  8, i16  8, i16  8, i16  8, i16  8>,
                     <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
  %3 = and <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @bclri_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = xor <4 x i32> <i32  8, i32  8, i32  8, i32  8>,
                     <i32 -1, i32 -1, i32 -1, i32 -1>
  %3 = and <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @bclri_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = xor <2 x i64> <i64  8, i64  8>,
                     <i64 -1, i64 -1>
  %3 = and <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @bseti_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = or <16 x i8> %1, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @bseti_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = or <8 x i16> %1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @bseti_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = or <4 x i32> %1, <i32 8, i32 8, i32 8, i32 8>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @bseti_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = or <2 x i64> %1, <i64 8, i64 8>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @bnegi_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = xor <16 x i8> %1, <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @bnegi_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = xor <8 x i16> %1, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @bnegi_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = xor <4 x i32> %1, <i32 8, i32 8, i32 8, i32 8>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @bnegi_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = xor <2 x i64> %1, <i64 8, i64 8>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

declare <16 x i8> @llvm.ctpop.v16i8(<16 x i8> %val)
declare <8 x i16> @llvm.ctpop.v8i16(<8 x i16> %val)
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %val)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %val)
declare <16 x i8> @llvm.ctlz.v16i8(<16 x i8> %val)
declare <8 x i16> @llvm.ctlz.v8i16(<8 x i16> %val)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %val)
declare <2 x i64> @llvm.ctlz.v2i64(<2 x i64> %val)
