




@x = common global [128000 x float] zeroinitializer, align 4
@y = global float* getelementptr inbounds ([128000 x float], [128000 x float]* @x, i32 0, i32 0), align 4
@result = common global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [5 x i8] c"%f \0A\00", align 1


define void @foo() {
entry:

  %0 = load float*, float** @y, align 4
  %arrayidx = getelementptr inbounds float, float* %0, i32 64000
  store float 5.500000e+00, float* %arrayidx, align 4








  ret void

}


define void @goo() {
entry:

  %0 = load float*, float** @y, align 4
  %arrayidx = getelementptr inbounds float, float* %0, i32 64000
  %1 = load float, float* %arrayidx, align 4
  store float %1, float* @result, align 4









  ret void
}
















