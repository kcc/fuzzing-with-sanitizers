


target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"


declare void @test_explicit_sret(i1024* sret) #0





define void @test_tailcall_explicit_sret(i1024* sret %arg) #0 {
  tail call void @test_explicit_sret(i1024* %arg)
  ret void
}





define void @test_call_explicit_sret(i1024* sret %arg) #0 {
  call void @test_explicit_sret(i1024* %arg)
  ret void
}





define void @test_tailcall_explicit_sret_alloca_unused() #0 {
  %l = alloca i1024, align 8
  tail call void @test_explicit_sret(i1024* %l)
  ret void
}







define void @test_tailcall_explicit_sret_alloca_dummyusers(i1024* %ptr) #0 {
  %l = alloca i1024, align 8
  %r = load i1024, i1024* %ptr, align 8
  store i1024 %r, i1024* %l, align 8
  tail call void @test_explicit_sret(i1024* %l)
  ret void
}







define void @test_tailcall_explicit_sret_gep(i1024* %ptr) #0 {
  %ptr2 = getelementptr i1024, i1024* %ptr, i32 1
  tail call void @test_explicit_sret(i1024* %ptr2)
  ret void
}








define i1024 @test_tailcall_explicit_sret_alloca_returned() #0 {
  %l = alloca i1024, align 8
  tail call void @test_explicit_sret(i1024* %l)
  %r = load i1024, i1024* %l, align 8
  ret i1024 %r
}









define void @test_indirect_tailcall_explicit_sret_nosret_arg(i1024* sret %arg, void (i1024*)* %f) #0 {
  %l = alloca i1024, align 8
  tail call void %f(i1024* %l)
  %r = load i1024, i1024* %l, align 8
  store i1024 %r, i1024* %arg, align 8
  ret void
}








define void @test_indirect_tailcall_explicit_sret_(i1024* sret %arg, i1024 ()* %f) #0 {
  %ret = tail call i1024 %f()
  store i1024 %ret, i1024* %arg, align 8
  ret void
}

attributes #0 = { nounwind }
