


%struct.buf = type opaque

declare void @bar() nounwind optsize

define void @foo() nounwind optsize {




entry:
  %m.i = alloca %struct.buf*, align 4
  br label %bb

bb:
  br i1 undef, label %bb3, label %bb2

bb2:
  call void @bar() nounwind optsize
  br i1 undef, label %bb, label %bb3

bb3:
  br i1 undef, label %return, label %bb

return:





  ret void
}
