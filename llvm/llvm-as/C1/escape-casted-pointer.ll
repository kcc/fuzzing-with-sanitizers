


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo() nounwind uwtable safestack {
entry:
  
  %a = alloca i32*, align 8
  %b = alloca float**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  %0 = bitcast i32** %a to float**
  store float** %0, float*** %b, align 8
  %1 = load float**, float*** %b, align 8
  call void @funfloat2(float** %1)
  ret void
}

declare void @funfloat2(float**)
declare i32* @getp()
