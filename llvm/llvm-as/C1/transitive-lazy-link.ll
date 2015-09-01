










define available_externally i32 @f(i32 %x) {
  %1 = call i32 @g(i32 %x)
  ret i32 %1
}

define available_externally i32 @g(i32 %x) {
  ret i32 5
}

