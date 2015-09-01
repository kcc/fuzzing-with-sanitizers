


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo() nounwind uwtable safestack {
entry:
  
  %a = alloca i32, align 4
  %add.ptr5 = getelementptr inbounds i32, i32* %a, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %add.ptr5) nounwind
  ret void
}

declare i32 @printf(i8*, ...)
