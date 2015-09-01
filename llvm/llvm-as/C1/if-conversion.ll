

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.9.0"






















define i32 @function0(i32* nocapture %a, i32* nocapture %b, i32 %start, i32 %end) nounwind uwtable ssp {
entry:
  %cmp16 = icmp slt i32 %start, %end
  br i1 %cmp16, label %for.body.lr.ph, label %for.end

for.body.lr.ph:
  %0 = sext i32 %start to i64
  br label %for.body

for.body:
  %indvars.iv = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx4 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %1, %2
  br i1 %cmp5, label %if.then, label %if.end

if.then:
  %mul = mul i32 %1, 5
  %add = add i32 %mul, 3
  br label %if.end

if.end:
  %k.0 = phi i32 [ %add, %if.then ], [ %1, %for.body ]
  store i32 %k.0, i32* %arrayidx, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %end
  br i1 %cmp, label %for.body, label %for.end

for.end:
  ret i32 undef
}


















define i32 @reduction_func(i32* nocapture %A, i32 %n) nounwind uwtable readonly ssp {
entry:
  %cmp10 = icmp sgt i32 %n, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %sum.011 = phi i32 [ %sum.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32, i32* %A, i64 %indvars.iv
  %0 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %0, 30
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          
  %add = add i32 %sum.011, 2
  %add4 = add i32 %add, %0
  br label %for.inc

for.inc:                                          
  %sum.1 = phi i32 [ %add4, %if.then ], [ %sum.011, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %sum.1, %for.inc ]
  ret i32 %sum.0.lcssa
}

@a = common global [1 x i32*] zeroinitializer, align 8
@c = common global i32* null, align 8








define i32 @trapping_constant_expression() {
entry:
  br label %for.body

for.body:
  %inc3 = phi i32 [ 0, %entry ], [ %inc, %cond.end ]
  %or2 = phi i32 [ 0, %entry ], [ %or, %cond.end ]
  br i1 icmp eq (i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @a, i64 0, i64 0), i32** @c), label %cond.false, label %cond.end

cond.false:
  br label %cond.end

cond.end:
  %cond = phi i32 [ sdiv (i32 1, i32 zext (i1 icmp eq (i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @a, i64 0, i64 0), i32** @c) to i32)), %cond.false ], [ 0, %for.body ]
  %or = or i32 %or2, %cond
  %inc = add nsw i32 %inc3, 1
  %cmp = icmp slt i32 %inc, 128
  br i1 %cmp, label %for.body, label %for.end

for.end:
  ret i32 %or
}








define i32 @trapping_constant_expression2() {
entry:
  br label %for.body

for.body:
  %inc3 = phi i32 [ 0, %entry ], [ %inc, %cond.end ]
  %or2 = phi i32 [ 0, %entry ], [ %or, %cond.end ]
  br i1 icmp eq (i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @a, i64 0, i64 0), i32** @c), label %cond.false, label %cond.end

cond.false:
  %cond.1 = or i32 %inc3, sdiv (i32 1, i32 zext (i1 icmp eq (i32** getelementptr inbounds ([1 x i32*], [1 x i32*]* @a, i64 0, i64 1), i32** @c) to i32))
  br label %cond.end

cond.end:
  %cond = phi i32 [ %cond.1, %cond.false ], [ %inc3, %for.body ]
  %or = or i32 %or2, %cond
  %inc = add nsw i32 %inc3, 1
  %cmp = icmp slt i32 %inc, 128
  br i1 %cmp, label %for.body, label %for.end

for.end:
  ret i32 %or
}
