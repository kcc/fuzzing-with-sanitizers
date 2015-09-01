












define void @sgpr_if_else_salu_br(i32 addrspace(1)* %out, i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) {
entry:
  %0 = icmp eq i32 %a, 0
  br i1 %0, label %if, label %else

if:
  %1 = add i32 %b, %c
  br label %endif

else:
  %2 = add i32 %d, %e
  br label %endif

endif:
  %3 = phi i32 [%1, %if], [%2, %else]
  %4 = add i32 %3, %a
  store i32 %4, i32 addrspace(1)* %out
  ret void
}








define void @sgpr_if_else_valu_br(i32 addrspace(1)* %out, float %a, i32 %b, i32 %c, i32 %d, i32 %e) {
entry:
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %tid_f = uitofp i32 %tid to float
  %tmp1 = fcmp ueq float %tid_f, 0.0
  br i1 %tmp1, label %if, label %else

if:
  %tmp2 = add i32 %b, %c
  br label %endif

else:
  %tmp3 = add i32 %d, %e
  br label %endif

endif:
  %tmp4 = phi i32 [%tmp2, %if], [%tmp3, %else]
  store i32 %tmp4, i32 addrspace(1)* %out
  ret void
}

















define void @sgpr_if_else_valu_cmp_phi_br(i32 addrspace(1)* %out, i32 addrspace(1)* %a, i32 addrspace(1)* %b) {
entry:
  %tid = call i32 @llvm.r600.read.tidig.x() #0
  %tmp1 = icmp eq i32 %tid, 0
  br i1 %tmp1, label %if, label %else

if:
  %gep.if = getelementptr i32, i32 addrspace(1)* %a, i32 %tid
  %a.val = load i32, i32 addrspace(1)* %gep.if
  %cmp.if = icmp eq i32 %a.val, 0
  br label %endif

else:
  %gep.else = getelementptr i32, i32 addrspace(1)* %b, i32 %tid
  %b.val = load i32, i32 addrspace(1)* %gep.else
  %cmp.else = icmp slt i32 %b.val, 0
  br label %endif

endif:
  %tmp4 = phi i1 [%cmp.if, %if], [%cmp.else, %else]
  %ext = sext i1 %tmp4 to i32
  store i32 %ext, i32 addrspace(1)* %out
  ret void
}

declare i32 @llvm.r600.read.tidig.x() #0

attributes #0 = { readnone }
