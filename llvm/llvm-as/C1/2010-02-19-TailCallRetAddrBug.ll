
















%tupl = type [9 x i32]

declare fastcc void @l297(i32 %r10, i32 %r9, i32 %r8, i32 %r7, i32 %r6, i32 %r5, i32 %r3, i32 %r2) noreturn nounwind
declare fastcc void @l298(i32 %r10, i32 %r9, i32 %r4) noreturn nounwind

define fastcc void @l186(%tupl* %r1) noreturn nounwind {
entry:
  %ptr1 = getelementptr %tupl, %tupl* %r1, i32 0, i32 0
  %r2 = load i32, i32* %ptr1
  %ptr3 = getelementptr %tupl, %tupl* %r1, i32 0, i32 1
  %r3 = load i32, i32* %ptr3
  %ptr5 = getelementptr %tupl, %tupl* %r1, i32 0, i32 2
  %r4 = load i32, i32* %ptr5
  %ptr7 = getelementptr %tupl, %tupl* %r1, i32 0, i32 3
  %r5 = load i32, i32* %ptr7
  %ptr9 = getelementptr %tupl, %tupl* %r1, i32 0, i32 4
  %r6 = load i32, i32* %ptr9
  %ptr11 = getelementptr %tupl, %tupl* %r1, i32 0, i32 5
  %r7 = load i32, i32* %ptr11
  %ptr13 = getelementptr %tupl, %tupl* %r1, i32 0, i32 6
  %r8 = load i32, i32* %ptr13
  %ptr15 = getelementptr %tupl, %tupl* %r1, i32 0, i32 7
  %r9 = load i32, i32* %ptr15
  %ptr17 = getelementptr %tupl, %tupl* %r1, i32 0, i32 8
  %r10 = load i32, i32* %ptr17
  %cond = icmp eq i32 %r10, 3
  br i1 %cond, label %true, label %false

true:
  tail call fastcc void @l297(i32 %r10, i32 %r9, i32 %r8, i32 %r7, i32 %r6, i32 %r5, i32 %r3, i32 %r2) noreturn nounwind
  ret void

false:
  tail call fastcc void @l298(i32 %r10, i32 %r9, i32 %r4) noreturn nounwind
  ret void
}
