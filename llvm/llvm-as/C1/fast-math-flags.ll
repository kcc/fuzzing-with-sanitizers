



@addr   = external global i64
@select = external global i1
@vec    = external global <3 x float>
@arr    = external global [3 x float]

define float @none(float %x, float %y) {
entry:

  %vec    = load  <3 x float>,  <3 x float>* @vec

  %select = load i1, i1* @select

  %arr    = load [3 x float], [3 x float]* @arr


  %a = fadd  float %x, %y

  %a_vec = fadd  <3 x float> %vec, %vec

  %b = fsub  float %x, %y

  %b_vec = fsub  <3 x float> %vec, %vec

  %c = fmul  float %x, %y

  %c_vec = fmul  <3 x float> %vec, %vec

  %d = fdiv  float %x, %y

  %d_vec = fdiv  <3 x float> %vec, %vec

  %e = frem  float %x, %y

  %e_vec = frem  <3 x float> %vec, %vec

  ret  float %e
}


define float @no_nan(float %x, float %y) {
entry:

  %vec    = load  <3 x float>,  <3 x float>* @vec

  %select = load i1, i1* @select

  %arr    = load  [3 x float],  [3 x float]* @arr


  %a = fadd nnan  float %x, %y

  %a_vec = fadd nnan  <3 x float> %vec, %vec

  %b = fsub nnan  float %x, %y

  %b_vec = fsub nnan  <3 x float> %vec, %vec

  %c = fmul nnan  float %x, %y

  %c_vec = fmul nnan <3 x float> %vec, %vec

  %d = fdiv nnan float %x, %y

  %d_vec = fdiv nnan <3 x float> %vec, %vec

  %e = frem nnan  float %x, %y

  %e_vec = frem nnan  <3 x float> %vec, %vec

  ret float %e
}


define float @no_nan_inf(float %x, float %y) {
entry:

  %vec    = load <3 x float>, <3 x float>* @vec

  %select = load i1, i1* @select

  %arr    = load [3 x float], [3 x float]* @arr


  %a = fadd ninf nnan  float %x, %y

  %a_vec = fadd nnan  <3 x float> %vec, %vec

  %b = fsub nnan  float %x, %y

  %b_vec = fsub ninf nnan  <3 x float> %vec, %vec

  %c = fmul nnan  float %x, %y

  %c_vec = fmul nnan <3 x float> %vec, %vec

  %d = fdiv ninf nnan float %x, %y

  %d_vec = fdiv nnan <3 x float> %vec, %vec

  %e = frem nnan  float %x, %y

  %e_vec = frem ninf nnan  <3 x float> %vec, %vec

  ret  float %e
}


define float @mixed_flags(float %x, float %y) {
entry:

  %vec    = load <3 x float>, <3 x float>* @vec

  %select = load i1, i1* @select

  %arr    = load [3 x float], [3 x float]* @arr


  %a = fadd ninf nnan float %x, %y

  %a_vec = fadd nnan <3 x float> %vec, %vec

  %b = fsub nnan nsz fast float %x, %y

  %b_vec = fsub nnan <3 x float> %vec, %vec

  %c = fmul nsz fast arcp float %x, %y

  %c_vec = fmul nsz <3 x float> %vec, %vec

  %d = fdiv arcp ninf nnan float %x, %y

  %d_vec = fdiv fast nnan arcp <3 x float> %vec, %vec

  %e = frem nnan nsz float %x, %y

  %e_vec = frem nnan <3 x float> %vec, %vec

  ret  float %e
}
