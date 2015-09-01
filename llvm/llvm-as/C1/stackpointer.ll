


define i32 @get_stack() nounwind {
entry:


	%sp = call i32 @llvm.read_register.i32(metadata !0)
  ret i32 %sp
}

define void @set_stack(i32 %val) nounwind {
entry:


  call void @llvm.write_register.i32(metadata !0, i32 %val)
  ret void
}

declare i32 @llvm.read_register.i32(metadata) nounwind
declare void @llvm.write_register.i32(metadata, i32) nounwind



!0 = !{!"sp\00"}
