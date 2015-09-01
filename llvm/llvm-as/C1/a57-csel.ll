


define i64 @f(i64 %a, i64 %b, i64* %c, i64 %d, i64 %e) {
  
  %x0 = load i64, i64* %c
  %x1 = icmp eq i64 %x0, 0
  %x2 = select i1 %x1, i64 %a, i64 %b
  %x3 = add i64 %x2, %d
  ret i64 %x3
}
