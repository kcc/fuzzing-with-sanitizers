




define <16 x float> @sitof32(<16 x i32> %a) nounwind {
  %b = sitofp <16 x i32> %a to <16 x float>
  ret <16 x float> %b
}



define <8 x double> @sltof864(<8 x i64> %a) {
  %b = sitofp <8 x i64> %a to <8 x double>
  ret <8 x double> %b
}



define <4 x double> @sltof464(<4 x i64> %a) {
  %b = sitofp <4 x i64> %a to <4 x double>
  ret <4 x double> %b
}



define <2 x float> @sltof2f32(<2 x i64> %a) {
  %b = sitofp <2 x i64> %a to <2 x float>
  ret <2 x float>%b
}



define <4 x float> @sltof4f32_mem(<4 x i64>* %a) {
  %a1 = load <4 x i64>, <4 x i64>* %a, align 8
  %b = sitofp <4 x i64> %a1 to <4 x float>
  ret <4 x float>%b
}



define <4 x i64> @f64tosl(<4 x double> %a) {
  %b = fptosi <4 x double> %a to <4 x i64>
  ret <4 x i64> %b
}



define <4 x i64> @f32tosl(<4 x float> %a) {
  %b = fptosi <4 x float> %a to <4 x i64>
  ret <4 x i64> %b
}



define <4 x float> @sltof432(<4 x i64> %a) {
  %b = sitofp <4 x i64> %a to <4 x float>
  ret <4 x float> %b
}



define <4 x float> @ultof432(<4 x i64> %a) {
  %b = uitofp <4 x i64> %a to <4 x float>
  ret <4 x float> %b
}



define <8 x double> @ultof64(<8 x i64> %a) {
  %b = uitofp <8 x i64> %a to <8 x double>
  ret <8 x double> %b
}




define <16 x i32> @fptosi00(<16 x float> %a) nounwind {
  %b = fptosi <16 x float> %a to <16 x i32>
  ret <16 x i32> %b
}




define <16 x i32> @fptoui00(<16 x float> %a) nounwind {
  %b = fptoui <16 x float> %a to <16 x i32>
  ret <16 x i32> %b
}




define <8 x i32> @fptoui_256(<8 x float> %a) nounwind {
  %b = fptoui <8 x float> %a to <8 x i32>
  ret <8 x i32> %b
}




define <4 x i32> @fptoui_128(<4 x float> %a) nounwind {
  %b = fptoui <4 x float> %a to <4 x i32>
  ret <4 x i32> %b
}




define <8 x i32> @fptoui01(<8 x double> %a) nounwind {
  %b = fptoui <8 x double> %a to <8 x i32>
  ret <8 x i32> %b
}




define <8 x double> @sitof64(<8 x i32> %a) {
  %b = sitofp <8 x i32> %a to <8 x double>
  ret <8 x double> %b
}




define <8 x i32> @fptosi01(<8 x double> %a) {
  %b = fptosi <8 x double> %a to <8 x i32>
  ret <8 x i32> %b
}




define <4 x i32> @fptosi03(<4 x double> %a) {
  %b = fptosi <4 x double> %a to <4 x i32>
  ret <4 x i32> %b
}






define <16 x float> @fptrunc00(<16 x double> %b) nounwind {
  %a = fptrunc <16 x double> %b to <16 x float>
  ret <16 x float> %a
}



define <4 x float> @fptrunc01(<4 x double> %b) {
  %a = fptrunc <4 x double> %b to <4 x float>
  ret <4 x float> %a
}



define <4 x float> @fptrunc02(<4 x double> %b, <4 x i1> %mask) {
  %a = fptrunc <4 x double> %b to <4 x float>
  %c = select <4 x i1>%mask, <4 x float>%a, <4 x float> zeroinitializer
  ret <4 x float> %c
}




define <8 x double> @fpext00(<8 x float> %b) nounwind {
  %a = fpext <8 x float> %b to <8 x double>
  ret <8 x double> %a
}




define <4 x double> @fpext01(<4 x float> %b, <4 x double>%b1, <4 x double>%a1) {
  %a = fpext <4 x float> %b to <4 x double>
  %mask = fcmp ogt <4 x double>%a1, %b1
  %c = select <4 x i1>%mask,  <4 x double>%a, <4 x double>zeroinitializer
  ret <4 x double> %c
}




define double @funcA(i64* nocapture %e) {
entry:
  %tmp1 = load i64, i64* %e, align 8
  %conv = sitofp i64 %tmp1 to double
  ret double %conv
}




