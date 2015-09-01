
define internal void @foo(i32 %X) {
        call void @foo( i32 %X )
        ret void
}

