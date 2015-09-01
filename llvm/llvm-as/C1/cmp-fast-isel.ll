



define i32 @f1(i16 %x) {


bb0:
  %cmp = icmp ne i16 %x, 42
  br i1 %cmp, label %bb3, label %bb7

bb3:
  ret i32 1

bb7:
  ret i32 2
}

define i32 @f2(i32 %x) {


bb0:
  %cmp = icmp ne i32 %x, 42
  br i1 %cmp, label %bb3, label %bb7

bb3:
  ret i32 1

bb7:
  ret i32 2
}

define i32 @f3(i64 %x) {


bb0:
  %cmp = icmp ne i64 %x, 42
  br i1 %cmp, label %bb3, label %bb7

bb3:
  ret i32 1

bb7:
  ret i32 2
}
