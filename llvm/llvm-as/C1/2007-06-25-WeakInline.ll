



define void @foo() {
entry:
        tail call void @bar( )            
        ret void
}

define weak void @bar() {
        ret void
}

