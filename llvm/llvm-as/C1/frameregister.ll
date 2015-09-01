



define i64 @get_frame() #0 {
entry:


  %sp = call i64 @llvm.read_register.i64(metadata !0)

  ret i64 %sp
}

define void @set_frame(i64 %val) #0 {
entry:


  call void @llvm.write_register.i64(metadata !0, i64 %val)

  ret void
}

declare i64 @llvm.read_register.i64(metadata) nounwind
declare void @llvm.write_register.i64(metadata, i64) nounwind



!0 = !{!"rbp\00"}

attributes #0 = { nounwind "no-frame-pointer-elim"="true" }
