

declare void @foo() nounwind

define void @bar() nounwind {
entry:
    tail call void @foo() nounwind
    ret void
}

define void @bazz() nounwind {
entry:
    tail call void @bar() nounwind noinline
    ret void
}



