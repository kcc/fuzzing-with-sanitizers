

define i32 @twoalloca(i32 %size) nounwind {
entry:


  alloca i8, i32 %size    
  alloca i8, i32 %size    
  call i32 @foo( i8* %0 ) nounwind    
  call i32 @foo( i8* %1 ) nounwind    
  add i32 %3, %2    
  ret i32 %4
}

declare i32 @foo(i8*)
