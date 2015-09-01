












define i32 @test_jump_threading(i1 %arg1, i32 %arg2) {
checkneg:
  %cmp = icmp slt i32 %arg2, 0
  br i1 %cmp, label %arg2neg, label %checkpos

arg2neg:
  br i1 %arg1, label %end, label %checkpos

checkpos:
  %cmp2 = icmp sgt i32 %arg2, 0
  br i1 %cmp2, label %arg2pos, label %end

arg2pos:
  br label %end

end:
  %0 = phi i32 [ 1, %arg2neg ], [ 2, %checkpos ], [ 3, %arg2pos ]
  ret i32 %0
}







define i32 @test_infinite_loop(i1 %arg1, i32 %arg2) {
checkneg:
  %cmp = icmp slt i32 %arg2, 0
  br i1 %cmp, label %arg2neg, label %checkpos

arg2neg:
  br i1 %arg1, label %arg2neg, label %checkpos

checkpos:
  %cmp2 = icmp sgt i32 %arg2, 0
  br i1 %cmp2, label %arg2pos, label %end

arg2pos:
  br label %end

end:
  %0 = phi i32 [ 2, %checkpos ], [ 3, %arg2pos ]
  ret i32 %0
}
