















define void @simple() nounwind {
entry:
  br label %loop

loop:
  call void @loop_header()
  %t0 = tail call i32 @get()
  %t1 = icmp slt i32 %t0, 0
  br i1 %t1, label %done, label %bb

bb:
  call void @loop_latch()
  br label %loop

done:
  call void @exit()
  ret void
}












define void @slightly_more_involved() nounwind {
entry:
  br label %loop

loop:
  call void @body()
  %t0 = call i32 @get()
  %t1 = icmp slt i32 %t0, 2
  br i1 %t1, label %block_a, label %bb

bb:
  %t2 = call i32 @get()
  %t3 = icmp slt i32 %t2, 99
  br i1 %t3, label %exit, label %loop

block_a:
  call void @bar99()
  br label %loop

exit:
  call void @exit()
  ret void
}























define void @yet_more_involved() nounwind {
entry:
  br label %loop

loop:
  call void @body()
  %t0 = call i32 @get()
  %t1 = icmp slt i32 %t0, 2
  br i1 %t1, label %block_a, label %bb

bb:
  %t2 = call i32 @get()
  %t3 = icmp slt i32 %t2, 99
  br i1 %t3, label %exit, label %loop

block_a:
  call void @bar99()
  %z0 = call i32 @get()
  %z1 = icmp slt i32 %z0, 3000
  br i1 %z1, label %block_a_true, label %block_a_false

block_a_true:
  call void @block_a_true_func()
  br label %block_a_merge

block_a_false:
  call void @block_a_false_func()
  br label %block_a_merge

block_a_merge:
  call void @block_a_merge_func()
  br label %loop

exit:
  call void @exit()
  ret void
}



























define void @cfg_islands() nounwind {
entry:
  br label %loop

loop:
  call void @loop_header()
  %t0 = call i32 @get()
  %t1 = icmp slt i32 %t0, 100
  br i1 %t1, label %block100, label %bb

bb:
  %t2 = call i32 @get()
  %t3 = icmp slt i32 %t2, 101
  br i1 %t3, label %block101, label %bb1

bb1:
  %t4 = call i32 @get()
  %t5 = icmp slt i32 %t4, 102
  br i1 %t5, label %block102, label %bb2

bb2:
  %t6 = call i32 @get()
  %t7 = icmp slt i32 %t6, 103
  br i1 %t7, label %exit, label %bb3

bb3:
  call void @loop_latch()
  br label %loop

exit:
  call void @exit()
  ret void

block100:
  call void @bar100()
  br label %loop

block101:
  call void @bar101()
  br label %loop

block102:
  call void @bar102()
  br label %loop
}

declare void @bar99() nounwind
declare void @bar100() nounwind
declare void @bar101() nounwind
declare void @bar102() nounwind
declare void @body() nounwind
declare void @exit() nounwind
declare void @loop_header() nounwind
declare void @loop_latch() nounwind
declare i32 @get() nounwind
declare void @block_a_true_func() nounwind
declare void @block_a_false_func() nounwind
declare void @block_a_merge_func() nounwind
