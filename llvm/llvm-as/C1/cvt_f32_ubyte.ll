








define void @load_i8_to_f32(float addrspace(1)* noalias %out, i8 addrspace(1)* noalias %in) nounwind {
  %load = load i8, i8 addrspace(1)* %in, align 1
  %cvt = uitofp i8 %load to float
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}









define void @load_v2i8_to_v2f32(<2 x float> addrspace(1)* noalias %out, <2 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <2 x i8>, <2 x i8> addrspace(1)* %in, align 2
  %cvt = uitofp <2 x i8> %load to <2 x float>
  store <2 x float> %cvt, <2 x float> addrspace(1)* %out, align 16
  ret void
}








define void @load_v3i8_to_v3f32(<3 x float> addrspace(1)* noalias %out, <3 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <3 x i8>, <3 x i8> addrspace(1)* %in, align 4
  %cvt = uitofp <3 x i8> %load to <3 x float>
  store <3 x float> %cvt, <3 x float> addrspace(1)* %out, align 16
  ret void
}










define void @load_v4i8_to_v4f32(<4 x float> addrspace(1)* noalias %out, <4 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <4 x i8>, <4 x i8> addrspace(1)* %in, align 4
  %cvt = uitofp <4 x i8> %load to <4 x float>
  store <4 x float> %cvt, <4 x float> addrspace(1)* %out, align 16
  ret void
}


















define void @load_v4i8_to_v4f32_unaligned(<4 x float> addrspace(1)* noalias %out, <4 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <4 x i8>, <4 x i8> addrspace(1)* %in, align 1
  %cvt = uitofp <4 x i8> %load to <4 x float>
  store <4 x float> %cvt, <4 x float> addrspace(1)* %out, align 16
  ret void
}






















define void @load_v4i8_to_v4f32_2_uses(<4 x float> addrspace(1)* noalias %out, <4 x i8> addrspace(1)* noalias %out2, <4 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <4 x i8>, <4 x i8> addrspace(1)* %in, align 4
  %cvt = uitofp <4 x i8> %load to <4 x float>
  store <4 x float> %cvt, <4 x float> addrspace(1)* %out, align 16
  %add = add <4 x i8> %load, <i8 9, i8 9, i8 9, i8 9> 
  store <4 x i8> %add, <4 x i8> addrspace(1)* %out2, align 4
  ret void
}




define void @load_v7i8_to_v7f32(<7 x float> addrspace(1)* noalias %out, <7 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <7 x i8>, <7 x i8> addrspace(1)* %in, align 1
  %cvt = uitofp <7 x i8> %load to <7 x float>
  store <7 x float> %cvt, <7 x float> addrspace(1)* %out, align 16
  ret void
}























define void @load_v8i8_to_v8f32(<8 x float> addrspace(1)* noalias %out, <8 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <8 x i8>, <8 x i8> addrspace(1)* %in, align 8
  %cvt = uitofp <8 x i8> %load to <8 x float>
  store <8 x float> %cvt, <8 x float> addrspace(1)* %out, align 16
  ret void
}






define void @i8_zext_inreg_i32_to_f32(float addrspace(1)* noalias %out, i32 addrspace(1)* noalias %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %add = add i32 %load, 2
  %inreg = and i32 %add, 255
  %cvt = uitofp i32 %inreg to float
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}


define void @i8_zext_inreg_hi1_to_f32(float addrspace(1)* noalias %out, i32 addrspace(1)* noalias %in) nounwind {
  %load = load i32, i32 addrspace(1)* %in, align 4
  %inreg = and i32 %load, 65280
  %shr = lshr i32 %inreg, 8
  %cvt = uitofp i32 %shr to float
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}




define void @i8_zext_i32_to_f32(float addrspace(1)* noalias %out, i8 addrspace(1)* noalias %in) nounwind {
  %load = load i8, i8 addrspace(1)* %in, align 1
  %ext = zext i8 %load to i32
  %cvt = uitofp i32 %ext to float
  store float %cvt, float addrspace(1)* %out, align 4
  ret void
}

define void @v4i8_zext_v4i32_to_v4f32(<4 x float> addrspace(1)* noalias %out, <4 x i8> addrspace(1)* noalias %in) nounwind {
  %load = load <4 x i8>, <4 x i8> addrspace(1)* %in, align 1
  %ext = zext <4 x i8> %load to <4 x i32>
  %cvt = uitofp <4 x i32> %ext to <4 x float>
  store <4 x float> %cvt, <4 x float> addrspace(1)* %out, align 16
  ret void
}
