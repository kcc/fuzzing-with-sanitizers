





@foo_private_extern_str = external hidden global i8*

define void @foo1() nounwind ssp {
entry:
  %tmp = load i8*, i8** @foo_private_extern_str, align 8
  call void @foo3(i8* %tmp)
  ret void
}

declare void @foo3(i8*)


