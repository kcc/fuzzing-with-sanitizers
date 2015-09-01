


define i32 @f() {
entry:
  br label %BB1

BB1:                                              

  %x = phi i32 [ -29, %entry ], [ 0, %BB1 ]       
  %rem = srem i32 %x, 2                           
  %t = icmp eq i32 %rem, -1                       
  br i1 %t, label %BB2, label %BB1


BB2:                                              

  ret i32 %x
}
