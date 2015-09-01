
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i64 @test1(i64 %a, i64 %b) {
entry:
  %c = icmp eq i64 %a, %b
  br label %foo

foo:
  call { i64, i64 } asm sideeffect "sc", "={r0},={r3},{r0},~{cr0},~{cr1},~{cr2},~{cr3},~{cr4},~{cr5},~{cr6},~{cr7}" (i64 %a)
  br i1 %c, label %bar, label %end

bar:
  ret i64 %b

end:
  ret i64 %a

















}

define i64 @test2(i64 %a, i64 %b) {
entry:
  %c = icmp eq i64 %a, %b
  br label %foo

foo:
  call { i64, i64 } asm sideeffect "sc", "={r0},={r3},{r0},~{cc},~{cr1},~{cr2},~{cr3},~{cr4},~{cr5},~{cr6},~{cr7}" (i64 %a)
  br i1 %c, label %bar, label %end

bar:
  ret i64 %b

end:
  ret i64 %a

















}

