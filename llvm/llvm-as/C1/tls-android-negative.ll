




@external_x = external thread_local global i32
@external_y = thread_local global i32 7
@internal_y = internal thread_local global i32 9
@internal_y0 = internal thread_local global i32 0

define i32* @get_external_x() {
entry:
  ret i32* @external_x
}

define i32* @get_external_y() {
entry:
  ret i32* @external_y
}

define i32* @get_internal_y() {
entry:
  ret i32* @internal_y
}

define i32* @get_internal_y0() {
entry:
  ret i32* @internal_y0
}




































