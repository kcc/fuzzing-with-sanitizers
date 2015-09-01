

@foo = thread_local global i32 42
@bar = hidden thread_local alias i32* @foo

define i32* @zed() {


       ret i32* @bar
}
