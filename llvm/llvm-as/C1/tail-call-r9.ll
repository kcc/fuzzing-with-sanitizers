

@foo = common global void ()* null, align 4



define arm_aapcscc void @test(i32 %a) nounwind {


  %tmp = load void ()*, void ()** @foo, align 4
  tail call void asm sideeffect "", "~{r0},~{r1},~{r2},~{r3},~{r12}"() nounwind
  tail call arm_aapcscc void %tmp() nounwind
  ret void
}
