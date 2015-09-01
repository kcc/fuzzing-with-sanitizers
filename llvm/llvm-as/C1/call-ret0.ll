
define i32 @foo(i32 %x) {
        ret i32 %x
}

define i32 @main() {
        %r = call i32 @foo( i32 0 )             
        ret i32 %r
}

