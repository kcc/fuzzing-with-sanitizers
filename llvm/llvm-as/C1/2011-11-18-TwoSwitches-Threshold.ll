


















































define i32 @test(i32* %var) {
  %mem = alloca i32
  store i32 2, i32* %mem
  %c = load i32, i32* %mem
  %d = load i32, i32* %mem

  br label %loop_begin

loop_begin:

  %var_val = load i32, i32* %var

  switch i32 %c, label %second_switch [
      i32 1, label %inc
  ]

second_switch:
  switch i32 %d, label %default [
      i32 1, label %inc
  ]

inc:
  call void @incf() noreturn nounwind
  br label %loop_begin

default:
  br label %loop_begin

loop_exit:
  ret i32 0
}

declare void @incf() noreturn
declare void @decf() noreturn



