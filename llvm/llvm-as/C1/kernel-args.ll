








define void @i8_arg(i32 addrspace(1)* nocapture %out, i8 %in) nounwind {
entry:
  %0 = zext i8 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}






define void @i8_zext_arg(i32 addrspace(1)* nocapture %out, i8 zeroext %in) nounwind {
entry:
  %0 = zext i8 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}






define void @i8_sext_arg(i32 addrspace(1)* nocapture %out, i8 signext %in) nounwind {
entry:
  %0 = sext i8 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}





define void @i16_arg(i32 addrspace(1)* nocapture %out, i16 %in) nounwind {
entry:
  %0 = zext i16 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}






define void @i16_zext_arg(i32 addrspace(1)* nocapture %out, i16 zeroext %in) nounwind {
entry:
  %0 = zext i16 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}






define void @i16_sext_arg(i32 addrspace(1)* nocapture %out, i16 signext %in) nounwind {
entry:
  %0 = sext i16 %in to i32
  store i32 %0, i32 addrspace(1)* %out, align 4
  ret void
}





define void @i32_arg(i32 addrspace(1)* nocapture %out, i32 %in) nounwind {
entry:
  store i32 %in, i32 addrspace(1)* %out, align 4
  ret void
}





define void @f32_arg(float addrspace(1)* nocapture %out, float %in) nounwind {
entry:
  store float %in, float addrspace(1)* %out, align 4
  ret void
}






define void @v2i8_arg(<2 x i8> addrspace(1)* %out, <2 x i8> %in) {
entry:
  store <2 x i8> %in, <2 x i8> addrspace(1)* %out
  ret void
}






define void @v2i16_arg(<2 x i16> addrspace(1)* %out, <2 x i16> %in) {
entry:
  store <2 x i16> %in, <2 x i16> addrspace(1)* %out
  ret void
}






define void @v2i32_arg(<2 x i32> addrspace(1)* nocapture %out, <2 x i32> %in) nounwind {
entry:
  store <2 x i32> %in, <2 x i32> addrspace(1)* %out, align 4
  ret void
}






define void @v2f32_arg(<2 x float> addrspace(1)* nocapture %out, <2 x float> %in) nounwind {
entry:
  store <2 x float> %in, <2 x float> addrspace(1)* %out, align 4
  ret void
}





define void @v3i8_arg(<3 x i8> addrspace(1)* nocapture %out, <3 x i8> %in) nounwind {
entry:
  store <3 x i8> %in, <3 x i8> addrspace(1)* %out, align 4
  ret void
}





define void @v3i16_arg(<3 x i16> addrspace(1)* nocapture %out, <3 x i16> %in) nounwind {
entry:
  store <3 x i16> %in, <3 x i16> addrspace(1)* %out, align 4
  ret void
}






define void @v3i32_arg(<3 x i32> addrspace(1)* nocapture %out, <3 x i32> %in) nounwind {
entry:
  store <3 x i32> %in, <3 x i32> addrspace(1)* %out, align 4
  ret void
}







define void @v3f32_arg(<3 x float> addrspace(1)* nocapture %out, <3 x float> %in) nounwind {
entry:
  store <3 x float> %in, <3 x float> addrspace(1)* %out, align 4
  ret void
}










define void @v4i8_arg(<4 x i8> addrspace(1)* %out, <4 x i8> %in) {
entry:
  store <4 x i8> %in, <4 x i8> addrspace(1)* %out
  ret void
}










define void @v4i16_arg(<4 x i16> addrspace(1)* %out, <4 x i16> %in) {
entry:
  store <4 x i16> %in, <4 x i16> addrspace(1)* %out
  ret void
}








define void @v4i32_arg(<4 x i32> addrspace(1)* nocapture %out, <4 x i32> %in) nounwind {
entry:
  store <4 x i32> %in, <4 x i32> addrspace(1)* %out, align 4
  ret void
}








define void @v4f32_arg(<4 x float> addrspace(1)* nocapture %out, <4 x float> %in) nounwind {
entry:
  store <4 x float> %in, <4 x float> addrspace(1)* %out, align 4
  ret void
}

















define void @v8i8_arg(<8 x i8> addrspace(1)* %out, <8 x i8> %in) {
entry:
  store <8 x i8> %in, <8 x i8> addrspace(1)* %out
  ret void
}


















define void @v8i16_arg(<8 x i16> addrspace(1)* %out, <8 x i16> %in) {
entry:
  store <8 x i16> %in, <8 x i16> addrspace(1)* %out
  ret void
}












define void @v8i32_arg(<8 x i32> addrspace(1)* nocapture %out, <8 x i32> %in) nounwind {
entry:
  store <8 x i32> %in, <8 x i32> addrspace(1)* %out, align 4
  ret void
}











define void @v8f32_arg(<8 x float> addrspace(1)* nocapture %out, <8 x float> %in) nounwind {
entry:
  store <8 x float> %in, <8 x float> addrspace(1)* %out, align 4
  ret void
}


































define void @v16i8_arg(<16 x i8> addrspace(1)* %out, <16 x i8> %in) {
entry:
  store <16 x i8> %in, <16 x i8> addrspace(1)* %out
  ret void
}


































define void @v16i16_arg(<16 x i16> addrspace(1)* %out, <16 x i16> %in) {
entry:
  store <16 x i16> %in, <16 x i16> addrspace(1)* %out
  ret void
}




















define void @v16i32_arg(<16 x i32> addrspace(1)* nocapture %out, <16 x i32> %in) nounwind {
entry:
  store <16 x i32> %in, <16 x i32> addrspace(1)* %out, align 4
  ret void
}




















define void @v16f32_arg(<16 x float> addrspace(1)* nocapture %out, <16 x float> %in) nounwind {
entry:
  store <16 x float> %in, <16 x float> addrspace(1)* %out, align 4
  ret void
}





define void @kernel_arg_i64(i64 addrspace(1)* %out, i64 %a) nounwind {
  store i64 %a, i64 addrspace(1)* %out, align 8
  ret void
}







define void @f64_kernel_arg(double addrspace(1)* %out, double  %in) {
entry:
  store double %in, double addrspace(1)* %out
  ret void
}









