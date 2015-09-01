



declare i32 @llvm.ctpop.i32(i32 %a)
declare i64 @llvm.ctpop.i64(i64 %a)

define i32 @f1(i32 %a) {









  %popcnt = call i32 @llvm.ctpop.i32(i32 %a)
  ret i32 %popcnt
}

define i32 @f2(i32 %a) {







  %and = and i32 %a, 65535
  %popcnt = call i32 @llvm.ctpop.i32(i32 %and)
  ret i32 %popcnt
}

define i32 @f3(i32 %a) {




  %and = and i32 %a, 255
  %popcnt = call i32 @llvm.ctpop.i32(i32 %and)
  ret i32 %popcnt
}

define i64 @f4(i64 %a) {










  %popcnt = call i64 @llvm.ctpop.i64(i64 %a)
  ret i64 %popcnt
}

define i64 @f5(i64 %a) {








  %and = and i64 %a, 4294967295
  %popcnt = call i64 @llvm.ctpop.i64(i64 %and)
  ret i64 %popcnt
}

define i64 @f6(i64 %a) {







  %and = and i64 %a, 65535
  %popcnt = call i64 @llvm.ctpop.i64(i64 %and)
  ret i64 %popcnt
}

define i64 @f7(i64 %a) {




  %and = and i64 %a, 255
  %popcnt = call i64 @llvm.ctpop.i64(i64 %and)
  ret i64 %popcnt
}

