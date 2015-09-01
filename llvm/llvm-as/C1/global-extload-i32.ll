







define void @zextload_global_i32_to_i64(i64 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %a = load i32, i32 addrspace(1)* %in
  %ext = zext i32 %a to i64
  store i64 %ext, i64 addrspace(1)* %out
  ret void
}





define void @sextload_global_i32_to_i64(i64 addrspace(1)* %out, i32 addrspace(1)* %in) nounwind {
  %a = load i32, i32 addrspace(1)* %in
  %ext = sext i32 %a to i64
  store i64 %ext, i64 addrspace(1)* %out
  ret void
}





define void @zextload_global_v1i32_to_v1i64(<1 x i64> addrspace(1)* %out, <1 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i32>, <1 x i32> addrspace(1)* %in
  %ext = zext <1 x i32> %load to <1 x i64>
  store <1 x i64> %ext, <1 x i64> addrspace(1)* %out
  ret void
}






define void @sextload_global_v1i32_to_v1i64(<1 x i64> addrspace(1)* %out, <1 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <1 x i32>, <1 x i32> addrspace(1)* %in
  %ext = sext <1 x i32> %load to <1 x i64>
  store <1 x i64> %ext, <1 x i64> addrspace(1)* %out
  ret void
}






define void @zextload_global_v2i32_to_v2i64(<2 x i64> addrspace(1)* %out, <2 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i32>, <2 x i32> addrspace(1)* %in
  %ext = zext <2 x i32> %load to <2 x i64>
  store <2 x i64> %ext, <2 x i64> addrspace(1)* %out
  ret void
}








define void @sextload_global_v2i32_to_v2i64(<2 x i64> addrspace(1)* %out, <2 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <2 x i32>, <2 x i32> addrspace(1)* %in
  %ext = sext <2 x i32> %load to <2 x i64>
  store <2 x i64> %ext, <2 x i64> addrspace(1)* %out
  ret void
}








define void @zextload_global_v4i32_to_v4i64(<4 x i64> addrspace(1)* %out, <4 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i32>, <4 x i32> addrspace(1)* %in
  %ext = zext <4 x i32> %load to <4 x i64>
  store <4 x i64> %ext, <4 x i64> addrspace(1)* %out
  ret void
}












define void @sextload_global_v4i32_to_v4i64(<4 x i64> addrspace(1)* %out, <4 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <4 x i32>, <4 x i32> addrspace(1)* %in
  %ext = sext <4 x i32> %load to <4 x i64>
  store <4 x i64> %ext, <4 x i64> addrspace(1)* %out
  ret void
}



















define void @zextload_global_v8i32_to_v8i64(<8 x i64> addrspace(1)* %out, <8 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i32>, <8 x i32> addrspace(1)* %in
  %ext = zext <8 x i32> %load to <8 x i64>
  store <8 x i64> %ext, <8 x i64> addrspace(1)* %out
  ret void
}





























define void @sextload_global_v8i32_to_v8i64(<8 x i64> addrspace(1)* %out, <8 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <8 x i32>, <8 x i32> addrspace(1)* %in
  %ext = sext <8 x i32> %load to <8 x i64>
  store <8 x i64> %ext, <8 x i64> addrspace(1)* %out
  ret void
}















































define void @sextload_global_v16i32_to_v16i64(<16 x i64> addrspace(1)* %out, <16 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i32>, <16 x i32> addrspace(1)* %in
  %ext = sext <16 x i32> %load to <16 x i64>
  store <16 x i64> %ext, <16 x i64> addrspace(1)* %out
  ret void
}





































define void @zextload_global_v16i32_to_v16i64(<16 x i64> addrspace(1)* %out, <16 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <16 x i32>, <16 x i32> addrspace(1)* %in
  %ext = zext <16 x i32> %load to <16 x i64>
  store <16 x i64> %ext, <16 x i64> addrspace(1)* %out
  ret void
}












































































































define void @sextload_global_v32i32_to_v32i64(<32 x i64> addrspace(1)* %out, <32 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <32 x i32>, <32 x i32> addrspace(1)* %in
  %ext = sext <32 x i32> %load to <32 x i64>
  store <32 x i64> %ext, <32 x i64> addrspace(1)* %out
  ret void
}











































































define void @zextload_global_v32i32_to_v32i64(<32 x i64> addrspace(1)* %out, <32 x i32> addrspace(1)* nocapture %in) nounwind {
  %load = load <32 x i32>, <32 x i32> addrspace(1)* %in
  %ext = zext <32 x i32> %load to <32 x i64>
  store <32 x i64> %ext, <32 x i64> addrspace(1)* %out
  ret void
}
