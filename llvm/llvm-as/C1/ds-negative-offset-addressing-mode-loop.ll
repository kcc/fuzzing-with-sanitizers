



declare i32 @llvm.r600.read.tidig.x() #0
declare void @llvm.AMDGPU.barrier.local() #1



















define void @signed_ds_offset_addressing_loop(float addrspace(1)* noalias nocapture %out, float addrspace(3)* noalias nocapture readonly %lptr, i32 %n) #2 {
entry:
  %x.i = tail call i32 @llvm.r600.read.tidig.x() #0
  %mul = shl nsw i32 %x.i, 1
  br label %for.body

for.body:                                         
  %sum.03 = phi float [ 0.000000e+00, %entry ], [ %add13, %for.body ]
  %offset.02 = phi i32 [ %mul, %entry ], [ %add14, %for.body ]
  %k.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  tail call void @llvm.AMDGPU.barrier.local() #1
  %arrayidx = getelementptr inbounds float, float addrspace(3)* %lptr, i32 %offset.02
  %tmp = load float, float addrspace(3)* %arrayidx, align 4
  %add1 = add nsw i32 %offset.02, 1
  %arrayidx2 = getelementptr inbounds float, float addrspace(3)* %lptr, i32 %add1
  %tmp1 = load float, float addrspace(3)* %arrayidx2, align 4
  %add3 = add nsw i32 %offset.02, 32
  %arrayidx4 = getelementptr inbounds float, float addrspace(3)* %lptr, i32 %add3
  %tmp2 = load float, float addrspace(3)* %arrayidx4, align 4
  %add5 = add nsw i32 %offset.02, 33
  %arrayidx6 = getelementptr inbounds float, float addrspace(3)* %lptr, i32 %add5
  %tmp3 = load float, float addrspace(3)* %arrayidx6, align 4
  %add7 = add nsw i32 %offset.02, 64
  %arrayidx8 = getelementptr inbounds float, float addrspace(3)* %lptr, i32 %add7
  %tmp4 = load float, float addrspace(3)* %arrayidx8, align 4
  %add9 = fadd float %tmp, %tmp1
  %add10 = fadd float %add9, %tmp2
  %add11 = fadd float %add10, %tmp3
  %add12 = fadd float %add11, %tmp4
  %add13 = fadd float %sum.03, %add12
  %inc = add nsw i32 %k.01, 1
  %add14 = add nsw i32 %offset.02, 97
  %exitcond = icmp eq i32 %inc, 8
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  %tmp5 = sext i32 %x.i to i64
  %arrayidx15 = getelementptr inbounds float, float addrspace(1)* %out, i64 %tmp5
  store float %add13, float addrspace(1)* %arrayidx15, align 4
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
