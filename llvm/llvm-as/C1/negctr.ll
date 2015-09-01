

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define void @main() #0 {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 0
  br i1 %exitcond, label %for.end, label %for.body








for.end:                                          
  ret void
}

define void @main1() #0 {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 0
  br i1 %exitcond, label %for.end, label %for.body






for.end:                                          
  ret void
}

define void @main2() #0 {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, -100000
  br i1 %exitcond, label %for.end, label %for.body







for.end:                                          
  ret void
}

define void @main3() #0 {
entry:
  br i1 undef, label %for.end, label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 127984, %entry ]
  %indvars.iv.next = add i64 %indvars.iv, -16
  %exitcond = icmp eq i64 %indvars.iv.next, -16
  br i1 %exitcond, label %for.end, label %for.body






for.end:                                          
  ret void
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
