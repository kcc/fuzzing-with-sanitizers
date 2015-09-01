

target triple = "x86_64-unknown-linux-gnu"

declare i32 @sqrt()


define i32 @foo() {
  
  
  %r = call i32 @sqrt()
  ret i32 %r
}
