




@x = thread_local global i32 0


define i32 *@foo() {












  ret i32 *@x
}
