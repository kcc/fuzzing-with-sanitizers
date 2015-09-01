








define void @main(i32 inreg %a) #0 {
main_body:
  call void @llvm.SI.sendmsg(i32 3, i32 %a)
  ret void
}


declare void @llvm.SI.sendmsg(i32, i32) #1

attributes #0 = { "ShaderType"="2" "unsafe-fp-math"="true" }
attributes #1 = { nounwind }
