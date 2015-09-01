



declare i32 @__my_personality_v0(...)
declare void @might_throw()

define i32 @foo() personality i32 (...)* @__my_personality_v0 {

    call void @might_throw()
    ret i32 0
}
