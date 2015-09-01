





























target triple = "x86_64-apple-darwin"

define i32 @foo() {
  ret i32 7
}

define i32 @main() {
  %i = call i32 @foo()
  ret i32 %i
}
