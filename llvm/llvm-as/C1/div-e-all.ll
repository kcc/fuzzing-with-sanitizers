




define signext i32 @test1() #0 {
entry:
  %0 = call i32 @llvm.ppc.divwe(i32 32, i32 16)
  ret i32 %0

}


declare i32 @llvm.ppc.divwe(i32, i32) #1


define signext i32 @test2() #0 {
entry:
  %0 = call i32 @llvm.ppc.divweu(i32 32, i32 16)
  ret i32 %0

}


declare i32 @llvm.ppc.divweu(i32, i32) #1


define i64 @test3() #0 {
entry:
  %0 = call i64 @llvm.ppc.divde(i64 32, i64 16)
  ret i64 %0

}


declare i64 @llvm.ppc.divde(i64, i64) #1


define i64 @test4() #0 {
entry:
  %0 = call i64 @llvm.ppc.divdeu(i64 32, i64 16)
  ret i64 %0

}


declare i64 @llvm.ppc.divdeu(i64, i64) #1

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (trunk 231831) (llvm/trunk 231828:231843M)"}
