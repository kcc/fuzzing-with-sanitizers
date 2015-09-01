










target datalayout = "e-m:w-p:32:32-i64:64-f80:32-n8:16:32-S32"

define i32 @test1() "stack-probe-size"="0" {
  %buffer = alloca [4095 x i8]

  ret i32 0





}

define i32 @test2() {
  %buffer = alloca [4095 x i8]

  ret i32 0





}

define i32 @test3() "stack-probe-size"="8192" {
  %buffer = alloca [4095 x i8]

  ret i32 0





}

define i32 @test4() "stack-probe-size"="0" {
  %buffer = alloca [4096 x i8]

  ret i32 0





}

define i32 @test5() {
  %buffer = alloca [4096 x i8]

  ret i32 0





}

define i32 @test6() "stack-probe-size"="8192" {
  %buffer = alloca [4096 x i8]

  ret i32 0





}
