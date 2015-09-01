

define i32 @shift_select(i1 %cond) {

  %s = select i1 %cond, i32 0, i32 1
  %r = lshr i32 %s, 1
  ret i32 %r

}
