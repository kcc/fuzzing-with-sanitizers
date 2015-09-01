

target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:16:32-n8:16-a0:16:16"
target triple = "msp430---elf"

define void @test() #0 {


  %1 = alloca i8, align 1

  store i8 0, i8* %1, align 1


  ret void
}

attributes #0 = { nounwind "no-frame-pointer-elim"="false" }
