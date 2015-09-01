









target triple = "x86_64-unknown-linux-gnu"

define void @f(float* nocapture %x) {
  %tmp = load float, float* %x, align 4
  %add = fadd float %tmp, 1.000000e+00
  store float %add, float* %x, align 4
  %arrayidx1 = getelementptr inbounds float, float* %x, i64 1
  %tmp1 = load float, float* %arrayidx1, align 4
  %add2 = fadd float %tmp1, 1.000000e+00
  store float %add2, float* %arrayidx1, align 4
  %arrayidx3 = getelementptr inbounds float, float* %x, i64 2
  %tmp2 = load float, float* %arrayidx3, align 4
  %add4 = fadd float %tmp2, 1.000000e+00
  store float %add4, float* %arrayidx3, align 4
  %arrayidx5 = getelementptr inbounds float, float* %x, i64 3
  %tmp3 = load float, float* %arrayidx5, align 4
  %add6 = fadd float %tmp3, 1.000000e+00
  store float %add6, float* %arrayidx5, align 4
  ret void
}
