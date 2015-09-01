

target triple = "powerpc-unknown-linux-gnu"

declare void @printf(i8*, ...)

define void @main() {
  call void (i8*, ...) @printf(i8* undef, i1 false)
  ret void
}










