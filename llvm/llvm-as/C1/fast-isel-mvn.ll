






define void @t1() nounwind {
entry:


  call void @foo(i32 -1)
  ret void
}

declare void @foo(i32)

define void @t2() nounwind {
entry:


  call void @foo(i32 -234)
  ret void
}

define void @t3() nounwind {
entry:


  call void @foo(i32 -257)
  ret void
}


define void @t4() nounwind {
entry:





  call void @foo(i32 -258)
  ret void
}

define void @t5() nounwind {
entry:


  call void @foo(i32 -65281)
  ret void
}

define void @t6() nounwind {
entry:


  call void @foo(i32 -978945)
  ret void
}

define void @t7() nounwind {
entry:


  call void @foo(i32 -267386881)
  ret void
}

define void @t8() nounwind {
entry:


  call void @foo(i32 -65281)
  ret void
}

define void @t9() nounwind {
entry:


  call void @foo(i32 -2130706433)
  ret void
}


define i32 @t10(i32 %a) {


  %1 = xor i32 -1998730207, %a
  ret i32 %1
}

