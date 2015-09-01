


@g = external global i32


define void @foo() #0 {
entry:
  %0 = load i32, i32* @g, align 4
  tail call void @exit(i32 signext %0)
  unreachable
}


declare void @exit(i32 signext)



