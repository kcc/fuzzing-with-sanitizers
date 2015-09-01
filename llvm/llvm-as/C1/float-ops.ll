




define float @add_f(float %a, float %b) {
entry:



  %0 = fadd float %a, %b
  ret float %0
}

define double @add_d(double %a, double %b) {
entry:




  %0 = fadd double %a, %b
  ret double %0
}

define float @sub_f(float %a, float %b) {
entry:



  %0 = fsub float %a, %b
  ret float %0
}

define double @sub_d(double %a, double %b) {
entry:




  %0 = fsub double %a, %b
  ret double %0
}

define float @mul_f(float %a, float %b) {
entry:



  %0 = fmul float %a, %b
  ret float %0
}

define double @mul_d(double %a, double %b) {
entry:




  %0 = fmul double %a, %b
  ret double %0
}

define float @div_f(float %a, float %b) {
entry:



  %0 = fdiv float %a, %b
  ret float %0
}

define double @div_d(double %a, double %b) {
entry:




  %0 = fdiv double %a, %b
  ret double %0
}

define float @rem_f(float %a, float %b) {
entry:



  %0 = frem float %a, %b
  ret float %0
}

define double @rem_d(double %a, double %b) {
entry:



  %0 = frem double %a, %b
  ret double %0
}

define float @load_f(float* %a) {
entry:



  %0 = load float, float* %a, align 4
  ret float %0
}

define double @load_d(double* %a) {
entry:



  %0 = load double, double* %a, align 8
  ret double %0
}

define void @store_f(float* %a, float %b) {
entry:



  store float %b, float* %a, align 4
  ret void
}

define void @store_d(double* %a, double %b) {
entry:



  store double %b, double* %a, align 8
  ret void
}

define double @f_to_d(float %a) {




  %1 = fpext float %a to double
  ret double %1
}

define float @d_to_f(double %a) {




  %1 = fptrunc double %a to float
  ret float %1
}

define i32 @f_to_si(float %a) {




  %1 = fptosi float %a to i32
  ret i32 %1
}

define i32 @d_to_si(double %a) {






  %1 = fptosi double %a to i32
  ret i32 %1
}

define i32 @f_to_ui(float %a) {




  %1 = fptoui float %a to i32
  ret i32 %1
}

define i32 @d_to_ui(double %a) {






  %1 = fptoui double %a to i32
  ret i32 %1
}

define float @si_to_f(i32 %a) {



  %1 = sitofp i32 %a to float
  ret float %1
}

define double @si_to_d(i32 %a) {




  %1 = sitofp i32 %a to double
  ret double %1
}

define float @ui_to_f(i32 %a) {



  %1 = uitofp i32 %a to float
  ret float %1
}

define double @ui_to_d(i32 %a) {




  %1 = uitofp i32 %a to double
  ret double %1
}

define float @bitcast_i_to_f(i32 %a) {



  %1 = bitcast i32 %a to float
  ret float %1
}

define double @bitcast_i_to_d(i64 %a) {



  %1 = bitcast i64 %a to double
  ret double %1
}

define i32 @bitcast_f_to_i(float %a) {



  %1 = bitcast float %a to i32
  ret i32 %1
}

define i64 @bitcast_d_to_i(double %a) {



  %1 = bitcast double %a to i64
  ret i64 %1
}

define float @select_f(float %a, float %b, i1 %c) {







  %1 = select i1 %c, float %a, float %b
  ret float %1
}

define double @select_d(double %a, double %b, i1 %c) {
















  %1 = select i1 %c, double %a, double %b
  ret double %1
}
