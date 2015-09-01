

@g = global i32 0, align 4

define i32 @TestNoTsan(i32 %cond) nounwind readonly uwtable {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %0 = load i32, i32* @g, align 4
  br label %return

return:                                           
  %retval = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval




}

define i32 @TestTsan(i32 %cond) nounwind readonly uwtable sanitize_thread {
entry:
  %tobool = icmp eq i32 %cond, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          
  %0 = load i32, i32* @g, align 4
  br label %return

return:                                           
  %retval = phi i32 [ %0, %if.then ], [ 0, %entry ]
  ret i32 %retval





}
