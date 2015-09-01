



%v2f32 = type <2 x float>

define %v2f32 @test_v2f32.sqrt(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.sqrt.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.powi(%v2f32 %a, i32 %b) {
  
  %1 = call %v2f32 @llvm.powi.v2f32(%v2f32 %a, i32 %b)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.sin(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.sin.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.cos(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.cos.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.pow(%v2f32 %a, %v2f32 %b) {
  
  %1 = call %v2f32 @llvm.pow.v2f32(%v2f32 %a, %v2f32 %b)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.exp(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.exp.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.exp2(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.exp2.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.log(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.log.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.log10(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.log10.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.log2(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.log2.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.fma(%v2f32 %a, %v2f32 %b, %v2f32 %c) {
  
  %1 = call %v2f32 @llvm.fma.v2f32(%v2f32 %a, %v2f32 %b, %v2f32 %c)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.fabs(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.fabs.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.floor(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.floor.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.ceil(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.ceil.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.trunc(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.trunc.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.rint(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.rint.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

define %v2f32 @test_v2f32.nearbyint(%v2f32 %a) {
  
  %1 = call %v2f32 @llvm.nearbyint.v2f32(%v2f32 %a)
  ret %v2f32 %1
}

declare %v2f32 @llvm.sqrt.v2f32(%v2f32) #0
declare %v2f32 @llvm.powi.v2f32(%v2f32, i32) #0
declare %v2f32 @llvm.sin.v2f32(%v2f32) #0
declare %v2f32 @llvm.cos.v2f32(%v2f32) #0
declare %v2f32 @llvm.pow.v2f32(%v2f32, %v2f32) #0
declare %v2f32 @llvm.exp.v2f32(%v2f32) #0
declare %v2f32 @llvm.exp2.v2f32(%v2f32) #0
declare %v2f32 @llvm.log.v2f32(%v2f32) #0
declare %v2f32 @llvm.log10.v2f32(%v2f32) #0
declare %v2f32 @llvm.log2.v2f32(%v2f32) #0
declare %v2f32 @llvm.fma.v2f32(%v2f32, %v2f32, %v2f32) #0
declare %v2f32 @llvm.fabs.v2f32(%v2f32) #0
declare %v2f32 @llvm.floor.v2f32(%v2f32) #0
declare %v2f32 @llvm.ceil.v2f32(%v2f32) #0
declare %v2f32 @llvm.trunc.v2f32(%v2f32) #0
declare %v2f32 @llvm.rint.v2f32(%v2f32) #0
declare %v2f32 @llvm.nearbyint.v2f32(%v2f32) #0



%v4f32 = type <4 x float>

define %v4f32 @test_v4f32.sqrt(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.sqrt.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.powi(%v4f32 %a, i32 %b) {
  
  %1 = call %v4f32 @llvm.powi.v4f32(%v4f32 %a, i32 %b)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.sin(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.sin.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.cos(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.cos.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.pow(%v4f32 %a, %v4f32 %b) {
  
  %1 = call %v4f32 @llvm.pow.v4f32(%v4f32 %a, %v4f32 %b)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.exp(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.exp.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.exp2(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.exp2.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.log(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.log.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.log10(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.log10.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.log2(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.log2.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.fma(%v4f32 %a, %v4f32 %b, %v4f32 %c) {
  
  %1 = call %v4f32 @llvm.fma.v4f32(%v4f32 %a, %v4f32 %b, %v4f32 %c)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.fabs(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.fabs.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.floor(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.floor.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.ceil(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.ceil.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.trunc(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.trunc.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.rint(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.rint.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

define %v4f32 @test_v4f32.nearbyint(%v4f32 %a) {
  
  %1 = call %v4f32 @llvm.nearbyint.v4f32(%v4f32 %a)
  ret %v4f32 %1
}

declare %v4f32 @llvm.sqrt.v4f32(%v4f32) #0
declare %v4f32 @llvm.powi.v4f32(%v4f32, i32) #0
declare %v4f32 @llvm.sin.v4f32(%v4f32) #0
declare %v4f32 @llvm.cos.v4f32(%v4f32) #0
declare %v4f32 @llvm.pow.v4f32(%v4f32, %v4f32) #0
declare %v4f32 @llvm.exp.v4f32(%v4f32) #0
declare %v4f32 @llvm.exp2.v4f32(%v4f32) #0
declare %v4f32 @llvm.log.v4f32(%v4f32) #0
declare %v4f32 @llvm.log10.v4f32(%v4f32) #0
declare %v4f32 @llvm.log2.v4f32(%v4f32) #0
declare %v4f32 @llvm.fma.v4f32(%v4f32, %v4f32, %v4f32) #0
declare %v4f32 @llvm.fabs.v4f32(%v4f32) #0
declare %v4f32 @llvm.floor.v4f32(%v4f32) #0
declare %v4f32 @llvm.ceil.v4f32(%v4f32) #0
declare %v4f32 @llvm.trunc.v4f32(%v4f32) #0
declare %v4f32 @llvm.rint.v4f32(%v4f32) #0
declare %v4f32 @llvm.nearbyint.v4f32(%v4f32) #0



%v2f64 = type <2 x double>

define %v2f64 @test_v2f64.sqrt(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.sqrt.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.powi(%v2f64 %a, i32 %b) {
  
  %1 = call %v2f64 @llvm.powi.v2f64(%v2f64 %a, i32 %b)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.sin(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.sin.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.cos(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.cos.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.pow(%v2f64 %a, %v2f64 %b) {
  
  %1 = call %v2f64 @llvm.pow.v2f64(%v2f64 %a, %v2f64 %b)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.exp(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.exp.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.exp2(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.exp2.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.log(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.log.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.log10(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.log10.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.log2(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.log2.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.fma(%v2f64 %a, %v2f64 %b, %v2f64 %c) {
  
  %1 = call %v2f64 @llvm.fma.v2f64(%v2f64 %a, %v2f64 %b, %v2f64 %c)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.fabs(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.fabs.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.floor(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.floor.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.ceil(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.ceil.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.trunc(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.trunc.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.rint(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.rint.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

define %v2f64 @test_v2f64.nearbyint(%v2f64 %a) {
  
  %1 = call %v2f64 @llvm.nearbyint.v2f64(%v2f64 %a)
  ret %v2f64 %1
}

declare %v2f64 @llvm.sqrt.v2f64(%v2f64) #0
declare %v2f64 @llvm.powi.v2f64(%v2f64, i32) #0
declare %v2f64 @llvm.sin.v2f64(%v2f64) #0
declare %v2f64 @llvm.cos.v2f64(%v2f64) #0
declare %v2f64 @llvm.pow.v2f64(%v2f64, %v2f64) #0
declare %v2f64 @llvm.exp.v2f64(%v2f64) #0
declare %v2f64 @llvm.exp2.v2f64(%v2f64) #0
declare %v2f64 @llvm.log.v2f64(%v2f64) #0
declare %v2f64 @llvm.log10.v2f64(%v2f64) #0
declare %v2f64 @llvm.log2.v2f64(%v2f64) #0
declare %v2f64 @llvm.fma.v2f64(%v2f64, %v2f64, %v2f64) #0
declare %v2f64 @llvm.fabs.v2f64(%v2f64) #0
declare %v2f64 @llvm.floor.v2f64(%v2f64) #0
declare %v2f64 @llvm.ceil.v2f64(%v2f64) #0
declare %v2f64 @llvm.trunc.v2f64(%v2f64) #0
declare %v2f64 @llvm.rint.v2f64(%v2f64) #0
declare %v2f64 @llvm.nearbyint.v2f64(%v2f64) #0

attributes #0 = { nounwind readonly }
