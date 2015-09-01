


%struct.pair = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo() nounwind uwtable safestack {
entry:
  
  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  store i32* %y, i32** %b, align 8
  %0 = load i32*, i32** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %0)
  ret void
}

declare i32 @printf(i8*, ...)
