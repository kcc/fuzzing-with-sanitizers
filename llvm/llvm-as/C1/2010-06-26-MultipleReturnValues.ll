


define i32 @foo(i32 %x) {


entry:
  %cond = icmp ugt i32 %x, 0                      
  br i1 %cond, label %return, label %body

body:                                             
  %y = add i32 %x, 1                              
  %tmp = call i32 @foo(i32 %y)                    

  ret i32 0


return:                                           
  ret i32 1
}
