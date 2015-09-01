

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"


define i32 @no_diverge(i32 %n, i32 %a, i32 %b) {

entry:
  %tid = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  %cond = icmp slt i32 %n, 0
  br i1 %cond, label %then, label %else 

then:
  %a1 = add i32 %a, %tid
  br label %merge
else:
  %b2 = add i32 %b, %tid
  br label %merge
merge:
  %c = phi i32 [ %a1, %then ], [ %b2, %else ]
  ret i32 %c
}





define i32 @sync(i32 %a, i32 %b) {

bb1:
  %tid = call i32 @llvm.nvvm.read.ptx.sreg.tid.y()
  %cond = icmp slt i32 %tid, 5
  br i1 %cond, label %bb2, label %bb3

bb2:
  br label %bb3
bb3:
  %c = phi i32 [ %a, %bb1 ], [ %b, %bb2 ] 

  ret i32 %c
}







define i32 @mixed(i32 %n, i32 %a, i32 %b) {

bb1:
  %tid = call i32 @llvm.nvvm.read.ptx.sreg.tid.z()
  %cond = icmp slt i32 %tid, 5
  br i1 %cond, label %bb6, label %bb2

bb2:
  %cond2 = icmp slt i32 %n, 0
  br i1 %cond2, label %bb4, label %bb3
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %c = phi i32 [ %a, %bb3 ], [ %b, %bb4 ]

  br label %bb6
bb6:
  %c2 = phi i32 [ 0, %bb1], [ %c, %bb5 ]

  ret i32 %c2
}


define i32 @device(i32 %n, i32 %a, i32 %b) {




entry:
  %cond = icmp slt i32 %n, 0
  br i1 %cond, label %then, label %else

then:
  br label %merge
else:
  br label %merge
merge:
  %c = phi i32 [ %a, %then ], [ %b, %else ]
  ret i32 %c
}








define i32 @loop() {

entry:
  %laneid = call i32 @llvm.ptx.read.laneid()
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %i1, %loop ]

  %i1 = add i32 %i, 1
  %exit_cond = icmp sge i32 %i1, %laneid
  br i1 %exit_cond, label %loop_exit, label %loop
loop_exit:
  %cond = icmp eq i32 %i, 10
  br i1 %cond, label %then, label %else

then:
  ret i32 0
else:
  ret i32 1
}


define i32 @lcssa() {

entry:
  %tid = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  br label %loop
loop:
  %i = phi i32 [ 0, %entry ], [ %i1, %loop ]

  %i1 = add i32 %i, 1
  %exit_cond = icmp sge i32 %i1, %tid
  br i1 %exit_cond, label %loop_exit, label %loop
loop_exit:
  %i.lcssa = phi i32 [ %i, %loop ]

  %cond = icmp eq i32 %i.lcssa, 10
  br i1 %cond, label %then, label %else

then:
  ret i32 0
else:
  ret i32 1
}














define i32 @unstructured_loop(i1 %entry_cond) {

entry:
  %tid = call i32 @llvm.nvvm.read.ptx.sreg.tid.x()
  br i1 %entry_cond, label %loop_entry_1, label %loop_entry_2
loop_entry_1:
  %i1 = phi i32 [ 0, %entry ], [ %i3, %loop_latch ]
  %j1 = add i32 %i1, 1
  br label %loop_body
loop_entry_2:
  %i2 = phi i32 [ 0, %entry ], [ %i3, %loop_latch ]
  %j2 = add i32 %i2, 2
  br label %loop_body
loop_body:
  %i3 = phi i32 [ %j1, %loop_entry_1 ], [ %j2, %loop_entry_2 ]
  br label %loop_latch
loop_latch:
  %div = sdiv i32 %tid, %i3
  switch i32 %div, label %branch [ i32 1, label %loop_entry_1
                                   i32 2, label %loop_entry_2 ]
branch:
  %cmp = icmp eq i32 %i3, 5
  br i1 %cmp, label %then, label %else

then:
  ret i32 0
else:
  ret i32 1
}

declare i32 @llvm.nvvm.read.ptx.sreg.tid.x()
declare i32 @llvm.nvvm.read.ptx.sreg.tid.y()
declare i32 @llvm.nvvm.read.ptx.sreg.tid.z()
declare i32 @llvm.ptx.read.laneid()

!nvvm.annotations = !{!0, !1, !2, !3, !4}
!0 = !{i32 (i32, i32, i32)* @no_diverge, !"kernel", i32 1}
!1 = !{i32 (i32, i32)* @sync, !"kernel", i32 1}
!2 = !{i32 (i32, i32, i32)* @mixed, !"kernel", i32 1}
!3 = !{i32 ()* @loop, !"kernel", i32 1}
!4 = !{i32 (i1)* @unstructured_loop, !"kernel", i32 1}
