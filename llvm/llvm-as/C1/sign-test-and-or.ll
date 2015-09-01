

declare void @foo()

define void @test1(i32 %a, i32 %b) nounwind {
  %1 = icmp slt i32 %a, 0
  %2 = icmp slt i32 %b, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test2(i32 %a, i32 %b) nounwind {
  %1 = icmp sgt i32 %a, -1
  %2 = icmp sgt i32 %b, -1
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test3(i32 %a, i32 %b) nounwind {
  %1 = icmp slt i32 %a, 0
  %2 = icmp slt i32 %b, 0
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test4(i32 %a, i32 %b) nounwind {
  %1 = icmp sgt i32 %a, -1
  %2 = icmp sgt i32 %b, -1
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test5(i32 %a) nounwind {
  %and = and i32 %a, 134217728
  %1 = icmp eq i32 %and, 0
  %2 = icmp sgt i32 %a, -1
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test6(i32 %a) nounwind {
  %1 = icmp sgt i32 %a, -1
  %and = and i32 %a, 134217728
  %2 = icmp eq i32 %and, 0
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test7(i32 %a) nounwind {
  %and = and i32 %a, 134217728
  %1 = icmp ne i32 %and, 0
  %2 = icmp slt i32 %a, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test8(i32 %a) nounwind {
  %1 = icmp slt i32 %a, 0
  %and = and i32 %a, 134217728
  %2 = icmp ne i32 %and, 0
  %or.cond = or i1 %1, %2
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test9(i32 %a) nounwind {
  %1 = and i32 %a, 1073741824
  %2 = icmp ne i32 %1, 0
  %3 = icmp sgt i32 %a, -1
  %or.cond = and i1 %2, %3
  br i1 %or.cond, label %if.then, label %if.end






if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test10(i32 %a) nounwind {
  %1 = and i32 %a, 2
  %2 = icmp eq i32 %1, 0
  %3 = icmp ult i32 %a, 4
  %or.cond = and i1 %2, %3
  br i1 %or.cond, label %if.then, label %if.end





if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}

define void @test11(i32 %a) nounwind {
  %1 = and i32 %a, 2
  %2 = icmp ne i32 %1, 0
  %3 = icmp ugt i32 %a, 3
  %or.cond = or i1 %2, %3
  br i1 %or.cond, label %if.then, label %if.end





if.then:
  tail call void @foo() nounwind
  ret void

if.end:
  ret void
}
