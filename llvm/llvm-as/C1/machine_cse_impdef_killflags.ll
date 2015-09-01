




define i64 @csed-impdef-killflag(i64 %a) {












  %1 = icmp ne i64 %a, 0
  %2 = select i1 %1, i32 0, i32 1
  %3 = icmp ne i64 %a, 0
  %4 = select i1 %3, i64 2, i64 3
  %5 = zext i32 %2 to i64
  %6 = add i64 %4, %5
  ret i64 %6
}
