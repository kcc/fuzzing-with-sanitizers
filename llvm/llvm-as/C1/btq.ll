

declare void @bar()

define void @test1(i64 %foo) nounwind {
  %and = and i64 %foo, 4294967296
  %tobool = icmp eq i64 %and, 0
  br i1 %tobool, label %if.end, label %if.then




if.then:
  tail call void @bar() nounwind
  br label %if.end

if.end:
  ret void
}

define void @test2(i64 %foo) nounwind {
  %and = and i64 %foo, 2147483648
  %tobool = icmp eq i64 %and, 0
  br i1 %tobool, label %if.end, label %if.then




if.then:
  tail call void @bar() nounwind
  br label %if.end

if.end:
  ret void
}
