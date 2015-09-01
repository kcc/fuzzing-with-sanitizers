


define i32 @f() {
entry:
  %tmp = call i32 @e( )
  ret i32 %tmp
}


declare i32 @e() readonly


