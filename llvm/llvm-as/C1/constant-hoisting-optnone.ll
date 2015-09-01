







define i64 @constant_hoisting_optnone() #0 {




entry:
  %0 = load i64, i64* inttoptr (i64 51250129900 to i64*)
  %1 = load i64, i64* inttoptr (i64 51250129908 to i64*)
  %2 = add i64 %0, %1
  ret i64 %2
}

attributes #0 = { optnone noinline }
