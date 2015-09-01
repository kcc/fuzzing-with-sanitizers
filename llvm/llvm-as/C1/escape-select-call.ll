


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @foo() nounwind uwtable safestack {
entry:
  
  %x = alloca double, align 8
  %call = call double @testi_aux() nounwind
  store double %call, double* %x, align 8
  %cmp2 = fcmp ogt double %call, 0.000000e+00
  %y.1 = select i1 %cmp2, double* %x, double* null
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %y.1)
  ret void
}

declare double @testi_aux()
declare i32 @printf(i8*, ...)
