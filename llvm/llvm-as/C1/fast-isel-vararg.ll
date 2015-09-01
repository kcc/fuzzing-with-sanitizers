



define i32 @VarArg() nounwind {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %tmp = alloca i32, align 4
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* %n, align 4






















  %call = call i32 (i32, ...) @CallVariadic(i32 5, i32 %0, i32 %1, i32 %2, i32 %3, i32 %4)
  store i32 %call, i32* %tmp, align 4
  %5 = load i32, i32* %tmp, align 4
  ret i32 %5
}

declare i32 @CallVariadic(i32, ...)
