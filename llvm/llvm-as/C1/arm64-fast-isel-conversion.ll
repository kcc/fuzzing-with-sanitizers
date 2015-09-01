


define zeroext i32 @trunc_(i8 zeroext %a, i16 zeroext %b, i32 %c, i64 %d) nounwind ssp {
entry:
















  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %c.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  store i8 %a, i8* %a.addr, align 1
  store i16 %b, i16* %b.addr, align 2
  store i32 %c, i32* %c.addr, align 4
  store i64 %d, i64* %d.addr, align 8
  %tmp = load i64, i64* %d.addr, align 8
  %conv = trunc i64 %tmp to i32
  store i32 %conv, i32* %c.addr, align 4
  %tmp1 = load i32, i32* %c.addr, align 4
  %conv2 = trunc i32 %tmp1 to i16
  store i16 %conv2, i16* %b.addr, align 2
  %tmp3 = load i16, i16* %b.addr, align 2
  %conv4 = trunc i16 %tmp3 to i8
  store i8 %conv4, i8* %a.addr, align 1
  %tmp5 = load i8, i8* %a.addr, align 1
  %conv6 = zext i8 %tmp5 to i32
  ret i32 %conv6
}

define i64 @zext_(i8 zeroext %a, i16 zeroext %b, i32 %c, i64 %d) nounwind ssp {
entry:















  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %c.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  store i8 %a, i8* %a.addr, align 1
  store i16 %b, i16* %b.addr, align 2
  store i32 %c, i32* %c.addr, align 4
  store i64 %d, i64* %d.addr, align 8
  %tmp = load i8, i8* %a.addr, align 1
  %conv = zext i8 %tmp to i16
  store i16 %conv, i16* %b.addr, align 2
  %tmp1 = load i16, i16* %b.addr, align 2
  %conv2 = zext i16 %tmp1 to i32
  store i32 %conv2, i32* %c.addr, align 4
  %tmp3 = load i32, i32* %c.addr, align 4
  %conv4 = zext i32 %tmp3 to i64
  store i64 %conv4, i64* %d.addr, align 8
  %tmp5 = load i64, i64* %d.addr, align 8
  ret i64 %tmp5
}

define i32 @zext_i1_i32(i1 zeroext %a) nounwind ssp {
entry:



  %conv = zext i1 %a to i32
  ret i32 %conv
}

define i64 @zext_i1_i64(i1 zeroext %a) nounwind ssp {
entry:



  %conv = zext i1 %a to i64
  ret i64 %conv
}

define i64 @sext_(i8 signext %a, i16 signext %b, i32 %c, i64 %d) nounwind ssp {
entry:














  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %c.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  store i8 %a, i8* %a.addr, align 1
  store i16 %b, i16* %b.addr, align 2
  store i32 %c, i32* %c.addr, align 4
  store i64 %d, i64* %d.addr, align 8
  %tmp = load i8, i8* %a.addr, align 1
  %conv = sext i8 %tmp to i16
  store i16 %conv, i16* %b.addr, align 2
  %tmp1 = load i16, i16* %b.addr, align 2
  %conv2 = sext i16 %tmp1 to i32
  store i32 %conv2, i32* %c.addr, align 4
  %tmp3 = load i32, i32* %c.addr, align 4
  %conv4 = sext i32 %tmp3 to i64
  store i64 %conv4, i64* %d.addr, align 8
  %tmp5 = load i64, i64* %d.addr, align 8
  ret i64 %tmp5
}



define zeroext i64 @sext_i8_i64(i8 zeroext %in) {



  %big = sext i8 %in to i64
  ret i64 %big
}

define zeroext i64 @sext_i16_i64(i16 zeroext %in) {



  %big = sext i16 %in to i64
  ret i64 %big
}


define i32 @sext_i1_i32(i1 signext %a) nounwind ssp {
entry:



  %conv = sext i1 %a to i32
  ret i32 %conv
}


define signext i16 @sext_i1_i16(i1 %a) nounwind ssp {
entry:


  %conv = sext i1 %a to i16
  ret i16 %conv
}


define signext i8 @sext_i1_i8(i1 %a) nounwind ssp {
entry:


  %conv = sext i1 %a to i8
  ret i8 %conv
}


define double @fpext_(float %a) nounwind ssp {
entry:


  %conv = fpext float %a to double
  ret double %conv
}


