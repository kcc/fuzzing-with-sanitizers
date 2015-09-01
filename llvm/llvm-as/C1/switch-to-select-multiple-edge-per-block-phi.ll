












@b = common global i32 0, align 4
@a = common global i32 0, align 4


define i32 @fn1() {



entry:
  %0 = load i32, i32* @b, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:
  %1 = load i32, i32* @a, align 4
  switch i32 %1, label %if.end3 [
    i32 5, label %return
    i32 0, label %return
  ]

if.end3:
  br label %return

return:
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %1, %if.then ], [ %1, %if.then ]
  ret i32 %retval.0
}
