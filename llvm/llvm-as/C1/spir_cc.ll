



define spir_func void @foo() {
        ret void
}

define spir_kernel void @bar() {
        call spir_func void @foo( )
        call spir_kernel void @bar( )
        ret void
}
