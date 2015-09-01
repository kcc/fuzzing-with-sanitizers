





@a = common global i32 0, align 4

define i32 @pr23273() {
entry:
  %0 = load i32, i32* @a, align 4
  %conv = sitofp i32 %0 to double
  %call = call i32 @fn1(double %conv)
  ret i32 0
}

declare i32 @fn1(double) #1
