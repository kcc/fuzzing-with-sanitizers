







target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f128:128:128-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.S = type { double, ppc_fp128 }

define ppc_fp128 @test(%struct.S* byval %x) nounwind {
entry:
  %b = getelementptr inbounds %struct.S, %struct.S* %x, i32 0, i32 1
  %0 = load ppc_fp128, ppc_fp128* %b, align 16
  ret ppc_fp128 %0
}

















