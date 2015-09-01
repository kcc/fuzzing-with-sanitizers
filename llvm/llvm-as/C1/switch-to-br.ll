

declare i32 @f(i32)

define i32 @basic(i32 %x) {





entry:
  switch i32 %x, label %default [
    i32 5, label %default
    i32 6, label %default
    i32 7, label %default
  ]
default:
  %0 = call i32 @f(i32 0)
  ret i32 %0
}


define i32 @constant() {





entry:
  switch i32 42, label %default [
    i32 41, label %default
    i32 42, label %a
    i32 43, label %b
  ]
default:
  %0 = call i32 @f(i32 0)
  ret i32 %0
a:
  %1 = call i32 @f(i32 1)
  ret i32 %1
b:
  %2 = call i32 @f(i32 2)
  ret i32 %2
}


define i32 @unreachable(i32 %x) {





entry:
  switch i32 %x, label %unreachable [
    i32 5, label %a
    i32 6, label %a
    i32 7, label %a
  ]
unreachable:
  unreachable
a:
  %0 = call i32 @f(i32 0)
  ret i32 %0
}
