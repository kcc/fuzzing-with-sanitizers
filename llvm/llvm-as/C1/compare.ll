


define void @ceq_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp eq <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @ceq_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp eq <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @ceq_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp eq <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @ceq_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp eq <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @cle_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sle <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @cle_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp sle <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @cle_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp sle <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @cle_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp sle <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @cle_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ule <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @cle_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ule <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @cle_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ule <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @cle_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ule <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @clt_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp slt <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @clt_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp slt <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @clt_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp slt <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @clt_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp slt <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @clt_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ult <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @clt_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ult <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @clt_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ult <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @clt_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ult <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}



define void @cne_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  
  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ne <16 x i8> %1, %2
  %4 = sext <16 x i1> %3 to <16 x i8>
  
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}



define void @cne_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ne <8 x i16> %1, %2
  %4 = sext <8 x i1> %3 to <8 x i16>
  
  
  
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}



define void @cne_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ne <4 x i32> %1, %2
  %4 = sext <4 x i1> %3 to <4 x i32>
  
  
  
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}



define void @cne_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ne <2 x i64> %1, %2
  %4 = sext <2 x i1> %3 to <2 x i64>
  
  
  
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @ceqi_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp eq <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = sext <16 x i1> %2 to <16 x i8>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @ceqi_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp eq <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = sext <8 x i1> %2 to <8 x i16>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @ceqi_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp eq <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = sext <4 x i1> %2 to <4 x i32>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @ceqi_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp eq <2 x i64> %1, <i64 1, i64 1>
  %3 = sext <2 x i1> %2 to <2 x i64>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @clei_s_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp sle <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = sext <16 x i1> %2 to <16 x i8>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @clei_s_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp sle <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = sext <8 x i1> %2 to <8 x i16>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @clei_s_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp sle <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = sext <4 x i1> %2 to <4 x i32>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @clei_s_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp sle <2 x i64> %1, <i64 1, i64 1>
  %3 = sext <2 x i1> %2 to <2 x i64>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @clei_u_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp ule <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = sext <16 x i1> %2 to <16 x i8>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @clei_u_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp ule <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = sext <8 x i1> %2 to <8 x i16>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @clei_u_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp ule <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = sext <4 x i1> %2 to <4 x i32>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @clei_u_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp ule <2 x i64> %1, <i64 1, i64 1>
  %3 = sext <2 x i1> %2 to <2 x i64>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @clti_s_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp slt <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = sext <16 x i1> %2 to <16 x i8>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @clti_s_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp slt <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = sext <8 x i1> %2 to <8 x i16>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @clti_s_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp slt <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = sext <4 x i1> %2 to <4 x i32>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @clti_s_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp slt <2 x i64> %1, <i64 1, i64 1>
  %3 = sext <2 x i1> %2 to <2 x i64>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @clti_u_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp ult <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = sext <16 x i1> %2 to <16 x i8>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @clti_u_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp ult <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = sext <8 x i1> %2 to <8 x i16>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @clti_u_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp ult <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = sext <4 x i1> %2 to <4 x i32>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @clti_u_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp ult <2 x i64> %1, <i64 1, i64 1>
  %3 = sext <2 x i1> %2 to <2 x i64>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @bsel_s_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                        <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = load <16 x i8>, <16 x i8>* %c
  
  %4 = icmp sgt <16 x i8> %1, %2
  
  %5 = select <16 x i1> %4, <16 x i8> %1, <16 x i8> %3
  
  
  store <16 x i8> %5, <16 x i8>* %d
  

  ret void
  
}

define void @bsel_s_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                        <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = load <8 x i16>, <8 x i16>* %c
  
  %4 = icmp sgt <8 x i16> %1, %2
  
  %5 = select <8 x i1> %4, <8 x i16> %1, <8 x i16> %3
  
  
  store <8 x i16> %5, <8 x i16>* %d
  

  ret void
  
}

define void @bsel_s_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                        <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = load <4 x i32>, <4 x i32>* %c
  
  %4 = icmp sgt <4 x i32> %1, %2
  
  %5 = select <4 x i1> %4, <4 x i32> %1, <4 x i32> %3
  
  
  store <4 x i32> %5, <4 x i32>* %d
  

  ret void
  
}

