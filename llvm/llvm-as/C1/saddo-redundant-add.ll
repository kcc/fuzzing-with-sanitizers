

define void @redundant_add(i64 %n) {






entry:
  br label %exit_check

exit_check:
  %i = phi i64 [ 0, %entry ], [ %i.next, %loop ]
  %c = icmp slt i64 %i, %n
  br i1 %c, label %loop, label %exit

loop:
  %i.o = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i, i64 1)
  %i.next = extractvalue { i64, i1 } %i.o, 0
  %o = extractvalue { i64, i1 } %i.o, 1
  br i1 %o, label %overflow, label %exit_check

exit:
  ret void

overflow:
  tail call void @llvm.trap()
  unreachable
}

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64)
declare void @llvm.trap()

