


%struct.vec = type { <4 x i32> }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo() nounwind uwtable safestack {
entry:
  
  %c = alloca %struct.vec, align 16
  %y = getelementptr inbounds %struct.vec, %struct.vec* %c, i64 0, i32 0
  %add.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %y, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), <4 x i32>* %add.ptr) nounwind
  ret void
}

declare i32 @printf(i8*, ...)