define void @bsel_s_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                        <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = load <2 x i64>, <2 x i64>* %c
  
  %4 = icmp sgt <2 x i64> %1, %2
  
  %5 = select <2 x i1> %4, <2 x i64> %1, <2 x i64> %3
  
  
  store <2 x i64> %5, <2 x i64>* %d
  

  ret void
  
}

define void @bsel_u_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                        <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = load <16 x i8>, <16 x i8>* %c
  
  %4 = icmp ugt <16 x i8> %1, %2
  
  %5 = select <16 x i1> %4, <16 x i8> %1, <16 x i8> %3
  
  
  store <16 x i8> %5, <16 x i8>* %d
  

  ret void
  
}

define void @bsel_u_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                        <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = load <8 x i16>, <8 x i16>* %c
  
  %4 = icmp ugt <8 x i16> %1, %2
  
  %5 = select <8 x i1> %4, <8 x i16> %1, <8 x i16> %3
  
  
  store <8 x i16> %5, <8 x i16>* %d
  

  ret void
  
}

define void @bsel_u_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                        <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = load <4 x i32>, <4 x i32>* %c
  
  %4 = icmp ugt <4 x i32> %1, %2
  
  %5 = select <4 x i1> %4, <4 x i32> %1, <4 x i32> %3
  
  
  store <4 x i32> %5, <4 x i32>* %d
  

  ret void
  
}

define void @bsel_u_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                        <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = load <2 x i64>, <2 x i64>* %c
  
  %4 = icmp ugt <2 x i64> %1, %2
  
  %5 = select <2 x i1> %4, <2 x i64> %1, <2 x i64> %3
  
  
  store <2 x i64> %5, <2 x i64>* %d
  

  ret void
  
}

define void @bseli_s_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                        <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sgt <16 x i8> %1, %2
  
  %4 = select <16 x i1> %3, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %1
  
  store <16 x i8> %4, <16 x i8>* %d
  

  ret void
  
}

define void @bseli_s_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                        <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp sgt <8 x i16> %1, %2
  
  %4 = select <8 x i1> %3, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, <8 x i16> %1
  
  
  store <8 x i16> %4, <8 x i16>* %d
  

  ret void
  
}

define void @bseli_s_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                        <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp sgt <4 x i32> %1, %2
  
  %4 = select <4 x i1> %3, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %1
  
  
  store <4 x i32> %4, <4 x i32>* %d
  

  ret void
  
}

define void @bseli_s_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                        <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp sgt <2 x i64> %1, %2
  
  %4 = select <2 x i1> %3, <2 x i64> <i64 1, i64 1>, <2 x i64> %1
  
  
  store <2 x i64> %4, <2 x i64>* %d
  

  ret void
  
}

define void @bseli_u_v16i8(<16 x i8>* %d, <16 x i8>* %a, <16 x i8>* %b,
                        <16 x i8>* %c) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ugt <16 x i8> %1, %2
  
  %4 = select <16 x i1> %3, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %1
  
  store <16 x i8> %4, <16 x i8>* %d
  

  ret void
  
}

define void @bseli_u_v8i16(<8 x i16>* %d, <8 x i16>* %a, <8 x i16>* %b,
                        <8 x i16>* %c) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ugt <8 x i16> %1, %2
  
  %4 = select <8 x i1> %3, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, <8 x i16> %1
  
  
  store <8 x i16> %4, <8 x i16>* %d
  

  ret void
  
}

define void @bseli_u_v4i32(<4 x i32>* %d, <4 x i32>* %a, <4 x i32>* %b,
                        <4 x i32>* %c) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ugt <4 x i32> %1, %2
  
  %4 = select <4 x i1> %3, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %1
  
  
  store <4 x i32> %4, <4 x i32>* %d
  

  ret void
  
}

define void @bseli_u_v2i64(<2 x i64>* %d, <2 x i64>* %a, <2 x i64>* %b,
                        <2 x i64>* %c) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ugt <2 x i64> %1, %2
  
  %4 = select <2 x i1> %3, <2 x i64> <i64 1, i64 1>, <2 x i64> %1
  
  
  store <2 x i64> %4, <2 x i64>* %d
  

  ret void
  
}

