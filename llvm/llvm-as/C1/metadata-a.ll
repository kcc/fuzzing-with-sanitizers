








define void @foo(i32 %a) nounwind {
entry:
  ret void, !attach !0
}

!0 = !{i32 524334, void (i32)* @foo}
