


define i64 @get_reg() nounwind {
entry:
  %reg = call i64 @llvm.read_register.i64(metadata !0)
  ret i64 %reg






}

declare i64 @llvm.read_register.i64(metadata) nounwind

!0 = !{!"r1\00"}
