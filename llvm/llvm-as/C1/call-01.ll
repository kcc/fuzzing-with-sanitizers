



declare i64 @bar()


define i64 @f1() {






  %ret = call i64 @bar()
  %inc = add i64 %ret, 1
  ret i64 %inc
}
