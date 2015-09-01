
declare void @bar()







define void @test_dpr_align(i8 %l, i8 %r) {














  call void asm sideeffect "", "~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{d8}"()
  call void @bar()
  ret void
}




define void @test_dpr_align_tiny(i8 %l, i8 %r) minsize {












  call void asm sideeffect "", "~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{d8}"()
  call void @bar()
  ret void
}




define void @test_nodpr_noalign(i8 %l, i8 %r) {











  alloca i64
  call void asm sideeffect "", "~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11}"()
  call void @bar()
  ret void
}

define void @test_frame_pointer_offset() minsize "no-frame-pointer-elim"="true" {






  call void asm sideeffect "", "~{r4},~{r5},~{r6},~{r7},~{r8},~{r9},~{r10},~{r11},~{d8}"()
  call void @bar()
  ret void
}