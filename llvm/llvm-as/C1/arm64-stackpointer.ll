

define i64 @get_stack() nounwind {
entry:


	%sp = call i64 @llvm.read_register.i64(metadata !0)
  ret i64 %sp
}

define void @set_stack(i64 %val) nounwind {
entry:


  call void @llvm.write_register.i64(metadata !0, i64 %val)
  ret void
}

declare i64 @llvm.read_register.i64(metadata) nounwind
declare void @llvm.write_register.i64(metadata, i64) nounwind



!0 = !{!"sp\00"}
