


define void @foo3() nounwind {
entry:

  %a = alloca i32, align 4
  call void @foo1(i32* %a) nounwind
  ret void
}

declare void @foo1(i32*)