define double @funcB(i32* %e) {
entry:
  %tmp1 = load i32, i32* %e, align 4
  %conv = sitofp i32 %tmp1 to double
  ret double %conv
}




define float @funcC(i32* %e) {
entry:
  %tmp1 = load i32, i32* %e, align 4
  %conv = sitofp i32 %tmp1 to float
  ret float %conv
}




define float @i64tof32(i64* %e) {
entry:
  %tmp1 = load i64, i64* %e, align 8
  %conv = sitofp i64 %tmp1 to float
  ret float %conv
}




define void @fpext() {
entry:
  %f = alloca float, align 4
  %d = alloca double, align 8
  %tmp = load float, float* %f, align 4
  %conv = fpext float %tmp to double
  store double %conv, double* %d, align 8
  ret void
}






define void @fpround_scalar() nounwind uwtable {
entry:
  %f = alloca float, align 4
  %d = alloca double, align 8
  %tmp = load double, double* %d, align 8
  %conv = fptrunc double %tmp to float
  store float %conv, float* %f, align 4
  ret void
}




define double @long_to_double(i64 %x) {
   %res = bitcast i64 %x to double
   ret double %res
}




define i64 @double_to_long(double %x) {
   %res = bitcast double %x to i64
   ret i64 %res
}




define float @int_to_float(i32 %x) {
   %res = bitcast i32 %x to float
   ret float %res
}




define i32 @float_to_int(float %x) {
   %res = bitcast float %x to i32
   ret i32 %res
}






define <16 x double> @uitof64(<16 x i32> %a) nounwind {
  %b = uitofp <16 x i32> %a to <16 x double>
  ret <16 x double> %b
}




define <4 x double> @uitof64_256(<4 x i32> %a) nounwind {
  %b = uitofp <4 x i32> %a to <4 x double>
  ret <4 x double> %b
}




define <16 x float> @uitof32(<16 x i32> %a) nounwind {
  %b = uitofp <16 x i32> %a to <16 x float>
  ret <16 x float> %b
}




define <8 x float> @uitof32_256(<8 x i32> %a) nounwind {
  %b = uitofp <8 x i32> %a to <8 x float>
  ret <8 x float> %b
}




define <4 x float> @uitof32_128(<4 x i32> %a) nounwind {
  %b = uitofp <4 x i32> %a to <4 x float>
  ret <4 x float> %b
}




define i32 @fptosi02(float %a) nounwind {
  %b = fptosi float %a to i32
  ret i32 %b
}




define i32 @fptoui02(float %a) nounwind {
  %b = fptoui float %a to i32
  ret i32 %b
}




define float @uitofp02(i32 %a) nounwind {
  %b = uitofp i32 %a to float
  ret float %b
}




define double @uitofp03(i32 %a) nounwind {
  %b = uitofp i32 %a to double
  ret double %b
}




define <16 x float> @sitofp_16i1_float(<16 x i32> %a) {
  %mask = icmp slt <16 x i32> %a, zeroinitializer
  %1 = sitofp <16 x i1> %mask to <16 x float>
  ret <16 x float> %1
}




define <16 x float> @sitofp_16i8_float(<16 x i8> %a) {
  %1 = sitofp <16 x i8> %a to <16 x float>
  ret <16 x float> %1
}




define <16 x float> @sitofp_16i16_float(<16 x i16> %a) {
  %1 = sitofp <16 x i16> %a to <16 x float>
  ret <16 x float> %1
}




define <8 x double> @sitofp_8i16_double(<8 x i16> %a) {
  %1 = sitofp <8 x i16> %a to <8 x double>
  ret <8 x double> %1
}






define <8 x double> @sitofp_8i8_double(<8 x i8> %a) {
  %1 = sitofp <8 x i8> %a to <8 x double>
  ret <8 x double> %1
}





define <8 x double> @sitofp_8i1_double(<8 x double> %a) {
  %cmpres = fcmp ogt <8 x double> %a, zeroinitializer
  %1 = sitofp <8 x i1> %cmpres to <8 x double>
  ret <8 x double> %1
}




define <16 x float> @uitofp_16i8(<16 x i8>%a) {
  %b = uitofp <16 x i8> %a to <16 x float>
  ret <16 x float>%b
}




define <16 x float> @uitofp_16i16(<16 x i16>%a) {
  %b = uitofp <16 x i16> %a to <16 x float>
  ret <16 x float>%b
}

