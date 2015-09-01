

target datalayout = "e-m:e-p:16:16-i32:16:32-a:16-n8:16"
target triple = "msp430---elf"

define void @test() {
entry:


  call void asm sideeffect "", "~{r10}"()

  ret void
}
