


























@.str = private unnamed_addr constant [7 x i8] c"hello\0A\00"

define i32 @main() nounwind ssp {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  ret i32 %call
}

declare i32 @puts(i8*)
