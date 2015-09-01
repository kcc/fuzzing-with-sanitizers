


@foo = global i32 42
@fooa = alias i32* @foo

@foo2 = global i64 42
@foo2a = alias i64* @foo2


define i32 @bar() {


  %a = load i32, i32* @fooa
  ret i32 %a
}


define i64 @bar2() {



  %a = load i64, i64* @foo2a
  ret i64 %a
}






