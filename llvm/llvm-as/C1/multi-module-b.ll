declare i32 @FC()

define i32 @FB() nounwind {
  %r = call i32 @FC( )   
  ret i32 %r
}

