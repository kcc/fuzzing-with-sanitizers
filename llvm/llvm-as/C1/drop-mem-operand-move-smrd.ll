











define void @reschedule_global_load_lds_store(i32 addrspace(1)* noalias %gptr0, i32 addrspace(1)* noalias %gptr1, i32 addrspace(3)* noalias %lptr, i32 %c) #0 {
entry:
  %tid = tail call i32 @llvm.r600.read.tidig.x() #1
  %idx = shl i32 %tid, 2
  %gep0 = getelementptr i32, i32 addrspace(1)* %gptr0, i32 %idx
  %gep1 = getelementptr i32, i32 addrspace(1)* %gptr1, i32 %idx
  %gep2 = getelementptr i32, i32 addrspace(3)* %lptr, i32 %tid
  %cmp0 = icmp eq i32 %c, 0
  br i1 %cmp0, label %for.body, label %exit

for.body:                                         
  %i = phi i32 [ 0, %entry ], [ %i.inc, %for.body ]
  %gptr0.phi = phi i32 addrspace(1)* [ %gep0, %entry ], [ %gep0.inc, %for.body ]
  %gptr1.phi = phi i32 addrspace(1)* [ %gep1, %entry ], [ %gep1.inc, %for.body ]
  %lptr0.phi = phi i32 addrspace(3)* [ %gep2, %entry ], [ %gep2.inc, %for.body ]
  %lptr1 = getelementptr i32, i32 addrspace(3)* %lptr0.phi, i32 1
  %val0 = load i32, i32 addrspace(1)* %gep0
  store i32 %val0, i32 addrspace(3)* %lptr0.phi
  %val1 = load i32, i32 addrspace(1)* %gep1
  store i32 %val1, i32 addrspace(3)* %lptr1
  %gep0.inc = getelementptr i32, i32 addrspace(1)* %gptr0.phi, i32 4
  %gep1.inc = getelementptr i32, i32 addrspace(1)* %gptr1.phi, i32 4
  %gep2.inc = getelementptr i32, i32 addrspace(3)* %lptr0.phi, i32 4
  %i.inc = add nsw i32 %i, 1
  %cmp1 = icmp ne i32 %i, 256
  br i1 %cmp1, label %for.body, label %exit

exit:                                             
  ret void
}


declare i32 @llvm.r600.read.tidig.x() #1


declare i32 @llvm.r600.read.tgid.x() #1

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noduplicate nounwind }
