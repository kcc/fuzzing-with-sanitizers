



define void @t1() noreturn minsize nounwind ssp {
entry:





  tail call void @bar() noreturn nounwind
  unreachable
}

define void @t2() noreturn minsize nounwind ssp {
entry:





  tail call void @t1() noreturn nounwind
  unreachable
}

declare void @bar() noreturn
