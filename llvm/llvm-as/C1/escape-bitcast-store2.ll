


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1





define void @foo() nounwind uwtable safestack {
entry:
  
  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  call void @funfloat(float* %0) nounwind
  ret void
}

declare void @funfloat(float*)
