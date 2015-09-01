
target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define signext i32 @foo(i32 signext %a, i32 signext %b, i32* nocapture %c) #0 {
entry:
  %sub = sub nsw i32 %a, %b
  store i32 %sub, i32* %c, align 4
  %cmp = icmp sgt i32 %a, %b
  %cond = select i1 %cmp, i32 %a, i32 %b
  ret i32 %cond



}

define signext i32 @foo2(i32 signext %a, i32 signext %b, i32* nocapture %c) #0 {
entry:
  %shl = shl i32 %a, %b
  store i32 %shl, i32* %c, align 4
  %cmp = icmp sgt i32 %shl, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv



}

define i64 @fool(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %a, %b
  store i64 %sub, i64* %c, align 8
  %cmp = icmp sgt i64 %a, %b
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond





}

define i64 @foolb(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %a, %b
  store i64 %sub, i64* %c, align 8
  %cmp = icmp sle i64 %a, %b
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond





}

define i64 @foolc(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %b, %a
  store i64 %sub, i64* %c, align 8
  %cmp = icmp sgt i64 %a, %b
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond





}

define i64 @foold(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %b, %a
  store i64 %sub, i64* %c, align 8
  %cmp = icmp eq i64 %a, %b
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond





}

define i64 @foold2(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %a, %b
  store i64 %sub, i64* %c, align 8
  %cmp = icmp eq i64 %a, %b
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond





}

define i64 @foo2l(i64 %a, i64 %b, i64* nocapture %c) #0 {
entry:
  %shl = shl i64 %a, %b
  store i64 %shl, i64* %c, align 8
  %cmp = icmp sgt i64 %shl, 0
  %conv1 = zext i1 %cmp to i64
  ret i64 %conv1




}

define double @food(double %a, double %b, double* nocapture %c) #0 {
entry:
  %sub = fsub double %a, %b
  store double %sub, double* %c, align 8
  %cmp = fcmp ogt double %a, %b
  %cond = select i1 %cmp, double %a, double %b
  ret double %cond




}

define float @foof(float %a, float %b, float* nocapture %c) #0 {
entry:
  %sub = fsub float %a, %b
  store float %sub, float* %c, align 4
  %cmp = fcmp ogt float %a, %b
  %cond = select i1 %cmp, float %a, float %b
  ret float %cond




}

declare i64 @llvm.ctpop.i64(i64)

define signext i64 @fooct(i64 signext %a, i64 signext %b, i64* nocapture %c) #0 {
entry:
  %sub = sub nsw i64 %a, %b
  %subc = call i64 @llvm.ctpop.i64(i64 %sub)
  store i64 %subc, i64* %c, align 4
  %cmp = icmp sgt i64 %subc, 0
  %cond = select i1 %cmp, i64 %a, i64 %b
  ret i64 %cond



}

