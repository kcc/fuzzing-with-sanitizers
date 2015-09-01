












define void @foo(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @step2(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @start1(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @start1_step2(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @startx(i4 %n, i4 %x) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @startx_step2(i4 %n, i4 %x) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @nsw(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}













define void @nsw_step2(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}





define void @nsw_start1(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @nsw_start1_step2(i4 %n) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @nsw_startx(i4 %n, i4 %x) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @nsw_startx_step2(i4 %n, i4 %x) {
entry:
  %s = icmp sgt i4 %n, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %n
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_step2(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_start1(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_start1_step2(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_startx(i4 %n, i4 %x) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_startx_step2(i4 %n, i4 %x) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw_step2(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 0, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw_start1(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw_start1_step2(i4 %n) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ 1, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw_startx(i4 %n, i4 %x) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 1
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}




define void @even_nsw_startx_step2(i4 %n, i4 %x) {
entry:
  %m = shl i4 %n, 1
  %s = icmp sgt i4 %m, 0
  br i1 %s, label %loop, label %exit
loop:
  %i = phi i4 [ %x, %entry ], [ %i.next, %loop ]
  %i.next = add nsw i4 %i, 2
  %t = icmp slt i4 %i.next, %m
  br i1 %t, label %loop, label %exit
exit:
  ret void
}
