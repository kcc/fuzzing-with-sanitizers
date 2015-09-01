
target triple = "arm64-apple-ios"

declare void @foobar(i32 %v0, i32 %v1)













define void @test_sub_cbz(i32 %a0, i32 %a1) {
entry:
  
  
  %v0 = sub i32 %a0, 13
  %cond = icmp eq i32 %v0, 0
  %v1 = add i32 %a1, 7
  br i1 %cond, label %if, label %exit

if:
  call void @foobar(i32 %v1, i32 %v0)
  br label %exit

exit:
  call void @foobar(i32 %v0, i32 %v1)
  ret void
}
