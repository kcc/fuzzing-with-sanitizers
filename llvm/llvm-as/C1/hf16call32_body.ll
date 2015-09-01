

@x = external global float
@xd = external global double
@y = external global float
@yd = external global double
@ret_sf = external global float
@ret_df = external global double
@ret_sc = external global { float, float }
@ret_dc = external global { double, double }


define void @v_sf(float %p) #0 {
entry:
  %p.addr = alloca float, align 4
  store float %p, float* %p.addr, align 4
  %0 = load float, float* %p.addr, align 4
  store float %0, float* @x, align 4
  ret void
}








declare i32 @printf(i8*, ...) #1


define void @v_df(double %p) #0 {
entry:
  %p.addr = alloca double, align 8
  store double %p, double* %p.addr, align 8
  %0 = load double, double* %p.addr, align 8
  store double %0, double* @xd, align 8
  ret void
}











define void @v_sf_sf(float %p1, float %p2) #0 {
entry:
  %p1.addr = alloca float, align 4
  %p2.addr = alloca float, align 4
  store float %p1, float* %p1.addr, align 4
  store float %p2, float* %p2.addr, align 4
  %0 = load float, float* %p1.addr, align 4
  store float %0, float* @x, align 4
  %1 = load float, float* %p2.addr, align 4
  store float %1, float* @y, align 4
  ret void
}











define void @v_sf_df(float %p1, double %p2) #0 {
entry:
  %p1.addr = alloca float, align 4
  %p2.addr = alloca double, align 8
  store float %p1, float* %p1.addr, align 4
  store double %p2, double* %p2.addr, align 8
  %0 = load float, float* %p1.addr, align 4
  store float %0, float* @x, align 4
  %1 = load double, double* %p2.addr, align 8
  store double %1, double* @yd, align 8
  ret void
}












define void @v_df_sf(double %p1, float %p2) #0 {
entry:
  %p1.addr = alloca double, align 8
  %p2.addr = alloca float, align 4
  store double %p1, double* %p1.addr, align 8
  store float %p2, float* %p2.addr, align 4
  %0 = load double, double* %p1.addr, align 8
  store double %0, double* @xd, align 8
  %1 = load float, float* %p2.addr, align 4
  store float %1, float* @y, align 4
  ret void
}












define void @v_df_df(double %p1, double %p2) #0 {
entry:
  %p1.addr = alloca double, align 8
  %p2.addr = alloca double, align 8
  store double %p1, double* %p1.addr, align 8
  store double %p2, double* %p2.addr, align 8
  %0 = load double, double* %p1.addr, align 8
  store double %0, double* @xd, align 8
  %1 = load double, double* %p2.addr, align 8
  store double %1, double* @yd, align 8
  ret void
}













define float @sf_v() #0 {
entry:
  %0 = load float, float* @ret_sf, align 4
  ret float %0
}


define float @sf_sf(float %p) #0 {
entry:
  %p.addr = alloca float, align 4
  store float %p, float* %p.addr, align 4
  %0 = load float, float* %p.addr, align 4
  store float %0, float* @x, align 4
  %1 = load float, float* @ret_sf, align 4
  ret float %1
}












define float @sf_df(double %p) #0 {
entry:
  %p.addr = alloca double, align 8
  store double %p, double* %p.addr, align 8
  %0 = load double, double* %p.addr, align 8
  store double %0, double* @xd, align 8
  %1 = load float, float* @ret_sf, align 4
  ret float %1
}











define float @sf_sf_sf(float %p1, float %p2) #0 {
entry:
  %p1.addr = alloca float, align 4
  %p2.addr = alloca float, align 4
  store float %p1, float* %p1.addr, align 4
  store float %p2, float* %p2.addr, align 4
  %0 = load float, float* %p1.addr, align 4
  store float %0, float* @x, align 4
  %1 = load float, float* %p2.addr, align 4
  store float %1, float* @y, align 4
  %2 = load float, float* @ret_sf, align 4
  ret float %2
}











define float @sf_sf_df(float %p1, double %p2) #0 {
entry:
  %p1.addr = alloca float, align 4
  %p2.addr = alloca double, align 8
  store float %p1, float* %p1.addr, align 4
  store double %p2, double* %p2.addr, align 8
  %0 = load float, float* %p1.addr, align 4
  store float %0, float* @x, align 4
  %1 = load double, double* %p2.addr, align 8
  store double %1, double* @yd, align 8
  %2 = load float, float* @ret_sf, align 4
  ret float %2
}












define float @sf_df_sf(double %p1, float %p2) #0 {
entry:
  %p1.addr = alloca double, align 8
  %p2.addr = alloca float, align 4
  store double %p1, double* %p1.addr, align 8
  store float %p2, float* %p2.addr, align 4
  %0 = load double, double* %p1.addr, align 8
  store double %0, double* @xd, align 8
  %1 = load float, float* %p2.addr, align 4
  store float %1, float* @y, align 4
  %2 = load float, float* @ret_sf, align 4
  ret float %2
}












define float @sf_df_df(double %p1, double %p2) #0 {
entry:
  %p1.addr = alloca double, align 8
  %p2.addr = alloca double, align 8
  store double %p1, double* %p1.addr, align 8
  store double %p2, double* %p2.addr, align 8
  %0 = load double, double* %p1.addr, align 8
  store double %0, double* @xd, align 8
  %1 = load double, double* %p2.addr, align 8
  store double %1, double* @yd, align 8
  %2 = load float, float* @ret_sf, align 4
  ret float %2
}












attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
