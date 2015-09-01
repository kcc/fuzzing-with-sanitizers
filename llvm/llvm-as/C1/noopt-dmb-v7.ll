


define i32 @t1() {
entry:
  fence seq_cst
  fence seq_cst
  fence seq_cst
  ret i32 0
}





