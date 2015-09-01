

define void @test1sp(float %a, float %b, float %c, float %e, float* nocapture %d) #0 {
entry:
  %0 = tail call float @llvm.fma.f32(float %b, float %c, float %a)
  store float %0, float* %d, align 4
  %1 = tail call float @llvm.fma.f32(float %b, float %e, float %a)
  %arrayidx1 = getelementptr inbounds float, float* %d, i64 1
  store float %1, float* %arrayidx1, align 4
  ret void

















}

define void @test2sp(float %a, float %b, float %c, float %e, float %f, float* nocapture %d) #0 {
entry:
  %0 = tail call float @llvm.fma.f32(float %b, float %c, float %a)
  store float %0, float* %d, align 4
  %1 = tail call float @llvm.fma.f32(float %b, float %e, float %a)
  %arrayidx1 = getelementptr inbounds float, float* %d, i64 1
  store float %1, float* %arrayidx1, align 4
  %2 = tail call float @llvm.fma.f32(float %b, float %f, float %a)
  %arrayidx2 = getelementptr inbounds float, float* %d, i64 2
  store float %2, float* %arrayidx2, align 4
  ret void

























}

define void @test3sp(float %a, float %b, float %c, float %e, float %f, float* nocapture %d) #0 {
entry:
  %0 = tail call float @llvm.fma.f32(float %b, float %c, float %a)
  store float %0, float* %d, align 4
  %1 = tail call float @llvm.fma.f32(float %b, float %e, float %a)
  %2 = tail call float @llvm.fma.f32(float %b, float %c, float %1)
  %arrayidx1 = getelementptr inbounds float, float* %d, i64 3
  store float %2, float* %arrayidx1, align 4
  %3 = tail call float @llvm.fma.f32(float %b, float %f, float %a)
  %arrayidx2 = getelementptr inbounds float, float* %d, i64 2
  store float %3, float* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds float, float* %d, i64 1
  store float %1, float* %arrayidx3, align 4
  ret void

































}

define void @test4sp(float %a, float %b, float %c, float %e, float %f, float* nocapture %d) #0 {
entry:
  %0 = tail call float @llvm.fma.f32(float %b, float %c, float %a)
  store float %0, float* %d, align 4
  %1 = tail call float @llvm.fma.f32(float %b, float %e, float %a)
  %arrayidx1 = getelementptr inbounds float, float* %d, i64 1
  store float %1, float* %arrayidx1, align 4
  %2 = tail call float @llvm.fma.f32(float %b, float %c, float %1)
  %arrayidx3 = getelementptr inbounds float, float* %d, i64 3
  store float %2, float* %arrayidx3, align 4
  %3 = tail call float @llvm.fma.f32(float %b, float %f, float %a)
  %arrayidx4 = getelementptr inbounds float, float* %d, i64 2
  store float %3, float* %arrayidx4, align 4
  ret void



































}

declare float @llvm.fma.f32(float, float, float) #0
