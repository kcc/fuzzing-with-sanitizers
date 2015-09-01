
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define void @exts() {

  
  %v1 = sext i16 undef to i32

  
  %v2 = sext <2 x i16> undef to <2 x i32>

  
  %v3 = sext <4 x i16> undef to <4 x i32>

  
  %v4 = sext <8 x i16> undef to <8 x i32>

  ret void
}

