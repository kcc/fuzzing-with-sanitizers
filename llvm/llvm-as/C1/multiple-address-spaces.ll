











target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = common addrspace(1) global [40000 x i8] zeroinitializer, align 16
@X = common global [40000 x i8] zeroinitializer, align 16






define i32 @main() #0 {
entry:
  br label %for.body

for.body:                                         
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [40000 x i8], [40000 x i8] addrspace(1)* @Y, i64 0, i64 %indvars.iv
  %0 = load i8, i8 addrspace(1)* %arrayidx, align 1
  %add = add i8 %0, 1
  %arrayidx3 = getelementptr inbounds [40000 x i8], [40000 x i8]* @X, i64 0, i64 %indvars.iv
  store i8 %add, i8* %arrayidx3, align 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 40000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 0
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
