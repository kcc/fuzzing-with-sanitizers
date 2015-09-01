











declare void @printf(i32 %i)

define i32 @unused_phis() nounwind {
entry:
  br label %loop

loop:
  %i = phi i32 [0, %entry], [1, %then2]
  br i1 undef, label %exit1, label %then1

then1:
  br i1 undef, label %exit2, label %then2

then2:
  br i1 undef, label %exit3, label %loop

exit1:
  call void @printf(i32 %i)
  ret i32 %i

exit2:
  ret i32 %i

exit3:
  ret i32 0
}
