




!21 = !{i32 42, !"foobar"}

declare i8 @llvm.something(metadata %a)
define void @foo() {
  %x = call i8 @llvm.something(metadata !21)
  ret void
}

