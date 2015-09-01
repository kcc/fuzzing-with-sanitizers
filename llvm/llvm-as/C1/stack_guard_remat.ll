






















define i32 @test_stack_guard_remat() #0 {
  %a1 = alloca [256 x i32], align 4
  %1 = bitcast [256 x i32]* %a1 to i8*
  call void @llvm.lifetime.start(i64 1024, i8* %1)
  %2 = getelementptr inbounds [256 x i32], [256 x i32]* %a1, i32 0, i32 0
  call void @foo3(i32* %2) #3
  call void asm sideeffect "foo2", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{r12},~{sp},~{lr}"()
  call void @llvm.lifetime.end(i64 1024, i8* %1)
  ret i32 0
}


declare void @llvm.lifetime.start(i64, i8* nocapture)

declare void @foo3(i32*)


declare void @llvm.lifetime.end(i64, i8* nocapture)

attributes #0 = { nounwind ssp "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
