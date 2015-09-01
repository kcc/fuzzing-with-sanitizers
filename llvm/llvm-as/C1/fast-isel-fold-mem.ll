


define i64 @fold_load(i64* %a, i64 %b) {



  %1 = load i64, i64* %a, align 8
  %2 = add i64 %1, %b
  ret i64 %2
}

