

define void @f1(i8* %x) {
entry:
  store i8 0, i8* %x, align 1, !range !0
  ret void
}
!0 = !{i8 0, i8 1}



define i8 @f2(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !1
  ret i8 %y
}
!1 = !{}


define i8 @f3(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !2
  ret i8 %y
}
!2 = !{i8 0}


define i8 @f4(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !3
  ret i8 %y
}
!3 = !{double 0.0, i8 0}


define i8 @f5(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !4
  ret i8 %y
}
!4 = !{i8 0, double 0.0}


define i8 @f6(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !5
  ret i8 %y
}
!5 = !{i32 0, i8 0}



define i8 @f7(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !6
  ret i8 %y
}
!6 = !{i8 0, i32 0}



define i8 @f8(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !7
  ret i8 %y
}
!7 = !{i32 0, i32 0}



define i8 @f9(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !8
  ret i8 %y
}
!8 = !{i8 0, i8 0}


define i8 @f10(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !9
  ret i8 %y
}
!9 = !{i8 0, i8 2, i8 1, i8 3}


define i8 @f11(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !10
  ret i8 %y
}
!10 = !{i8 0, i8 2, i8 2, i8 3}


define i8 @f12(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !11
  ret i8 %y
}
!11 = !{i8 1, i8 2, i8 -1, i8 0}


define i8 @f13(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !12
  ret i8 %y
}
!12 = !{i8 1, i8 3, i8 5, i8 1}


define i8 @f14(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !13
  ret i8 %y
}
!13 = !{i8 1, i8 3, i8 5, i8 2}


define i8 @f15(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !14
  ret i8 %y
}
!14 = !{i8 10, i8 1, i8 12, i8 13}


define i8 @f16(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !16
  ret i8 %y
}
!16 = !{i8 1, i8 3, i8 4, i8 5, i8 6, i8 2}


define i8 @f17(i8* %x) {
entry:
  %y = load i8, i8* %x, align 1, !range !17
  ret i8 %y
}
!17 = !{i8 1, i8 3, i8 4, i8 5, i8 6, i8 1}


define i8 @f18() {
entry:
  %y = call i8 undef(), !range !18
  ret i8 %y
}
!18 = !{}

