


@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1



define void @foo() nounwind uwtable safestack {
entry:
  
  %x = alloca double, align 8
  %call = call double @testi_aux() nounwind
  store double %call, double* %x, align 8
  %cmp = fcmp ogt double %call, 3.140000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %call1 = call double @testi_aux() nounwind
  store double %call1, double* %x, align 8
  br label %if.end4

if.else:                                          
  %cmp2 = fcmp ogt double %call, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         
  br label %if.end4

if.end4:                                          
  %y.0 = phi double* [ null, %if.then ], [ %x, %if.then3 ], [ null, %if.else ]
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %y.0) nounwind
  ret void
}

declare double @testi_aux()
declare i32 @printf(i8*, ...)
