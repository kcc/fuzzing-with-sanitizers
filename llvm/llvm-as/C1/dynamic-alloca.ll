


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo(i32 %n) nounwind uwtable safestack {
entry:
  
  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = alloca i8, i64 %conv
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %a, align 8
  ret void
}
