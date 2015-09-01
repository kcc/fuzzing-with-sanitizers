


declare i32 @FB()

define i32 @main() {
  %r = call i32 @FB( )   
  ret i32 %r
}

