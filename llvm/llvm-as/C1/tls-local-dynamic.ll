

@x = internal thread_local global i32 0, align 4
@y = internal thread_local global i32 0, align 4



define i32* @get_x() {
entry:
  ret i32* @x






}

define i32* @get_y() {
entry:
  ret i32* @y
}

define i32 @f(i32 %i) {
entry:
  %cmp = icmp eq i32 %i, 1
  br i1 %cmp, label %return, label %if.else






if.else:
  %0 = load i32, i32* @x, align 4
  %cmp1 = icmp eq i32 %i, 2
  br i1 %cmp1, label %if.then2, label %return







if.then2:
  %1 = load i32, i32* @y, align 4
  %add = add nsw i32 %1, %0
  br label %return







return:
  %retval.0 = phi i32 [ %add, %if.then2 ], [ 5, %entry ], [ %0, %if.else ]
  ret i32 %retval.0
}
