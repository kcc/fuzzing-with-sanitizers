

@Y = global i32 (i8*)* @X               

declare extern_weak i32 @X(i8*)

define void @bar() {
        tail call void (...) @foo( )
        ret void
}

declare extern_weak void @foo(...)

