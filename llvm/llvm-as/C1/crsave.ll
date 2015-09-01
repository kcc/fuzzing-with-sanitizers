


declare void @foo()

define i32 @test_cr2() nounwind uwtable {
entry:
  %ret = alloca i32, align 4
  %0 = call i32 asm sideeffect "\0A\09mtcr $4\0A\09cmpw 2,$2,$1\0A\09mfcr $0", "=r,r,r,r,r,~{cr2}"(i32 1, i32 2, i32 3, i32 0) nounwind
  store i32 %0, i32* %ret, align 4
  call void @foo()
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}




















define i32 @test_cr234() nounwind {
entry:
  %ret = alloca i32, align 4
  %0 = call i32 asm sideeffect "\0A\09mtcr $4\0A\09cmpw 2,$2,$1\0A\09cmpw 3,$2,$2\0A\09cmpw 4,$2,$3\0A\09mfcr $0", "=r,r,r,r,r,~{cr2},~{cr3},~{cr4}"(i32 1, i32 2, i32 3, i32 0) nounwind
  store i32 %0, i32* %ret, align 4
  call void @foo()
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}



















