










%struct.S = type <{ [4 x float] }>
%struct.S2 = type <{ [4 x double] }>
%struct.S3 = type <{ i8, float }>

@s = external global [4 x %struct.S]
@gf = external global float
@gd = external global double
@s2 = external global [4 x %struct.S2]
@s3 = external global %struct.S3

define float @foo0(float* nocapture %b, i32 %o) nounwind readonly {
entry:
























  %arrayidx = getelementptr inbounds float, float* %b, i32 %o
  %0 = load float, float* %arrayidx, align 4
  ret float %0
}

define double @foo1(double* nocapture %b, i32 %o) nounwind readonly {
entry:
























  %arrayidx = getelementptr inbounds double, double* %b, i32 %o
  %0 = load double, double* %arrayidx, align 8
  ret double %0
}

define float @foo2(i32 %b, i32 %c) nounwind readonly {
entry:

















  %arrayidx1 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* @s, i32 0, i32 %b, i32 0, i32 %c
  %0 = load float, float* %arrayidx1, align 1
  ret float %0
}

define void @foo3(float* nocapture %b, i32 %o) nounwind {
entry:






















  %0 = load float, float* @gf, align 4
  %arrayidx = getelementptr inbounds float, float* %b, i32 %o
  store float %0, float* %arrayidx, align 4
  ret void
}

define void @foo4(double* nocapture %b, i32 %o) nounwind {
entry:






















  %0 = load double, double* @gd, align 8
  %arrayidx = getelementptr inbounds double, double* %b, i32 %o
  store double %0, double* %arrayidx, align 8
  ret void
}

define void @foo5(i32 %b, i32 %c) nounwind {
entry:












  %0 = load float, float* @gf, align 4
  %arrayidx1 = getelementptr inbounds [4 x %struct.S], [4 x %struct.S]* @s, i32 0, i32 %b, i32 0, i32 %c
  store float %0, float* %arrayidx1, align 1
  ret void
}

define double @foo6(i32 %b, i32 %c) nounwind readonly {
entry:












  %arrayidx1 = getelementptr inbounds [4 x %struct.S2], [4 x %struct.S2]* @s2, i32 0, i32 %b, i32 0, i32 %c
  %0 = load double, double* %arrayidx1, align 1
  ret double %0
}

define void @foo7(i32 %b, i32 %c) nounwind {
entry:












  %0 = load double, double* @gd, align 8
  %arrayidx1 = getelementptr inbounds [4 x %struct.S2], [4 x %struct.S2]* @s2, i32 0, i32 %b, i32 0, i32 %c
  store double %0, double* %arrayidx1, align 1
  ret void
}

define float @foo8() nounwind readonly {
entry:












  %0 = load float, float* getelementptr inbounds (%struct.S3, %struct.S3* @s3, i32 0, i32 1), align 1
  ret float %0
}

define void @foo9(float %f) nounwind {
entry:












  store float %f, float* getelementptr inbounds (%struct.S3, %struct.S3* @s3, i32 0, i32 1), align 1
  ret void
}

