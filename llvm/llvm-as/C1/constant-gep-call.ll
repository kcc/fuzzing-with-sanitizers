


%struct.nest = type { %struct.pair, %struct.pair }
%struct.pair = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1







define void @foo() nounwind uwtable safestack {
entry:
  
  %c = alloca %struct.nest, align 4
  %b = getelementptr inbounds %struct.nest, %struct.nest* %c, i32 0, i32 1
  %_a = getelementptr inbounds %struct.pair, %struct.pair* %b, i32 0, i32 0
  %0 = load i32, i32* %_a, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %0)
  ret void
}

declare i32 @printf(i8*, ...)
