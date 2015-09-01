

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @test1(x86_mmx %a, x86_mmx %b, i64* %ptr) {







entry:
  %a.cast = bitcast x86_mmx %a to i64
  %b.cast = bitcast x86_mmx %b to i64
  %a.and = and i64 %a.cast, 42
  %b.and = and i64 %b.cast, 42
  %gep = getelementptr i64, i64* %ptr, i32 1
  store i64 %a.and, i64* %ptr
  store i64 %b.and, i64* %gep
  ret void
}

define void @test2(x86_mmx %a, x86_mmx %b) {







entry:
  br i1 undef, label %if.then, label %exit

if.then:
  %a.cast = bitcast x86_mmx %a to i64
  %b.cast = bitcast x86_mmx %b to i64
  %a.and = and i64 %a.cast, 42
  %b.and = and i64 %b.cast, 42
  br label %exit

exit:
  %a.phi = phi i64 [ 0, %entry ], [ %a.and, %if.then ]
  %b.phi = phi i64 [ 0, %entry ], [ %b.and, %if.then ]
  tail call void @f(i64 %a.phi, i64 %b.phi)
  ret void
}

declare void @f(i64, i64)