define void @max_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sgt <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @max_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp sgt <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @max_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp sgt <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @max_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp sgt <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @max_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ugt <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @max_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ugt <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @max_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ugt <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @max_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ugt <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @max_s_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sge <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @max_s_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp sge <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @max_s_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp sge <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @max_s_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp sge <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @max_u_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp uge <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @max_u_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp uge <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @max_u_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp uge <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @max_u_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp uge <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @maxi_s_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp sgt <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @maxi_s_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp sgt <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @maxi_s_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp sgt <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @maxi_s_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp sgt <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @maxi_u_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp ugt <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @maxi_u_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp ugt <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @maxi_u_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp ugt <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @maxi_u_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp ugt <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @maxi_s_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp sge <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @maxi_s_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp sge <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @maxi_s_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp sge <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @maxi_s_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp sge <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @maxi_u_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp uge <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @maxi_u_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp uge <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @maxi_u_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp uge <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @maxi_u_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp uge <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @min_s_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sle <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @min_s_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp slt <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @min_s_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp slt <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @min_s_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp slt <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @min_u_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ult <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @min_u_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ult <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @min_u_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ult <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @min_u_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ult <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @min_s_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp sle <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @min_s_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp sle <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @min_s_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp sle <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @min_s_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp sle <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @min_u_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a, <16 x i8>* %b) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = load <16 x i8>, <16 x i8>* %b
  
  %3 = icmp ule <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  
  store <16 x i8> %4, <16 x i8>* %c
  

  ret void
  
}

define void @min_u_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a, <8 x i16>* %b) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = load <8 x i16>, <8 x i16>* %b
  
  %3 = icmp ule <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  
  store <8 x i16> %4, <8 x i16>* %c
  

  ret void
  
}

define void @min_u_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a, <4 x i32>* %b) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = load <4 x i32>, <4 x i32>* %b
  
  %3 = icmp ule <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  
  store <4 x i32> %4, <4 x i32>* %c
  

  ret void
  
}

define void @min_u_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a, <2 x i64>* %b) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = load <2 x i64>, <2 x i64>* %b
  
  %3 = icmp ule <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  
  store <2 x i64> %4, <2 x i64>* %c
  

  ret void
  
}

define void @mini_s_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp slt <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mini_s_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp slt <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mini_s_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp slt <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mini_s_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp slt <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @mini_u_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp ult <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mini_u_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp ult <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mini_u_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp ult <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mini_u_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp ult <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @mini_s_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp sle <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mini_s_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp sle <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mini_s_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp sle <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mini_s_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp sle <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}

define void @mini_u_eq_v16i8(<16 x i8>* %c, <16 x i8>* %a) nounwind {
  

  %1 = load <16 x i8>, <16 x i8>* %a
  
  %2 = icmp ule <16 x i8> %1, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %3 = select <16 x i1> %2, <16 x i8> %1, <16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  
  store <16 x i8> %3, <16 x i8>* %c
  

  ret void
  
}

define void @mini_u_eq_v8i16(<8 x i16>* %c, <8 x i16>* %a) nounwind {
  

  %1 = load <8 x i16>, <8 x i16>* %a
  
  %2 = icmp ule <8 x i16> %1, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  %3 = select <8 x i1> %2, <8 x i16> %1, <8 x i16> <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  
  store <8 x i16> %3, <8 x i16>* %c
  

  ret void
  
}

define void @mini_u_eq_v4i32(<4 x i32>* %c, <4 x i32>* %a) nounwind {
  

  %1 = load <4 x i32>, <4 x i32>* %a
  
  %2 = icmp ule <4 x i32> %1, <i32 1, i32 1, i32 1, i32 1>
  %3 = select <4 x i1> %2, <4 x i32> %1, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  
  store <4 x i32> %3, <4 x i32>* %c
  

  ret void
  
}

define void @mini_u_eq_v2i64(<2 x i64>* %c, <2 x i64>* %a) nounwind {
  

  %1 = load <2 x i64>, <2 x i64>* %a
  
  %2 = icmp ule <2 x i64> %1, <i64 1, i64 1>
  %3 = select <2 x i1> %2, <2 x i64> %1, <2 x i64> <i64 1, i64 1>
  
  store <2 x i64> %3, <2 x i64>* %c
  

  ret void
  
}
