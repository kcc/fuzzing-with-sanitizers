





define i32 @msa_ir_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 0)
  ret i32 %0
}





define i32 @msa_csr_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 1)
  ret i32 %0
}





define i32 @msa_access_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 2)
  ret i32 %0
}





define i32 @msa_save_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 3)
  ret i32 %0
}





define i32 @msa_modify_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 4)
  ret i32 %0
}





define i32 @msa_request_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 5)
  ret i32 %0
}





define i32 @msa_map_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 6)
  ret i32 %0
}





define i32 @msa_unmap_cfcmsa_test() nounwind {
entry:
  %0 = tail call i32 @llvm.mips.cfcmsa(i32 7)
  ret i32 %0
}





define void @msa_ir_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 0, i32 1)
  ret void
}





define void @msa_csr_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 1, i32 1)
  ret void
}





define void @msa_access_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 2, i32 1)
  ret void
}





define void @msa_save_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 3, i32 1)
  ret void
}





define void @msa_modify_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 4, i32 1)
  ret void
}





define void @msa_request_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 5, i32 1)
  ret void
}





define void @msa_map_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 6, i32 1)
  ret void
}





define void @msa_unmap_ctcmsa_test() nounwind {
entry:
  tail call void @llvm.mips.ctcmsa(i32 7, i32 1)
  ret void
}





declare i32 @llvm.mips.cfcmsa(i32) nounwind
declare void @llvm.mips.ctcmsa(i32, i32) nounwind
