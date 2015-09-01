


define zeroext i16 @test1_fast(double %d) #0 {






entry:
  %0 = tail call i16 @llvm.convert.to.fp16.f64(double %d)
  ret i16 %0
}

define zeroext i16 @test2_fast(x86_fp80 %d) #0 {








entry:
  %0 = tail call i16 @llvm.convert.to.fp16.f80(x86_fp80 %d)
  ret i16 %0
}

define zeroext i16 @test1(double %d) #1 {



entry:
  %0 = tail call i16 @llvm.convert.to.fp16.f64(double %d)
  ret i16 %0
}

define zeroext i16 @test2(x86_fp80 %d) #1 {



entry:
  %0 = tail call i16 @llvm.convert.to.fp16.f80(x86_fp80 %d)
  ret i16 %0
}

declare i16 @llvm.convert.to.fp16.f64(double)
declare i16 @llvm.convert.to.fp16.f80(x86_fp80)

attributes #0 = { nounwind readnone uwtable "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind readnone uwtable "unsafe-fp-math"="false" "use-soft-float"="false" }
