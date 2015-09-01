declare i32 @FA()

define i32 @FB() nounwind {
  %r = call i32 @FA( )   
  ret i32 %r
}

