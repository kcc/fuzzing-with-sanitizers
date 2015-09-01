




declare void @clang.arc.use(...) nounwind





define void @test0(i8* %a, i8* %b) {
  call void (...) @clang.arc.use(i8* %a, i8* %b) nounwind
  ret void
}

