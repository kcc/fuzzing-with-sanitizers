

@b = thread_local global i32 5, align 4
@a = thread_local global i32 0, align 4
@c = internal thread_local global i32 0, align 4
@d = internal thread_local global i32 5, align 4

define void @foo() nounwind ssp {
entry:
  store i32 1, i32* @a, align 4
  
  
  
  
  store i32 2, i32* @b, align 4
  
  
  

  store i32 3, i32* @c, align 4
  
  
  
  
  store i32 4, i32* @d, align 4
  
  
  
  
  
  ret void
}
