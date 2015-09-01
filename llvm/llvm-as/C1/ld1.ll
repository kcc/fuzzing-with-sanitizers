target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"


define double @test1(double* %a, double* %b, double* %c) nounwind uwtable readonly {
entry:
  %i0 = load double, double* %a, align 8
  %i1 = load double, double* %b, align 8
  %mul = fmul double %i0, %i1
  %i2 = load double, double* %c, align 8
  %add = fadd double %mul, %i2
  %arrayidx3 = getelementptr inbounds double, double* %a, i64 1
  %i3 = load double, double* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds double, double* %b, i64 1
  %i4 = load double, double* %arrayidx4, align 8
  %mul5 = fmul double %i3, %i4
  %arrayidx6 = getelementptr inbounds double, double* %c, i64 1
  %i5 = load double, double* %arrayidx6, align 8
  %add7 = fadd double %mul5, %i5
  %mul9 = fmul double %add, %i1
  %add11 = fadd double %mul9, %i2
  %mul13 = fmul double %add7, %i4
  %add15 = fadd double %mul13, %i5
  %mul16 = fmul double %add11, %add15
  ret double %mul16















}

