


define i32 @get_stack() nounwind {
entry:

	%sp = call i32 @llvm.read_register.i32(metadata !0)
  ret i32 %sp
}

declare i32 @llvm.read_register.i32(metadata) nounwind

!0 = !{!"notareg\00"}
