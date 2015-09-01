

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

declare void @helper(<2 x i8*>)
define void @test(<2 x i8*> %a) {
  %A = getelementptr i8, <2 x i8*> %a, <2 x i32> <i32 0, i32 0>
  call void @helper(<2 x i8*> %A)
  ret void
}

define <4 x i8*> @test1(<4 x i8*> %a) {
  %gep = getelementptr i8, <4 x i8*> %a, <4 x i32> zeroinitializer
  ret <4 x i8*> %gep



}

define <4 x i8*> @test2(<4 x i8*> %a) {
  %gep = getelementptr i8, <4 x i8*> %a
  ret <4 x i8*> %gep



}

%struct = type { double, float }

define <4 x float*> @test3() {
  %gep = getelementptr %struct, <4 x %struct*> undef, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  ret <4 x float*> %gep



}

%struct.empty = type { }

define <4 x %struct.empty*> @test4(<4 x %struct.empty*> %a) {
  %gep = getelementptr %struct.empty, <4 x %struct.empty*> %a, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  ret <4 x %struct.empty*> %gep



}

define <4 x i8*> @test5() {
  %c = inttoptr <4 x i64> <i64 1, i64 2, i64 3, i64 4> to <4 x i8*>
  %gep = getelementptr i8, <4 x i8*> %c, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i8*> %gep



}
