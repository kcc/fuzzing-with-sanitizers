














declare void @foo() nounwind

define void @reserved_space() nounwind {
entry:
        tail call void @foo()
        ret void
}

















