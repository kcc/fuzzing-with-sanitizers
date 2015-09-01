



define float @t1(i32* nocapture %src) nounwind ssp {
entry:



  %tmp1 = load i32, i32* %src, align 4
  %tmp2 = sitofp i32 %tmp1 to float
  ret float %tmp2
}

define float @t2(i32* nocapture %src) nounwind ssp {
entry:



  %tmp1 = load i32, i32* %src, align 4
  %tmp2 = uitofp i32 %tmp1 to float
  ret float %tmp2
}

define double @t3(i64* nocapture %src) nounwind ssp {
entry:



  %tmp1 = load i64, i64* %src, align 4
  %tmp2 = sitofp i64 %tmp1 to double
  ret double %tmp2
}

define double @t4(i64* nocapture %src) nounwind ssp {
entry:



  %tmp1 = load i64, i64* %src, align 4
  %tmp2 = uitofp i64 %tmp1 to double
  ret double %tmp2
}


define double @t5(i32* nocapture %src) nounwind ssp optsize {
entry:



  %tmp1 = load i32, i32* %src, align 4
  %tmp2 = sitofp i32 %tmp1 to double
  ret double %tmp2
}

















define float @fct1(i8* nocapture %sp0) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 1
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct2(i16* nocapture %sp0) {




entry:
  %addr = getelementptr i16, i16* %sp0, i64 1
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct3(i32* nocapture %sp0) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 1
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @fct4(i64* nocapture %sp0) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 1
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @fct5(i8* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct6(i16* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i16, i16* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct7(i32* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @fct8(i64* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}



define double @fct9(i8* nocapture %sp0) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 1
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct10(i16* nocapture %sp0) {




entry:
  %addr = getelementptr i16, i16* %sp0, i64 1
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct11(i32* nocapture %sp0) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 1
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct12(i64* nocapture %sp0) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 1
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}


define double @fct13(i8* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct14(i16* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i16, i16* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct15(i32* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct16(i64* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}


define float @fct17(i8* nocapture %sp0) {
entry:




  %bitcast = ptrtoint i8* %sp0 to i64
  %add = add i64 %bitcast, -1
  %addr = inttoptr i64 %add to i8*
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct18(i16* nocapture %sp0) {




  %bitcast = ptrtoint i16* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i16*
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @fct19(i32* nocapture %sp0) {




  %bitcast = ptrtoint i32* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i32*
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @fct20(i64* nocapture %sp0) {




  %bitcast = ptrtoint i64* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i64*
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i

}


define double @fct21(i8* nocapture %sp0) {
entry:




  %bitcast = ptrtoint i8* %sp0 to i64
  %add = add i64 %bitcast, -1
  %addr = inttoptr i64 %add to i8*
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = uitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct22(i16* nocapture %sp0) {




  %bitcast = ptrtoint i16* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i16*
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = uitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct23(i32* nocapture %sp0) {




  %bitcast = ptrtoint i32* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i32*
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = uitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @fct24(i64* nocapture %sp0) {




  %bitcast = ptrtoint i64* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i64*
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = uitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i

}


define float @sfct1(i8* nocapture %sp0) {










entry:
  %addr = getelementptr i8, i8* %sp0, i64 1
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct2(i16* nocapture %sp0) {





entry:
  %addr = getelementptr i16, i16* %sp0, i64 1
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct3(i32* nocapture %sp0) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 1
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @sfct4(i64* nocapture %sp0) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 1
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @sfct5(i8* nocapture %sp0, i64 %offset) {










entry:
  %addr = getelementptr i8, i8* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct6(i16* nocapture %sp0, i64 %offset) {





entry:
  %addr = getelementptr i16, i16* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct7(i32* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @sfct8(i64* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define double @sfct9(i8* nocapture %sp0) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 1
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct10(i16* nocapture %sp0) {










entry:
  %addr = getelementptr i16, i16* %sp0, i64 1
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct11(i32* nocapture %sp0) {





entry:
  %addr = getelementptr i32, i32* %sp0, i64 1
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct12(i64* nocapture %sp0) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 1
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}


define double @sfct13(i8* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i8, i8* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct14(i16* nocapture %sp0, i64 %offset) {










entry:
  %addr = getelementptr i16, i16* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct15(i32* nocapture %sp0, i64 %offset) {





entry:
  %addr = getelementptr i32, i32* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct16(i64* nocapture %sp0, i64 %offset) {




entry:
  %addr = getelementptr i64, i64* %sp0, i64 %offset
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}


define float @sfct17(i8* nocapture %sp0) {
entry:










  %bitcast = ptrtoint i8* %sp0 to i64
  %add = add i64 %bitcast, -1
  %addr = inttoptr i64 %add to i8*
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct18(i16* nocapture %sp0) {





  %bitcast = ptrtoint i16* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i16*
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define float @sfct19(i32* nocapture %sp0) {




  %bitcast = ptrtoint i32* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i32*
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}


define float @sfct20(i64* nocapture %sp0) {




  %bitcast = ptrtoint i64* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i64*
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i

}


define double @sfct21(i8* nocapture %sp0) {
entry:




  %bitcast = ptrtoint i8* %sp0 to i64
  %add = add i64 %bitcast, -1
  %addr = inttoptr i64 %add to i8*
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct22(i16* nocapture %sp0) {










  %bitcast = ptrtoint i16* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i16*
  %pix_sp0.0.copyload = load i16, i16* %addr, align 1
  %val = sitofp i16 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct23(i32* nocapture %sp0) {





  %bitcast = ptrtoint i32* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i32*
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}

define double @sfct24(i64* nocapture %sp0) {




  %bitcast = ptrtoint i64* %sp0 to i64
  %add = add i64 %bitcast, 1
  %addr = inttoptr i64 %add to i64*
  %pix_sp0.0.copyload = load i64, i64* %addr, align 1
  %val = sitofp i64 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i

}


define float @codesize_sfct17(i8* nocapture %sp0) optsize {
entry:




  %bitcast = ptrtoint i8* %sp0 to i64
  %add = add i64 %bitcast, -1
  %addr = inttoptr i64 %add to i8*
  %pix_sp0.0.copyload = load i8, i8* %addr, align 1
  %val = sitofp i8 %pix_sp0.0.copyload to float
  %vmull.i = fmul float %val, %val
  ret float %vmull.i
}

define double @codesize_sfct11(i32* nocapture %sp0) minsize {




entry:
  %addr = getelementptr i32, i32* %sp0, i64 1
  %pix_sp0.0.copyload = load i32, i32* %addr, align 1
  %val = sitofp i32 %pix_sp0.0.copyload to double
  %vmull.i = fmul double %val, %val
  ret double %vmull.i
}






define float @float_from_i128(i128 %in) {


  %conv = uitofp i128 %in to float
  ret float %conv
}

define double @double_from_i128(i128 %in) {


  %conv = sitofp i128 %in to double
  ret double %conv
}

define fp128 @fp128_from_i128(i128 %in) {


  %conv = uitofp i128 %in to fp128
  ret fp128 %conv
}

define i128 @i128_from_float(float %in) {


  %conv = fptosi float %in to i128
  ret i128 %conv
}

define i128 @i128_from_double(double %in) {


  %conv = fptoui double %in to i128
  ret i128 %conv
}

define i128 @i128_from_fp128(fp128 %in) {


  %conv = fptosi fp128 %in to i128
  ret i128 %conv
}

