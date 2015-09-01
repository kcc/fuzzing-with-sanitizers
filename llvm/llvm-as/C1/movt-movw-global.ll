




@foo = common global i32 0

define i32* @bar1() nounwind readnone {
entry:











  ret i32* @foo
}

define void @bar2(i32 %baz) nounwind {
entry:











  store i32 %baz, i32* @foo, align 4
  ret void
}
