





define void @test_blez(i32 %a) {
entry:
  %cmp = icmp sgt i32 %a, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:
  tail call void @foo1()
  br label %if.end

if.end:
  ret void
}

declare void @foo1()




define void @test_bgez(i32 %a) {
entry:
  %cmp = icmp slt i32 %a, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:
  tail call void @foo1()
  br label %if.end

if.end:
  ret void
}
