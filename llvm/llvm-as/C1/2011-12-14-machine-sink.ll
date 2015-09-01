


target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"
target triple = "thumbv7-apple-ios4.0.0"


define i32 @foo(i32 %h, i32 %arg1) nounwind readonly ssp {
entry:
  br label %for.cond

for.cond:                                         
  %cmp = icmp slt i32 0, %h
  br i1 %cmp, label %for.body, label %if.end299

for.body:                                         
  %cond0 = icmp ne i32 %arg1, 42
  %v.5 = select i1 %cond0, i32 undef, i32 0
  %0 = load i8, i8* undef, align 1
  %conv88 = zext i8 %0 to i32
  %sub89 = sub nsw i32 0, %conv88
  %cond1 = icmp ne i32 %arg1, 23
  %v.8 = select i1 %cond1, i32 undef, i32 %sub89
  %1 = load i8, i8* null, align 1
  %conv108 = zext i8 %1 to i32
  %2 = load i8, i8* undef, align 1
  %conv110 = zext i8 %2 to i32
  %sub111 = sub nsw i32 %conv108, %conv110
  %cmp112 = icmp slt i32 %sub111, 0
  %sub115 = sub nsw i32 0, %sub111
  %abs = select i1 %cmp112, i32 %sub115, i32 %sub111
  %add95 = add i32 %v.5, %v.8
  %add117 = add i32 %add95, %abs
  br i1 undef, label %for.cond, label %if.end299

if.end299:                                        
  %s.10 = phi i32 [ %add117, %for.body ], [ 0, %for.cond ]
  ret i32 %s.10
}
