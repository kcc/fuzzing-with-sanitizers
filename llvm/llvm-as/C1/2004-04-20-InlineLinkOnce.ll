

define linkonce void @caller() {
        call void @callee( )
        ret void
}

define linkonce void @callee() {
        ret void
}

