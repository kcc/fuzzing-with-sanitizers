target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"


@A = common global [1024 x float] zeroinitializer, align 16
@B = common global [1024 x float] zeroinitializer, align 16

define i32 @test1() nounwind {

  %V1 = load float, float* getelementptr inbounds ([1024 x float], [1024 x float]* @A, i64 0, i64 0), align 16
  %V2 = load float, float* getelementptr inbounds ([1024 x float], [1024 x float]* @A, i64 0, i64 1), align 4
  %V3= load float, float* getelementptr inbounds ([1024 x float], [1024 x float]* @A, i64 0, i64 2), align 8
  %V4 = load float, float* getelementptr inbounds ([1024 x float], [1024 x float]* @A, i64 0, i64 3), align 4

  store float %V1, float* getelementptr inbounds ([1024 x float], [1024 x float]* @B, i64 0, i64 0), align 16
  store float %V2, float* getelementptr inbounds ([1024 x float], [1024 x float]* @B, i64 0, i64 1), align 4
  store float %V3, float* getelementptr inbounds ([1024 x float], [1024 x float]* @B, i64 0, i64 2), align 8
  store float %V4, float* getelementptr inbounds ([1024 x float], [1024 x float]* @B, i64 0, i64 3), align 4

  ret i32 0

}
