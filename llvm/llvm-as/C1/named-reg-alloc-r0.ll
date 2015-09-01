



define i32 @get_reg() nounwind {
entry:


        %reg = call i32 @llvm.read_register.i32(metadata !0)
  ret i32 %reg
}

declare i32 @llvm.read_register.i32(metadata) nounwind

!0 = !{!"r0\00"}
