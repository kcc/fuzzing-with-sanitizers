



!22 = !{i32 42, !"foobar"}

declare i8 @llvm.something(metadata %a)
define void @foo1() {
  
  %x = call i8 @llvm.something(metadata !22)
  ret void
}




define void @test() {
  ret void, !abc !0
}

!0 = !{!0, i32 42 }

