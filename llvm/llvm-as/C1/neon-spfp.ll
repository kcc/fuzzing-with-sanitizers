




















@.str = private unnamed_addr constant [12 x i8] c"S317\09%.5g \0A\00", align 1
















define i32 @main() {
entry:
  br label %for.body

for.body:                                         
  %i.04 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %q.03 = phi float [ 1.000000e+00, %entry ], [ %mul, %for.body ]
  %mul = fmul float %q.03, 0x3FEFAE1480000000



















  %conv = fpext float %mul to double
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), double %conv) #1
  %inc = add nsw i32 %i.04, 1
  %exitcond = icmp eq i32 %inc, 16000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...)
