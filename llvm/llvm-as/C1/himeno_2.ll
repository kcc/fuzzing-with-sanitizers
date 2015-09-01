
































%struct.Mat = type { float*, i32, i32, i32, i32 }

define void @jacobi(i32 %nn, %struct.Mat* nocapture %a, %struct.Mat* nocapture %p) nounwind uwtable {
entry:
  %p.rows.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %p, i64 0, i32 2
  %p.rows = load i32, i32* %p.rows.ptr
  %p.rows.sub = add i32 %p.rows, -1
  %p.rows.sext = sext i32 %p.rows.sub to i64
  %p.cols.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %p, i64 0, i32 3
  %p.cols = load i32, i32* %p.cols.ptr
  %p.cols.sub = add i32 %p.cols, -1
  %p.cols.sext = sext i32 %p.cols.sub to i64
  %p.deps.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %p, i64 0, i32 4
  %p.deps = load i32, i32* %p.deps.ptr
  %p.deps.sub = add i32 %p.deps, -1
  %p.deps.sext = sext i32 %p.deps.sub to i64
  %a.cols.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %a, i64 0, i32 3
  %a.cols = load i32, i32* %a.cols.ptr
  %a.cols.sext = sext i32 %a.cols to i64
  %a.deps.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %a, i64 0, i32 4
  %a.deps = load i32, i32* %a.deps.ptr
  %a.deps.sext = sext i32 %a.deps to i64
  %a.base.ptr = getelementptr inbounds %struct.Mat, %struct.Mat* %a, i64 0, i32 0
  %a.base = load float*, float** %a.base.ptr, align 8
  br label %for.i

for.i:                                            
  %i = phi i64 [ %i.inc, %for.i.inc ], [ 1, %entry ]
  br label %for.j

for.j:                                            
  %j = phi i64 [ %j.inc, %for.j.inc ], [ 1, %for.i ]
  br label %for.k

for.k:                                            
  %k = phi i64 [ 1, %for.j ], [ %k.inc, %for.k ]
  %tmp1 = mul nsw i64 %a.cols.sext, %i
  %tmp2 = add i64 %tmp1, %j
  %tmp3 = mul i64 %tmp2, %a.deps.sext
  %tmp4 = add nsw i64 %k, %tmp3
  %arrayidx = getelementptr inbounds float, float* %a.base, i64 %tmp4
  store float 1.000000e+00, float* %arrayidx
  %k.inc = add nsw i64 %k, 1
  %k.exitcond = icmp eq i64 %k.inc, %p.deps.sext
  br i1 %k.exitcond, label %for.j.inc, label %for.k

for.j.inc:                                        
  %j.inc = add nsw i64 %j, 1
  %j.exitcond = icmp eq i64 %j.inc, %p.cols.sext
  br i1 %j.exitcond, label %for.i.inc, label %for.j

for.i.inc:                                        
  %i.inc = add nsw i64 %i, 1
  %i.exitcond = icmp eq i64 %i.inc, %p.rows.sext
  br i1 %i.exitcond, label %end, label %for.i

end:                                              
  ret void
}
