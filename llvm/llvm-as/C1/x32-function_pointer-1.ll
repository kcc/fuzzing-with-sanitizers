




@foo1 = external global void (i8*)*
@foo2 = external global void (i8*)*

define void @bar(i8* %h) nounwind uwtable {
entry:
  %0 = load void (i8*)*, void (i8*)** @foo1, align 4

  tail call void %0(i8* %h) nounwind

  %1 = load void (i8*)*, void (i8*)** @foo2, align 4

  tail call void %1(i8* %h) nounwind

  ret void
}
