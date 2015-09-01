










define i32 @llvm_mips_lsa_test(i32 %a, i32 %b) nounwind {
entry:
  %0 = tail call i32 @llvm.mips.lsa(i32 %a, i32 %b, i32 2)
  ret i32 %0
}

declare i32 @llvm.mips.lsa(i32, i32, i32) nounwind





define i32 @lsa_test(i32 %a, i32 %b) nounwind {
entry:
  %0 = shl i32 %b, 2
  %1 = add i32 %a, %0
  ret i32 %1
}





define i64 @llvm_mips_dlsa_test(i64 %a, i64 %b) nounwind {
entry:
  %0 = tail call i64 @llvm.mips.dlsa(i64 %a, i64 %b, i32 2)
  ret i64 %0
}

declare i64 @llvm.mips.dlsa(i64, i64, i32) nounwind





define i64 @dlsa_test(i64 %a, i64 %b) nounwind {
entry:
  %0 = shl i64 %b, 2
  %1 = add i64 %a, %0
  ret i64 %1
}




