
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

declare void @foo(%struct.anon* %v)
define void @test(i32 %a, i32 %b, %struct.anon* byval nocapture %v) {
entry:
  call void @foo(%struct.anon* %v)
  ret void
}





