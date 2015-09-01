

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"

%struct.coordinate = type { i32, i32 }




















define i32 @foo(%struct.coordinate* nocapture %A, i32 %n) nounwind uwtable readonly ssp {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %x = getelementptr inbounds %struct.coordinate, %struct.coordinate* %A, i64 %indvars.iv, i32 0
  %0 = load i32, i32* %x, align 4
  %add = add nsw i32 %0, %sum.05
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %sum.0.lcssa
}

%struct.lit = type { i32 }




















define i32 @bar(%struct.lit* nocapture %A, i32 %n) nounwind uwtable readonly ssp {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi i32 [ %add, %for.body ], [ 0, %entry ]
  %x = getelementptr inbounds %struct.lit, %struct.lit* %A, i64 %indvars.iv, i32 0
  %0 = load i32, i32* %x, align 4
  %add = add nsw i32 %0, %sum.05
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.body ]
  ret i32 %sum.0.lcssa
}
