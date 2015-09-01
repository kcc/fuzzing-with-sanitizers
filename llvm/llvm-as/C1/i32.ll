


define i32 @no_info(i32 %arg) {
  %e = add i64 undef, undef
  ret i32 undef
}
