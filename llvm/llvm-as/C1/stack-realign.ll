



target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.s = type { i32, i32 }

declare void @bar(i32*)

@barbaz = external global i32

define void @goo(%struct.s* byval nocapture readonly %a) {
entry:
  %x = alloca [2 x i32], align 32
  %a1 = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 0
  %0 = load i32, i32* %a1, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %x, i64 0, i64 0
  store i32 %0, i32* %arrayidx, align 32
  %b = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 1
  %1 = load i32, i32* %b, align 4
  %2 = load i32, i32* @barbaz, align 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %x, i64 0, i64 1
  store i32 %2, i32* %arrayidx2, align 4
  call void @bar(i32* %arrayidx)
  ret void
}





































































define void @hoo(%struct.s* byval nocapture readonly %a) {
entry:
  %x = alloca [200000 x i32], align 32
  %a1 = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 0
  %0 = load i32, i32* %a1, align 4
  %arrayidx = getelementptr inbounds [200000 x i32], [200000 x i32]* %x, i64 0, i64 0
  store i32 %0, i32* %arrayidx, align 32
  %b = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 1
  %1 = load i32, i32* %b, align 4
  %arrayidx2 = getelementptr inbounds [200000 x i32], [200000 x i32]* %x, i64 0, i64 1
  store i32 %1, i32* %arrayidx2, align 4
  call void @bar(i32* %arrayidx)
  ret void
}















































define void @loo(%struct.s* byval nocapture readonly %a) {
entry:
  %x = alloca [2 x i32], align 32
  %a1 = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 0
  %0 = load i32, i32* %a1, align 4
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %x, i64 0, i64 0
  store i32 %0, i32* %arrayidx, align 32
  %b = getelementptr inbounds %struct.s, %struct.s* %a, i64 0, i32 1
  %1 = load i32, i32* %b, align 4
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %x, i64 0, i64 1
  store i32 %1, i32* %arrayidx2, align 4
  call void @bar(i32* %arrayidx)
  call void asm sideeffect "", "~{f30}"() nounwind
  ret void
}

