define float @fptrunc_(double %a) nounwind ssp {
entry:


  %conv = fptrunc double %a to float
  ret float %conv
}


define i32 @fptosi_ws(float %a) nounwind ssp {
entry:


  %conv = fptosi float %a to i32
  ret i32 %conv
}


define i32 @fptosi_wd(double %a) nounwind ssp {
entry:


  %conv = fptosi double %a to i32
  ret i32 %conv
}


define i32 @fptoui_ws(float %a) nounwind ssp {
entry:


  %conv = fptoui float %a to i32
  ret i32 %conv
}


define i32 @fptoui_wd(double %a) nounwind ssp {
entry:


  %conv = fptoui double %a to i32
  ret i32 %conv
}


define float @sitofp_sw_i1(i1 %a) nounwind ssp {
entry:



  %conv = sitofp i1 %a to float
  ret float %conv
}


define float @sitofp_sw_i8(i8 %a) nounwind ssp {
entry:



  %conv = sitofp i8 %a to float
  ret float %conv
}


define float @sitofp_sw_i16(i16 %a) nounwind ssp {
entry:

  %conv = sitofp i16 %a to float
  ret float %conv
}


define float @sitofp_sw(i32 %a) nounwind ssp {
entry:


  %conv = sitofp i32 %a to float
  ret float %conv
}


define float @sitofp_sx(i64 %a) nounwind ssp {
entry:


  %conv = sitofp i64 %a to float
  ret float %conv
}


define double @sitofp_dw(i32 %a) nounwind ssp {
entry:


  %conv = sitofp i32 %a to double
  ret double %conv
}


define double @sitofp_dx(i64 %a) nounwind ssp {
entry:


  %conv = sitofp i64 %a to double
  ret double %conv
}


define float @uitofp_sw_i1(i1 %a) nounwind ssp {
entry:



  %conv = uitofp i1 %a to float
  ret float %conv
}


define float @uitofp_sw_i8(i8 %a) nounwind ssp {
entry:

  %conv = uitofp i8 %a to float
  ret float %conv
}


define float @uitofp_sw_i16(i16 %a) nounwind ssp {
entry:

  %conv = uitofp i16 %a to float
  ret float %conv
}


define float @uitofp_sw(i32 %a) nounwind ssp {
entry:


  %conv = uitofp i32 %a to float
  ret float %conv
}


define float @uitofp_sx(i64 %a) nounwind ssp {
entry:


  %conv = uitofp i64 %a to float
  ret float %conv
}


define double @uitofp_dw(i32 %a) nounwind ssp {
entry:


  %conv = uitofp i32 %a to double
  ret double %conv
}


define double @uitofp_dx(i64 %a) nounwind ssp {
entry:


  %conv = uitofp i64 %a to double
  ret double %conv
}

define i32 @i64_trunc_i32(i64 %a) nounwind ssp {
entry:


  %conv = trunc i64 %a to i32
  ret i32 %conv
}

define zeroext i16 @i64_trunc_i16(i64 %a) nounwind ssp {
entry:




  %conv = trunc i64 %a to i16
  ret i16 %conv
}

define zeroext i8 @i64_trunc_i8(i64 %a) nounwind ssp {
entry:




  %conv = trunc i64 %a to i8
  ret i8 %conv
}

define zeroext i1 @i64_trunc_i1(i64 %a) nounwind ssp {
entry:




  %conv = trunc i64 %a to i1
  ret i1 %conv
}


define void @stack_trunc() nounwind {







  %a = alloca i8, align 1
  %b = alloca i64, align 8
  %c = load i64, i64* %b, align 8
  %d = trunc i64 %c to i8
  store i8 %d, i8* %a, align 1
  ret void
}

define zeroext i64 @zext_i8_i64(i8 zeroext %in) {



  %big = zext i8 %in to i64
  ret i64 %big
}
define zeroext i64 @zext_i16_i64(i16 zeroext %in) {



  %big = zext i16 %in to i64
  ret i64 %big
}

define float @bitcast_i32_to_float(i32 %a) {
  %1 = bitcast i32 %a to float
  ret float %1
}

define double @bitcast_i64_to_double(i64 %a) {
  %1 = bitcast i64 %a to double
  ret double %1
}

define i32 @bitcast_float_to_i32(float %a) {
  %1 = bitcast float %a to i32
  ret i32 %1
}

define i64 @bitcast_double_to_i64(double %a) {
  %1 = bitcast double %a to i64
  ret i64 %1
}

