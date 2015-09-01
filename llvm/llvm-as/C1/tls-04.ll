




@x = thread_local(localdynamic) global i32 0



define i32 *@foo() {
















  ret i32 *@x
}
