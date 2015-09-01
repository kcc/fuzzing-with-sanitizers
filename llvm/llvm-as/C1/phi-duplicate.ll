
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0"


define void @test(i32 %N, double* %G) nounwind ssp {
entry:
  br label %for.cond

for.cond:                                         
  %j.0 = phi i64 [ 1, %entry ], [ %inc, %for.body ] 
  %cmp = icmp slt i64 %j.0, 1000                  
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %arrayidx = getelementptr inbounds double, double* %G, i64 %j.0 
  %tmp3 = load double, double* %arrayidx                  
  %sub = sub i64 %j.0, 1                          
  %arrayidx6 = getelementptr inbounds double, double* %G, i64 %sub 
  %tmp7 = load double, double* %arrayidx6                 
  %add = fadd double %tmp3, %tmp7                 
  %arrayidx10 = getelementptr inbounds double, double* %G, i64 %j.0 
  store double %add, double* %arrayidx10
  %inc = add nsw i64 %j.0, 1                      
  br label %for.cond

for.end:                                          
  ret void
}











