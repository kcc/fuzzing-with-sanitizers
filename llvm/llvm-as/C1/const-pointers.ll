
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%t = type { i32 }

@g = global i32 42

define void @test1(%t* noalias %pp) {
  %p = getelementptr inbounds %t, %t* %pp, i32 0, i32 0

  store i32 1, i32* %p
  %x = load i32, i32* inttoptr (i32 12345 to i32*)
  store i32 %x, i32* %p
  ret void




}

define void @test3() {
  store i32 1, i32* @g
  store i32 42, i32* @g
  ret void




}

define void @test4(i32* %p) {
  store i32 1, i32* %p
  %x = load i32, i32* @g
  store i32 %x, i32* %p
  ret void




}
