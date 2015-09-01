

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.s2 = type { i64, <4 x float> }

@ve = external global <4 x float>
@n = external global i64


define void @test1(i64 %d1, i64 %d2, i64 %d3, i64 %d4, i64 %d5, i64 %d6, i64 %d7, i64 %d8, i64 %d9, <4 x float> inreg %vs.coerce) #0 {
entry:
  store <4 x float> %vs.coerce, <4 x float>* @ve, align 16
  ret void








}


define void @test2(i64 %d1, i64 %d2, i64 %d3, i64 %d4, i64 %d5, i64 %d6, i64 %d7, i64 %d8, %struct.s2* byval nocapture readonly %vs) #0 {
entry:
  %m = getelementptr inbounds %struct.s2, %struct.s2* %vs, i64 0, i32 0
  %0 = load i64, i64* %m, align 8
  store i64 %0, i64* @n, align 8
  %v = getelementptr inbounds %struct.s2, %struct.s2* %vs, i64 0, i32 1
  %1 = load <4 x float>, <4 x float>* %v, align 16
  store <4 x float> %1, <4 x float>* @ve, align 16
  ret void














}


define void @test3(i64 %d1, i64 %d2, i64 %d3, i64 %d4, i64 %d5, i64 %d6, i64 %d7, i64 %d8, i64 %d9, %struct.s2* byval nocapture readonly %vs) #0 {
entry:
  %m = getelementptr inbounds %struct.s2, %struct.s2* %vs, i64 0, i32 0
  %0 = load i64, i64* %m, align 8
  store i64 %0, i64* @n, align 8
  %v = getelementptr inbounds %struct.s2, %struct.s2* %vs, i64 0, i32 1
  %1 = load <4 x float>, <4 x float>* %v, align 16
  store <4 x float> %1, <4 x float>* @ve, align 16
  ret void














}

attributes #0 = { nounwind }

