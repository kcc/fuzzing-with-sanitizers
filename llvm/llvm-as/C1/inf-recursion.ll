







define double @fabs(double %f) {
entry:
        %tmp2 = call double @fabs( double %f )          
        ret double %tmp2
}






define double @foo(double %f) {
        %t= call double @foo(double %f)
        ret double %t
}




define float @fabsf(float %f) {
        %t= call float @fabsf(float 2.0)
        ret float %t
}

declare x86_fp80 @fabsl(x86_fp80 %f)


define i32 @PR22704(i1 %bool) {
entry:
  br i1 %bool, label %t, label %f

t:
  %call1 = call i32 @PR22704(i1 1)
  br label %return

f:
  %call = call i32 @PR22704(i1 1)
  br label %return

return:
  ret i32 0




}
