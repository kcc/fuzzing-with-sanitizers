






define void @multiexit(i1 %x) {

entry:
  br label %loop.1


loop.1:
  br i1 %x, label %exit.1, label %loop.2, !prof !0


loop.2:
  br i1 %x, label %exit.2, label %loop.1, !prof !1


exit.1:
  br label %return


exit.2:
  br label %return


return:
  ret void
}

!0 = !{!"branch_weights", i32 1, i32 7}
!1 = !{!"branch_weights", i32 3, i32 4}

























































define void @multientry(i1 %x) {


entry:

  br i1 %x, label %c1, label %c2, !prof !2

c1:


  br i1 %x, label %c2, label %exit, !prof !2

c2:


  br i1 %x, label %c1, label %exit, !prof !2

exit:

  ret void
}

!2 = !{!"branch_weights", i32 3, i32 1}

















define void @crossloops(i2 %x) {


entry:

  switch i2 %x, label %exit [ i2 1, label %c1
                              i2 2, label %c2 ], !prof !3

c1:

  switch i2 %x, label %exit [ i2 1, label %c1
                              i2 2, label %c2 ], !prof !3

c2:

  switch i2 %x, label %exit [ i2 1, label %c1
                              i2 2, label %c2 ], !prof !3

exit:

  ret void
}

!3 = !{!"branch_weights", i32 2, i32 2, i32 2}


define void @loop_around_irreducible(i1 %x) {


entry:

  br label %loop

loop:

  br i1 %x, label %left, label %right, !prof !4

left:

  br i1 %x, label %right, label %loop.end, !prof !5

right:

  br i1 %x, label %left, label %loop.end, !prof !5

loop.end:

  br i1 %x, label %loop, label %exit, !prof !5

exit:

  ret void
}
!4 = !{!"branch_weights", i32 1, i32 1}
!5 = !{!"branch_weights", i32 3, i32 1}


define void @two_sccs(i1 %x) {


entry:

  br i1 %x, label %a, label %b, !prof !6

a:

  br i1 %x, label %a.left, label %a.right, !prof !7

a.left:

  br i1 %x, label %a.right, label %exit, !prof !6

a.right:

  br i1 %x, label %a.left, label %exit, !prof !6

b:

  br i1 %x, label %b.left, label %b.right, !prof !7

b.left:

  br i1 %x, label %b.right, label %exit, !prof !8

b.right:

  br i1 %x, label %b.left, label %exit, !prof !8

exit:

  ret void
}
!6 = !{!"branch_weights", i32 3, i32 1}
!7 = !{!"branch_weights", i32 1, i32 1}
!8 = !{!"branch_weights", i32 4, i32 1}


define void @loop_inside_irreducible(i1 %x) {


entry:

  br i1 %x, label %left, label %right, !prof !9

left:

  br i1 %x, label %right, label %exit, !prof !10

right:

  br label %loop

loop:

  br i1 %x, label %loop, label %right.end, !prof !11

right.end:

  br i1 %x, label %left, label %exit, !prof !10

exit:

  ret void
}
!9 = !{!"branch_weights", i32 1, i32 1}
!10 = !{!"branch_weights", i32 3, i32 1}
!11 = !{!"branch_weights", i32 2, i32 1}


define void @loop_around_branch_with_irreducible(i1 %x) {


entry:

  br label %loop

loop:

  br i1 %x, label %normal, label %irreducible.entry, !prof !12

normal:

  br label %loop.end

irreducible.entry:

  br i1 %x, label %left, label %right, !prof !13

left:

  br i1 %x, label %right, label %irreducible.exit, !prof !12

right:

  br i1 %x, label %left, label %irreducible.exit, !prof !12

irreducible.exit:

  br label %loop.end

loop.end:

  br i1 %x, label %loop, label %exit, !prof !13

exit:

  ret void
}
!12 = !{!"branch_weights", i32 3, i32 1}
!13 = !{!"branch_weights", i32 1, i32 1}


define void @loop_around_branch_with_irreducible_around_loop(i1 %x) {


entry:

  br label %loop

loop:

  br i1 %x, label %normal, label %irreducible, !prof !14

normal:

  br label %loop.end

irreducible:

  br i1 %x, label %left, label %right, !prof !15

left:

  br i1 %x, label %right, label %loop.end, !prof !16

right:

  br label %right.loop

right.loop:

  br i1 %x, label %right.loop, label %right.end, !prof !17

right.end:

  br i1 %x, label %left, label %loop.end, !prof !16

loop.end:

  br i1 %x, label %loop, label %exit, !prof !14

exit:

  ret void
}
!14 = !{!"branch_weights", i32 2, i32 1}
!15 = !{!"branch_weights", i32 1, i32 1}
!16 = !{!"branch_weights", i32 3, i32 1}
!17 = !{!"branch_weights", i32 4, i32 1}


define void @nonheader(i1 %x) {


entry:

  br i1 %x, label %left, label %right, !prof !18

left:

  br i1 %x, label %bottom, label %exit, !prof !19

right:

  br i1 %x, label %bottom, label %exit, !prof !20

bottom:

  br i1 %x, label %left, label %right, !prof !18

exit:

  ret void
}
!18 = !{!"branch_weights", i32 1, i32 1}
!19 = !{!"branch_weights", i32 1, i32 3}
!20 = !{!"branch_weights", i32 3, i32 1}







define void @nonentry_header(i1 %x, i2 %y) {


entry:

  br i1 %x, label %left, label %right, !prof !21

left:

  br i1 %x, label %top, label %bottom, !prof !22

right:

  br i1 %x, label %top, label %bottom, !prof !22

top:

  switch i2 %y, label %exit [ i2 0, label %left
                              i2 1, label %right
                              i2 2, label %bottom ], !prof !23

bottom:

  br label %top

exit:

  ret void
}
!21 = !{!"branch_weights", i32 2, i32 1}
!22 = !{!"branch_weights", i32 1, i32 1}
!23 = !{!"branch_weights", i32 8, i32 1, i32 3, i32 12}
