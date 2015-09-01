





define internal void @Callee1() {
        unreachable
}

define void @Callee2() {
        ret void
}

define void @caller() {
        call void @Callee1( )
        call void @Callee2( )
        ret void
}

