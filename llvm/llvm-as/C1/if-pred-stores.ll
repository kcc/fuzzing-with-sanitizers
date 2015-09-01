

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"


define i32 @test(i32* nocapture %f) #0 {
entry:
  br label %for.body

























































for.body:
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32, i32* %f, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 100
  br i1 %cmp1, label %if.then, label %for.inc

if.then:
  %add = add nsw i32 %0, 20
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 128
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret i32 0
}










define void @bug18724() {
entry:
  br label %for.body9

for.body9:
  br i1 undef, label %for.inc26, label %for.body14

for.body14:
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc23 ], [ undef, %for.body9 ]
  %iNewChunks.120 = phi i32 [ %iNewChunks.2, %for.inc23 ], [ undef, %for.body9 ]
  %arrayidx16 = getelementptr inbounds [768 x i32], [768 x i32]* undef, i64 0, i64 %indvars.iv3
  %tmp = load i32, i32* %arrayidx16, align 4
  br i1 undef, label %if.then18, label %for.inc23

if.then18:
  store i32 2, i32* %arrayidx16, align 4
  %inc21 = add nsw i32 %iNewChunks.120, 1
  br label %for.inc23

for.inc23:
  %iNewChunks.2 = phi i32 [ %inc21, %if.then18 ], [ %iNewChunks.120, %for.body14 ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %tmp1 = trunc i64 %indvars.iv3 to i32
  %cmp13 = icmp slt i32 %tmp1, 0
  br i1 %cmp13, label %for.body14, label %for.inc26

for.inc26:
  %iNewChunks.1.lcssa = phi i32 [ undef, %for.body9 ], [ %iNewChunks.2, %for.inc23 ]
  unreachable
}
