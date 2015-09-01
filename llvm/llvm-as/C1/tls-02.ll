



@x = thread_local(initialexec) global i32 0



define i32 *@foo() {







  ret i32 *@x
}
