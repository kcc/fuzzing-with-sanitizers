








define void @zextload_global_i1_to_i32(i32 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %a = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %a to i32
  store i32 %ext, i32 addrspace(1)* %out
  ret void
}






define void @sextload_global_i1_to_i32(i32 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %a = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %a to i32
  store i32 %ext, i32 addrspace(1)* %out
  ret void
}



define void @zextload_global_v1i1_to_v1i32(<1 x i32> addrspace(1)* %out, <1 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i1>, <1 x i1> addrspace(1)* %in
  %ext = zext <1 x i1> %load to <1 x i32>
  store <1 x i32> %ext, <1 x i32> addrspace(1)* %out
  ret void
}



define void @sextload_global_v1i1_to_v1i32(<1 x i32> addrspace(1)* %out, <1 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i1>, <1 x i1> addrspace(1)* %in
  %ext = sext <1 x i1> %load to <1 x i32>
  store <1 x i32> %ext, <1 x i32> addrspace(1)* %out
  ret void
}



define void @zextload_global_v2i1_to_v2i32(<2 x i32> addrspace(1)* %out, <2 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i1>, <2 x i1> addrspace(1)* %in
  %ext = zext <2 x i1> %load to <2 x i32>
  store <2 x i32> %ext, <2 x i32> addrspace(1)* %out
  ret void
}



define void @sextload_global_v2i1_to_v2i32(<2 x i32> addrspace(1)* %out, <2 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i1>, <2 x i1> addrspace(1)* %in
  %ext = sext <2 x i1> %load to <2 x i32>
  store <2 x i32> %ext, <2 x i32> addrspace(1)* %out
  ret void
}



define void @zextload_global_v4i1_to_v4i32(<4 x i32> addrspace(1)* %out, <4 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i1>, <4 x i1> addrspace(1)* %in
  %ext = zext <4 x i1> %load to <4 x i32>
  store <4 x i32> %ext, <4 x i32> addrspace(1)* %out
  ret void
}



define void @sextload_global_v4i1_to_v4i32(<4 x i32> addrspace(1)* %out, <4 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i1>, <4 x i1> addrspace(1)* %in
  %ext = sext <4 x i1> %load to <4 x i32>
  store <4 x i32> %ext, <4 x i32> addrspace(1)* %out
  ret void
}



define void @zextload_global_v8i1_to_v8i32(<8 x i32> addrspace(1)* %out, <8 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i1>, <8 x i1> addrspace(1)* %in
  %ext = zext <8 x i1> %load to <8 x i32>
  store <8 x i32> %ext, <8 x i32> addrspace(1)* %out
  ret void
}



define void @sextload_global_v8i1_to_v8i32(<8 x i32> addrspace(1)* %out, <8 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i1>, <8 x i1> addrspace(1)* %in
  %ext = sext <8 x i1> %load to <8 x i32>
  store <8 x i32> %ext, <8 x i32> addrspace(1)* %out
  ret void
}



define void @zextload_global_v16i1_to_v16i32(<16 x i32> addrspace(1)* %out, <16 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i1>, <16 x i1> addrspace(1)* %in
  %ext = zext <16 x i1> %load to <16 x i32>
  store <16 x i32> %ext, <16 x i32> addrspace(1)* %out
  ret void
}



define void @sextload_global_v16i1_to_v16i32(<16 x i32> addrspace(1)* %out, <16 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i1>, <16 x i1> addrspace(1)* %in
  %ext = sext <16 x i1> %load to <16 x i32>
  store <16 x i32> %ext, <16 x i32> addrspace(1)* %out
  ret void
}









































define void @zextload_global_i1_to_i64(i64 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %a = load i1, i1 addrspace(1)* %in
  %ext = zext i1 %a to i64
  store i64 %ext, i64 addrspace(1)* %out
  ret void
}






define void @sextload_global_i1_to_i64(i64 addrspace(1)* %out, i1 addrspace(1)* %in) nounwind {
  %a = load i1, i1 addrspace(1)* %in
  %ext = sext i1 %a to i64
  store i64 %ext, i64 addrspace(1)* %out
  ret void
}



define void @zextload_global_v1i1_to_v1i64(<1 x i64> addrspace(1)* %out, <1 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i1>, <1 x i1> addrspace(1)* %in
  %ext = zext <1 x i1> %load to <1 x i64>
  store <1 x i64> %ext, <1 x i64> addrspace(1)* %out
  ret void
}



define void @sextload_global_v1i1_to_v1i64(<1 x i64> addrspace(1)* %out, <1 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i1>, <1 x i1> addrspace(1)* %in
  %ext = sext <1 x i1> %load to <1 x i64>
  store <1 x i64> %ext, <1 x i64> addrspace(1)* %out
  ret void
}



define void @zextload_global_v2i1_to_v2i64(<2 x i64> addrspace(1)* %out, <2 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i1>, <2 x i1> addrspace(1)* %in
  %ext = zext <2 x i1> %load to <2 x i64>
  store <2 x i64> %ext, <2 x i64> addrspace(1)* %out
  ret void
}



define void @sextload_global_v2i1_to_v2i64(<2 x i64> addrspace(1)* %out, <2 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i1>, <2 x i1> addrspace(1)* %in
  %ext = sext <2 x i1> %load to <2 x i64>
  store <2 x i64> %ext, <2 x i64> addrspace(1)* %out
  ret void
}



define void @zextload_global_v4i1_to_v4i64(<4 x i64> addrspace(1)* %out, <4 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i1>, <4 x i1> addrspace(1)* %in
  %ext = zext <4 x i1> %load to <4 x i64>
  store <4 x i64> %ext, <4 x i64> addrspace(1)* %out
  ret void
}



define void @sextload_global_v4i1_to_v4i64(<4 x i64> addrspace(1)* %out, <4 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i1>, <4 x i1> addrspace(1)* %in
  %ext = sext <4 x i1> %load to <4 x i64>
  store <4 x i64> %ext, <4 x i64> addrspace(1)* %out
  ret void
}



define void @zextload_global_v8i1_to_v8i64(<8 x i64> addrspace(1)* %out, <8 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i1>, <8 x i1> addrspace(1)* %in
  %ext = zext <8 x i1> %load to <8 x i64>
  store <8 x i64> %ext, <8 x i64> addrspace(1)* %out
  ret void
}



define void @sextload_global_v8i1_to_v8i64(<8 x i64> addrspace(1)* %out, <8 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i1>, <8 x i1> addrspace(1)* %in
  %ext = sext <8 x i1> %load to <8 x i64>
  store <8 x i64> %ext, <8 x i64> addrspace(1)* %out
  ret void
}



define void @zextload_global_v16i1_to_v16i64(<16 x i64> addrspace(1)* %out, <16 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i1>, <16 x i1> addrspace(1)* %in
  %ext = zext <16 x i1> %load to <16 x i64>
  store <16 x i64> %ext, <16 x i64> addrspace(1)* %out
  ret void
}



define void @sextload_global_v16i1_to_v16i64(<16 x i64> addrspace(1)* %out, <16 x i1> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i1>, <16 x i1> addrspace(1)* %in
  %ext = sext <16 x i1> %load to <16 x i64>
  store <16 x i64> %ext, <16 x i64> addrspace(1)* %out
  ret void
}




































