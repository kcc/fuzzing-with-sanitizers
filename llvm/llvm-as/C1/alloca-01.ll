









declare i64 @bar(i8 *%a, i8 *%b, i8 *%c, i8 *%d, i8 *%e, i64 %f, i64 %g)




define i64 @f1(i64 %length, i64 %index) {





































  %a = alloca i8, i64 %length
  %b = getelementptr i8, i8 *%a, i64 1
  %cindex = add i64 %index, 3919
  %c = getelementptr i8, i8 *%a, i64 %cindex
  %dindex = add i64 %index, 3920
  %d = getelementptr i8, i8 *%a, i64 %dindex
  %eindex = add i64 %index, 4095
  %e = getelementptr i8, i8 *%a, i64 %eindex
  %count = call i64 @bar(i8 *%a, i8 *%b, i8 *%c, i8 *%d, i8 *%e, i64 0, i64 0)
  %res = add i64 %count, 1
  ret i64 %res
}
