


target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"



declare i1024 @test_sret() #0








define i1024 @test_call_sret() #0 {
  %a = call i1024 @test_sret()
  ret i1024 %a
}








define i1024 @test_tailcall_sret() #0 {
  %a = tail call i1024 @test_sret()
  ret i1024 %a
}








define i1024 @test_indirect_tailcall_sret(i1024 ()* %f) #0 {
  %a = tail call i1024 %f()
  ret i1024 %a
}

attributes #0 = { nounwind }
