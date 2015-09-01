

@a = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"test\0A\00", align 1

define i32 @get() {



  %res = load i32, i32* @a, align 4
  ret i32 %res
}

define void @foo() nounwind {



  tail call void @bar(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare void @bar(i8*)
