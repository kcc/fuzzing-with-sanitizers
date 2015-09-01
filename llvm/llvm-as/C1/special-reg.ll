


define i32 @read_i32_encoded_register() nounwind {
entry:


  %reg = call i32 @llvm.read_register.i32(metadata !0)
  ret i32 %reg
}

define i64 @read_i64_encoded_register() nounwind {
entry:


  %reg = call i64 @llvm.read_register.i64(metadata !1)
  ret i64 %reg
}

define i32 @read_apsr() nounwind {
entry:


  %reg = call i32 @llvm.read_register.i32(metadata !2)
  ret i32 %reg
}

define i32 @read_fpscr() nounwind {
entry:


  %reg = call i32 @llvm.read_register.i32(metadata !3)
  ret i32 %reg
}

define void @write_i32_encoded_register(i32 %x) nounwind {
entry:


  call void @llvm.write_register.i32(metadata !0, i32 %x)
  ret void
}

define void @write_i64_encoded_register(i64 %x) nounwind {
entry:


  call void @llvm.write_register.i64(metadata !1, i64 %x)
  ret void
}

define void @write_apsr(i32 %x) nounwind {
entry:



  call void @llvm.write_register.i32(metadata !4, i32 %x)
  ret void
}

define void @write_fpscr(i32 %x) nounwind {
entry:


  call void @llvm.write_register.i32(metadata !3, i32 %x)
  ret void
}

declare i32 @llvm.read_register.i32(metadata) nounwind
declare i64 @llvm.read_register.i64(metadata) nounwind
declare void @llvm.write_register.i32(metadata, i32) nounwind
declare void @llvm.write_register.i64(metadata, i64) nounwind

!0 = !{!"cp1:2:c3:c4:5"}
!1 = !{!"cp1:2:c3"}
!2 = !{!"apsr"}
!3 = !{!"fpscr"}
!4 = !{!"apsr_nzcvq"}
