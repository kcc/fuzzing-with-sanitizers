






@external_x = external thread_local global i32, align 8
@external_y = thread_local global i8 7, align 2
@internal_y = internal thread_local global i64 9, align 16

define i32* @get_external_x() {
entry:
  ret i32* @external_x
}

define i8* @get_external_y() {
entry:
  ret i8* @external_y
}

define i64* @get_internal_y() {
entry:
  ret i64* @internal_y
}













































