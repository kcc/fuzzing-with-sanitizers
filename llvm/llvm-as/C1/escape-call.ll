


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1



define void @foo() nounwind uwtable safestack {
entry:
  
  %b = alloca i32, align 4
  call void @funcall(i32* %b) nounwind
  ret void
}

declare void @funcall(i32*)
