


define i32 @ule_64_max(i64 %p) {
entry:



  %cmp = icmp ule i64 %p, 18446744073709551615 
  br i1 %cmp, label %ret_one, label %ret_zero

ret_one:
  ret i32 1

ret_zero:


  ret i32 0
}

define i32 @ugt_64_max(i64 %p) {
entry:



  %cmp = icmp ugt i64 %p, 18446744073709551615 
  br i1 %cmp, label %ret_one, label %ret_zero

ret_one:
  ret i32 1

ret_zero:


  ret i32 0
}
