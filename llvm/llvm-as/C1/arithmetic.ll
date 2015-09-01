


define void @add_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = add <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @add_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = add <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @add_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = add <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @add_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = add <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @add_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = add <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1,
                          i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @add_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = add <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1,
                          i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @add_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = add <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @add_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = add <2 x i64> %1, <i64 1, i64 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @sub_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = sub <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @sub_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = sub <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @sub_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = sub <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @sub_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = sub <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @sub_v16i8_i(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = sub <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1,
                          i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %2, <16 x i8>* %c
  

  ret void
  
}

define void @sub_v8i16_i(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = sub <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1,
                          i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %2, <8 x i16>* %c
  

  ret void
  
}

define void @sub_v4i32_i(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = sub <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %2, <4 x i32>* %c
  

  ret void
  
}

define void @sub_v2i64_i(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = sub <2 x i64> %1, <i64 1, i64 1>
  
  store <2 x i64> %2, <2 x i64>* %c
  

  ret void
  
}

define void @mul_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = mul <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mul_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = mul <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mul_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = mul <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mul_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = mul <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @maddv_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                         <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = load <16 x i8>, <16 x i8>* %c
  
  %4 = mul <16 x i8> %2, %3
  %5 = add <16 x i8> %4, %1
  
  store <16 x i8> %5, <16 x i8>* %d
  

  ret void
  
}

define void @maddv_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                         <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = load <8 x i16>, <8 x i16>* %c
  
  %4 = mul <8 x i16> %2, %3
  %5 = add <8 x i16> %4, %1
  
  store <8 x i16> %5, <8 x i16>* %d
  

  ret void
  
}

define void @maddv_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                         <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = load <4 x i32>, <4 x i32>* %c
  
  %4 = mul <4 x i32> %2, %3
  %5 = add <4 x i32> %4, %1
  
  store <4 x i32> %5, <4 x i32>* %d
  

  ret void
  
}

define void @maddv_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                         <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = load <2 x i64>, <2 x i64>* %c
  
  %4 = mul <2 x i64> %2, %3
  %5 = add <2 x i64> %4, %1
  
  store <2 x i64> %5, <2 x i64>* %d
  

  ret void
  
}

define void @msubv_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                         <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = load <16 x i8>, <16 x i8>* %c
  
  %4 = mul <16 x i8> %2, %3
  %5 = sub <16 x i8> %1, %4
  
  store <16 x i8> %5, <16 x i8>* %d
  

  ret void
  
}

define void @msubv_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                         <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = load <8 x i16>, <8 x i16>* %c
  
  %4 = mul <8 x i16> %2, %3
  %5 = sub <8 x i16> %1, %4
  
  store <8 x i16> %5, <8 x i16>* %d
  

  ret void
  
}

define void @msubv_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                         <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = load <4 x i32>, <4 x i32>* %c
  
  %4 = mul <4 x i32> %2, %3
  %5 = sub <4 x i32> %1, %4
  
  store <4 x i32> %5, <4 x i32>* %d
  

  ret void
  
}

define void @msubv_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                         <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = load <2 x i64>, <2 x i64>* %c
  
  %4 = mul <2 x i64> %2, %3
  %5 = sub <2 x i64> %1, %4
  
  store <2 x i64> %5, <2 x i64>* %d
  

  ret void
  
}

define void @div_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = sdiv <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @div_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = sdiv <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @div_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = sdiv <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @div_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = sdiv <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @div_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = udiv <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @div_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = udiv <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @div_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = udiv <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @div_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = udiv <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @mod_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = srem <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mod_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = srem <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mod_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = srem <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mod_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = srem <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @mod_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = urem <16 x i8> %1, %2
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mod_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = urem <8 x i16> %1, %2
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mod_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = urem <4 x i32> %1, %2
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mod_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = urem <2 x i64> %1, %2
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}
