







declare i64 @bar(i8 *%a)

define i64 @f1(i64 %length, i64 %index) {



























  %a = alloca i8, i64 %length
  store volatile i8 0, i8 *%a
  %b = getelementptr i8, i8 *%a, i64 4095
  store volatile i8 1, i8 *%b
  %c = getelementptr i8, i8 *%a, i64 %index
  store volatile i8 2, i8 *%c
  %d = getelementptr i8, i8 *%c, i64 4095
  store volatile i8 3, i8 *%d
  %e = getelementptr i8, i8 *%d, i64 1
  store volatile i8 4, i8 *%e
  %count = call i64 @bar(i8 *%a)
  %res = add i64 %count, 1
  ret i64 %res
}
