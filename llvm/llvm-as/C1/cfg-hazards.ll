





declare void @use_pointer(i8*)
declare i8* @objc_retain(i8*)
declare void @objc_release(i8*)
declare void @callee()
declare void @block_callee(void ()*)








define void @test0(i8* %digits) {
entry:
  %tmp1 = call i8* @objc_retain(i8* %digits) nounwind
  call void @use_pointer(i8* %digits)
  br label %for.body

for.body:                                         
  %upcDigitIndex.01 = phi i64 [ 2, %entry ], [ %inc, %for.body ]
  call void @use_pointer(i8* %digits)
  %inc = add i64 %upcDigitIndex.01, 1
  %cmp = icmp ult i64 %inc, 12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  call void @objc_release(i8* %digits) nounwind, !clang.imprecise_release !0
  ret void
}








define void @test1(i8* %digits) {
entry:
  %tmp1 = call i8* @objc_retain(i8* %digits) nounwind
  br label %for.body

for.body:                                         
  %upcDigitIndex.01 = phi i64 [ 2, %entry ], [ %inc, %for.body ]
  call void @use_pointer(i8* %digits)
  call void @use_pointer(i8* %digits)
  %inc = add i64 %upcDigitIndex.01, 1
  %cmp = icmp ult i64 %inc, 12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  call void @objc_release(i8* %digits) nounwind, !clang.imprecise_release !0
  ret void
}








define void @test2(i8* %digits) {
entry:
  %tmp1 = call i8* @objc_retain(i8* %digits) nounwind
  br label %for.body

for.body:                                         
  %upcDigitIndex.01 = phi i64 [ 2, %entry ], [ %inc, %for.body ]
  call void @use_pointer(i8* %digits)
  %inc = add i64 %upcDigitIndex.01, 1
  %cmp = icmp ult i64 %inc, 12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          
  call void @use_pointer(i8* %digits)
  call void @objc_release(i8* %digits) nounwind, !clang.imprecise_release !0
  ret void
}












define void @test3(i8* %a) nounwind {
entry:
  %outer = call i8* @objc_retain(i8* %a) nounwind
  %inner = call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  call void @callee()
  store i8 0, i8* %a
  br i1 undef, label %loop, label %exit

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}










define void @test4(i8* %a) nounwind {
entry:
  %outer = call i8* @objc_retain(i8* %a) nounwind
  %inner = call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br label %more

more:
  call void @callee()
  call void @callee()
  store i8 0, i8* %a
  br i1 undef, label %loop, label %exit

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}












define void @test5(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  call void @callee()
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @use_pointer(i8* %a)
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}











define void @test6(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  call void @callee()
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @use_pointer(i8* %a)
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}











define void @test7(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  call void @callee()
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  call void @use_pointer(i8* %a)
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}










define void @test8(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  call void @callee()
  call void @use_pointer(i8* %a)
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}








define void @test9(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  call void @use_pointer(i8* %a)
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}








define void @test10(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  call void @callee()
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}








define void @test11(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  br label %more

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}














define void @test12(i8* %a) nounwind {
entry:
  %outer = tail call i8* @objc_retain(i8* %a) nounwind
  %inner = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  br i1 undef, label %true, label %more

true:
  ret void

more:
  br i1 undef, label %exit, label %loop

exit:
  call void @objc_release(i8* %a) nounwind
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}
















define void @test13(i8* %a) nounwind {
entry:
  %block = alloca i8*
  %a1 = tail call i8* @objc_retain(i8* %a) nounwind
  br label %loop

loop:
  %a2 = tail call i8* @objc_retain(i8* %a) nounwind
  store i8* %a, i8** %block, align 8
  %casted_block = bitcast i8** %block to void ()*
  call void @block_callee(void ()* %casted_block)
  %reloaded_a = load i8*, i8** %block, align 8
  call void @objc_release(i8* %reloaded_a) nounwind, !clang.imprecise_release !0
  br i1 undef, label %loop, label %exit
  
exit:
  call void @objc_release(i8* %a) nounwind, !clang.imprecise_release !0
  ret void
}



!0 = !{}
