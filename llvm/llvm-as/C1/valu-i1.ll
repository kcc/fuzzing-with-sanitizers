

declare i32 @llvm.r600.read.tidig.x() nounwind readnone






define void @test_if(i32 %a, i32 %b, i32 addrspace(1)* %src, i32 addrspace(1)* %dst) #1 {
entry:
  switch i32 %a, label %default [
    i32 0, label %case0
    i32 1, label %case1
  ]

case0:
  %arrayidx1 = getelementptr i32, i32 addrspace(1)* %dst, i32 %b
  store i32 0, i32 addrspace(1)* %arrayidx1, align 4
  br label %end

case1:
  %arrayidx5 = getelementptr i32, i32 addrspace(1)* %dst, i32 %b
  store i32 1, i32 addrspace(1)* %arrayidx5, align 4
  br label %end

default:
  %cmp8 = icmp eq i32 %a, 2
  %arrayidx10 = getelementptr i32, i32 addrspace(1)* %dst, i32 %b
  br i1 %cmp8, label %if, label %else

if:
  store i32 2, i32 addrspace(1)* %arrayidx10, align 4
  br label %end

else:
  store i32 3, i32 addrspace(1)* %arrayidx10, align 4
  br label %end

end:
  ret void
}













define void @simple_test_v_if(i32 addrspace(1)* %dst, i32 addrspace(1)* %src) #1 {
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %is.0 = icmp ne i32 %tid, 0
  br i1 %is.0, label %store, label %exit

store:
  %gep = getelementptr i32, i32 addrspace(1)* %dst, i32 %tid
  store i32 999, i32 addrspace(1)* %gep
  ret void

exit:
  ret void
}


















define void @simple_test_v_loop(i32 addrspace(1)* %dst, i32 addrspace(1)* %src) #1 {
entry:
  %tid = call i32 @llvm.r600.read.tidig.x() nounwind readnone
  %is.0 = icmp ne i32 %tid, 0
  %limit = add i32 %tid, 64
  br i1 %is.0, label %loop, label %exit

loop:
  %i = phi i32 [%tid, %entry], [%i.inc, %loop]
  %gep.src = getelementptr i32, i32 addrspace(1)* %src, i32 %i
  %gep.dst = getelementptr i32, i32 addrspace(1)* %dst, i32 %i
  %load = load i32, i32 addrspace(1)* %src
  store i32 %load, i32 addrspace(1)* %gep.dst
  %i.inc = add nsw i32 %i, 1
  %cmp = icmp eq i32 %limit, %i.inc
  br i1 %cmp, label %exit, label %loop

exit:
  ret void
}














































define void @multi_vcond_loop(i32 addrspace(1)* noalias nocapture %arg, i32 addrspace(1)* noalias nocapture readonly %arg1, i32 addrspace(1)* noalias nocapture readonly %arg2, i32 addrspace(1)* noalias nocapture readonly %arg3) #1 {
bb:
  %tmp = tail call i32 @llvm.r600.read.tidig.x() #0
  %tmp4 = sext i32 %tmp to i64
  %tmp5 = getelementptr inbounds i32, i32 addrspace(1)* %arg3, i64 %tmp4
  %tmp6 = load i32, i32 addrspace(1)* %tmp5, align 4
  %tmp7 = icmp sgt i32 %tmp6, 0
  %tmp8 = sext i32 %tmp6 to i64
  br i1 %tmp7, label %bb10, label %bb26

bb10:                                             
  %tmp11 = phi i64 [ %tmp23, %bb20 ], [ 0, %bb ]
  %tmp12 = add nsw i64 %tmp11, %tmp4
  %tmp13 = getelementptr inbounds i32, i32 addrspace(1)* %arg1, i64 %tmp12
  %tmp14 = load i32, i32 addrspace(1)* %tmp13, align 4
  %tmp15 = getelementptr inbounds i32, i32 addrspace(1)* %arg2, i64 %tmp12
  %tmp16 = load i32, i32 addrspace(1)* %tmp15, align 4
  %tmp17 = icmp ne i32 %tmp14, -1
  %tmp18 = icmp ne i32 %tmp16, -1
  %tmp19 = and i1 %tmp17, %tmp18
  br i1 %tmp19, label %bb20, label %bb26

bb20:                                             
  %tmp21 = add nsw i32 %tmp16, %tmp14
  %tmp22 = getelementptr inbounds i32, i32 addrspace(1)* %arg, i64 %tmp12
  store i32 %tmp21, i32 addrspace(1)* %tmp22, align 4
  %tmp23 = add nuw nsw i64 %tmp11, 1
  %tmp24 = icmp slt i64 %tmp23, %tmp8
  br i1 %tmp24, label %bb10, label %bb26

bb26:                                             
  ret void
}

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
