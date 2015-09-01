


define i64 @bork(<1 x i64> %vec) {
  %tmp = extractelement <1 x i64> %vec, i32 0
  ret i64 %tmp
}
