

define i32 @get_frame() nounwind {
entry:

  %fp = call i32 @llvm.read_register.i32(metadata !0)
  ret i32 %fp
}

declare i32 @llvm.read_register.i32(metadata) nounwind

!0 = !{!"ebp\00"}
