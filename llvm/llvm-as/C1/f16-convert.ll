

define float @load0(i16* nocapture readonly %a) nounwind {





  %tmp = load i16, i16* %a, align 2
  %tmp1 = tail call float @llvm.convert.from.fp16.f32(i16 %tmp)
  ret float %tmp1
}

define double @load1(i16* nocapture readonly %a) nounwind {





  %tmp = load i16, i16* %a, align 2
  %conv = tail call double @llvm.convert.from.fp16.f64(i16 %tmp)
  ret double %conv
}

define float @load2(i16* nocapture readonly %a, i32 %i) nounwind {





  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %idxprom
  %tmp = load i16, i16* %arrayidx, align 2
  %tmp1 = tail call float @llvm.convert.from.fp16.f32(i16 %tmp)
  ret float %tmp1
}

define double @load3(i16* nocapture readonly %a, i32 %i) nounwind {





  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %idxprom
  %tmp = load i16, i16* %arrayidx, align 2
  %conv = tail call double @llvm.convert.from.fp16.f64(i16 %tmp)
  ret double %conv
}

define float @load4(i16* nocapture readonly %a, i64 %i) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %i
  %tmp = load i16, i16* %arrayidx, align 2
  %tmp1 = tail call float @llvm.convert.from.fp16.f32(i16 %tmp)
  ret float %tmp1
}

define double @load5(i16* nocapture readonly %a, i64 %i) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %i
  %tmp = load i16, i16* %arrayidx, align 2
  %conv = tail call double @llvm.convert.from.fp16.f64(i16 %tmp)
  ret double %conv
}

define float @load6(i16* nocapture readonly %a) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 10
  %tmp = load i16, i16* %arrayidx, align 2
  %tmp1 = tail call float @llvm.convert.from.fp16.f32(i16 %tmp)
  ret float %tmp1
}

define double @load7(i16* nocapture readonly %a) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 10
  %tmp = load i16, i16* %arrayidx, align 2
  %conv = tail call double @llvm.convert.from.fp16.f64(i16 %tmp)
  ret double %conv
}

define float @load8(i16* nocapture readonly %a) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 -10
  %tmp = load i16, i16* %arrayidx, align 2
  %tmp1 = tail call float @llvm.convert.from.fp16.f32(i16 %tmp)
  ret float %tmp1
}

define double @load9(i16* nocapture readonly %a) nounwind {





  %arrayidx = getelementptr inbounds i16, i16* %a, i64 -10
  %tmp = load i16, i16* %arrayidx, align 2
  %conv = tail call double @llvm.convert.from.fp16.f64(i16 %tmp)
  ret double %conv
}

define void @store0(i16* nocapture %a, float %val) nounwind {





  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %val)
  store i16 %tmp, i16* %a, align 2
  ret void
}

define void @store1(i16* nocapture %a, double %val) nounwind {






  %conv = fptrunc double %val to float
  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %conv)
  store i16 %tmp, i16* %a, align 2
  ret void
}

define void @store2(i16* nocapture %a, i32 %i, float %val) nounwind {





  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %val)
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %idxprom
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store3(i16* nocapture %a, i32 %i, double %val) nounwind {






  %conv = fptrunc double %val to float
  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %conv)
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %idxprom
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store4(i16* nocapture %a, i64 %i, float %val) nounwind {





  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %val)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %i
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store5(i16* nocapture %a, i64 %i, double %val) nounwind {






  %conv = fptrunc double %val to float
  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %conv)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 %i
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store6(i16* nocapture %a, float %val) nounwind {





  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %val)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 10
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store7(i16* nocapture %a, double %val) nounwind {






  %conv = fptrunc double %val to float
  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %conv)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 10
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store8(i16* nocapture %a, float %val) nounwind {





  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %val)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 -10
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

define void @store9(i16* nocapture %a, double %val) nounwind {






  %conv = fptrunc double %val to float
  %tmp = tail call i16 @llvm.convert.to.fp16.f32(float %conv)
  %arrayidx = getelementptr inbounds i16, i16* %a, i64 -10
  store i16 %tmp, i16* %arrayidx, align 2
  ret void
}

declare i16 @llvm.convert.to.fp16.f32(float) nounwind readnone
declare float @llvm.convert.from.fp16.f32(i16) nounwind readnone
declare i16 @llvm.convert.to.fp16.f64(double) nounwind readnone
declare double @llvm.convert.from.fp16.f64(i16) nounwind readnone
