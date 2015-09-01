

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"














define i32 @foo(i32* noalias nocapture %B, i32* noalias nocapture %A, i32 %n, i32 %m) #0 {
entry:
  %0 = load i32, i32* %A, align 4
  %mul238 = add i32 %m, %n
  %add = mul i32 %0, %mul238
  store i32 %add, i32* %B, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %add8 = mul i32 %1, %mul238
  %arrayidx9 = getelementptr inbounds i32, i32* %B, i64 1
  store i32 %add8, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %A, i64 2
  %2 = load i32, i32* %arrayidx10, align 4
  %add14 = mul i32 %2, %mul238
  %arrayidx15 = getelementptr inbounds i32, i32* %B, i64 2
  store i32 %add14, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds i32, i32* %A, i64 3
  %3 = load i32, i32* %arrayidx16, align 4
  %add20 = mul i32 %3, %mul238
  %arrayidx21 = getelementptr inbounds i32, i32* %B, i64 3
  store i32 %add20, i32* %arrayidx21, align 4
  ret i32 0
}















define i32 @extr_user(i32* noalias nocapture %B, i32* noalias nocapture %A, i32 %n, i32 %m) {
entry:
  %0 = load i32, i32* %A, align 4
  %mul238 = add i32 %m, %n
  %add = mul i32 %0, %mul238
  store i32 %add, i32* %B, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %add8 = mul i32 %1, %mul238
  %arrayidx9 = getelementptr inbounds i32, i32* %B, i64 1
  store i32 %add8, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %A, i64 2
  %2 = load i32, i32* %arrayidx10, align 4
  %add14 = mul i32 %2, %mul238
  %arrayidx15 = getelementptr inbounds i32, i32* %B, i64 2
  store i32 %add14, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds i32, i32* %A, i64 3
  %3 = load i32, i32* %arrayidx16, align 4
  %add20 = mul i32 %3, %mul238
  %arrayidx21 = getelementptr inbounds i32, i32* %B, i64 3
  store i32 %add20, i32* %arrayidx21, align 4
  ret i32 %0  
}







define i32 @extr_user1(i32* noalias nocapture %B, i32* noalias nocapture %A, i32 %n, i32 %m) {
entry:
  %0 = load i32, i32* %A, align 4
  %mul238 = add i32 %m, %n
  %add = mul i32 %0, %mul238
  store i32 %add, i32* %B, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %A, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %add8 = mul i32 %1, %mul238
  %arrayidx9 = getelementptr inbounds i32, i32* %B, i64 1
  store i32 %add8, i32* %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds i32, i32* %A, i64 2
  %2 = load i32, i32* %arrayidx10, align 4
  %add14 = mul i32 %2, %mul238
  %arrayidx15 = getelementptr inbounds i32, i32* %B, i64 2
  store i32 %add14, i32* %arrayidx15, align 4
  %arrayidx16 = getelementptr inbounds i32, i32* %A, i64 3
  %3 = load i32, i32* %arrayidx16, align 4
  %add20 = mul i32 %3, %mul238
  %arrayidx21 = getelementptr inbounds i32, i32* %B, i64 3
  store i32 %add20, i32* %arrayidx21, align 4
  ret i32 %1  
}
