



define i32 @test(i32* %p) {




entry:
  %cmp = icmp eq i32* %p, null
  br i1 %cmp, label %is_null, label %not_null
is_null:
  %cmp2 = icmp ne i32* %p, null
  br i1 %cmp2, label %exit1, label %exit2
not_null:
  %cmp3 = icmp ne i32* %p, null
  br i1 %cmp3, label %exit1, label %exit2
exit1:
  ret i32 0
exit2:
  ret i32 1
}

declare void @use(i1)



define i32 @test_negative(i32* %p) {





entry:
  %cmp2 = icmp ne i32* %p, null
  call void @use(i1 %cmp2)
  %cmp = icmp eq i32* %p, null
  br i1 %cmp, label %is_null, label %not_null
is_null:
  br i1 %cmp2, label %exit1, label %exit2
not_null:
  br i1 %cmp2, label %exit1, label %exit2
exit1:
  ret i32 0
exit2:
  ret i32 1
}


define i32 @test2(i32* %p) {





entry:
  %cmp2 = icmp ne i32* %p, null
  %cmp = icmp eq i32* %p, null
  br i1 %cmp, label %is_null, label %not_null
is_null:
  br i1 %cmp2, label %exit1, label %exit2
not_null:
  br i1 %cmp2, label %exit1, label %exit2
exit1:
  ret i32 0
exit2:
  ret i32 1
}
