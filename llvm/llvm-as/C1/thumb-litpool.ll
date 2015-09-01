


@var = global i8 zeroinitializer

declare void @callee(i8*)

define void @foo() minsize {


  call void @callee(i8* @var)
  call void asm sideeffect "", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7}"()
  call void @callee(i8* @var)
  ret void
}