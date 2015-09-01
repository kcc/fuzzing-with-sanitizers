

declare void @helper(i32)

define void @test1(i1 %a, i1 %b) {

entry:
  br i1 %a, label %Y, label %X, !prof !0


X:
  %c = or i1 %b, false
  br i1 %c, label %Z, label %Y, !prof !1

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}

define void @test2(i1 %a, i1 %b) {

entry:
  br i1 %a, label %X, label %Y, !prof !1



X:
  %c = or i1 %b, false
  br i1 %c, label %Z, label %Y, !prof !2

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}

define void @test3(i1 %a, i1 %b) {


entry:
  br i1 %a, label %X, label %Y, !prof !1

X:
  %c = or i1 %b, false
  br i1 %c, label %Z, label %Y

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}

define void @test4(i1 %a, i1 %b) {


entry:
  br i1 %a, label %X, label %Y

X:
  %c = or i1 %b, false
  br i1 %c, label %Z, label %Y, !prof !1

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}


define void @test5(i32 %M, i32 %N) nounwind uwtable {
entry:
  switch i32 %N, label %sw2 [
    i32 1, label %sw2
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !prof !3






sw.bb:
  call void @helper(i32 0)
  br label %sw.epilog

sw.bb1:
  call void @helper(i32 1)
  br label %sw.epilog

sw2:
  call void @helper(i32 2)
  br label %sw.epilog

sw.epilog:
  ret void
}




define void @test6(i32 %M, i32 %N) nounwind uwtable {
entry:
  switch i32 %N, label %sw2 [
    i32 1, label %sw2
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !prof !4







sw.bb:
  call void @helper(i32 0)
  br label %sw.epilog

sw.bb1:
  call void @helper(i32 1)
  br label %sw.epilog

sw2:


  switch i32 %N, label %sw.epilog [
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ], !prof !5

sw.bb4:
  call void @helper(i32 2)
  br label %sw.epilog

sw.bb5:
  call void @helper(i32 3)
  br label %sw.epilog

sw.epilog:
  ret void
}


define void @test1_swap(i1 %a, i1 %b) {

entry:
  br i1 %a, label %Y, label %X, !prof !0


X:
  %c = or i1 %b, false
  br i1 %c, label %Y, label %Z, !prof !1

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}

define void @test7(i1 %a, i1 %b) {

entry:
  %c = or i1 %b, false
  br i1 %a, label %Y, label %X, !prof !0


X:
  br i1 %c, label %Y, label %Z, !prof !6

Y:
  call void @helper(i32 0)
  ret void

Z:
  call void @helper(i32 1)
  ret void
}


define void @test8(i64 %x, i64 %y) nounwind {

entry:
    %lt = icmp slt i64 %x, %y

    %qux = select i1 %lt, i32 0, i32 2
    switch i32 %qux, label %bees [
        i32 0, label %a
        i32 1, label %b
        i32 2, label %b
    ], !prof !7
a:
    call void @helper(i32 0) nounwind
    ret void
b:
    call void @helper(i32 1) nounwind
    ret void
bees:
    call void @helper(i32 2) nounwind
    ret void
}



define i1 @test9(i32 %x, i32 %y) nounwind {

entry:
    switch i32 %x, label %bees [
        i32 0, label %a
        i32 1, label %end
        i32 2, label %end
    ], !prof !7







a:
    call void @helper(i32 0) nounwind
    %reta = icmp slt i32 %x, %y
    ret i1 %reta

bees:
    %tmp = icmp eq i32 %x, 92
    br label %end

end:


    %ret = phi i1 [ true, %entry ], [%tmp, %bees], [true, %entry]
    call void @helper(i32 2) nounwind
    ret i1 %ret
}

define void @test10(i32 %x) nounwind readnone ssp noredzone {
entry:
 switch i32 %x, label %lor.rhs [
   i32 2, label %lor.end
   i32 1, label %lor.end
   i32 3, label %lor.end
 ], !prof !7

lor.rhs:
 call void @helper(i32 1) nounwind
 ret void

lor.end:
 call void @helper(i32 0) nounwind
 ret void





}


define void @test11(i32 %x) nounwind {
  %i = shl i32 %x, 1
  switch i32 %i, label %a [
    i32 21, label %b
    i32 24, label %c
  ], !prof !8




a:
 call void @helper(i32 0) nounwind
 ret void
b:
 call void @helper(i32 1) nounwind
 ret void
c:
 call void @helper(i32 2) nounwind
 ret void
}


define void @test12(i32 %M, i32 %N) nounwind uwtable {
entry:
  switch i32 %N, label %sw.bb [
    i32 1, label %sw.bb
  ], !prof !9





sw.bb:
  call void @helper(i32 0)
  br label %sw.epilog

sw.epilog:
  ret void
}



define void @test13(i32 %x) nounwind {
entry:
  %i = shl i32 %x, 1
  switch i32 %i, label %a [
    i32 21, label %b
    i32 25, label %c
  ], !prof !8





a:
 call void @helper(i32 0) nounwind
 ret void
b:
 call void @helper(i32 1) nounwind
 ret void
c:
 call void @helper(i32 2) nounwind
 ret void
}




@max_regno = common global i32 0, align 4
define void @test14(i32* %old, i32 %final) {


for.cond:
  br label %for.cond2
for.cond2:
  %i.1 = phi i32 [ %inc19, %for.inc ], [ 0, %for.cond ]
  %bit.0 = phi i32 [ %shl, %for.inc ], [ 1, %for.cond ]
  %tobool = icmp eq i32 %bit.0, 0
  br i1 %tobool, label %for.exit, label %for.body3, !prof !10
for.body3:
  %v3 = load i32, i32* @max_regno, align 4
  %cmp4 = icmp eq i32 %i.1, %v3
  br i1 %cmp4, label %for.exit, label %for.inc, !prof !11
for.inc:
  %shl = shl i32 %bit.0, 1
  %inc19 = add nsw i32 %i.1, 1
  br label %for.cond2
for.exit:
  ret void
}

!0 = !{!"branch_weights", i32 3, i32 5}
!1 = !{!"branch_weights", i32 1, i32 1}
!2 = !{!"branch_weights", i32 1, i32 2}
!3 = !{!"branch_weights", i32 4, i32 3, i32 2, i32 1}
!4 = !{!"branch_weights", i32 4, i32 3, i32 2, i32 1}
!5 = !{!"branch_weights", i32 7, i32 6, i32 5}
!6 = !{!"branch_weights", i32 1, i32 3}
!7 = !{!"branch_weights", i32 33, i32 9, i32 8, i32 7}
!8 = !{!"branch_weights", i32 33, i32 9, i32 8}
!9 = !{!"branch_weights", i32 7, i32 6}
!10 = !{!"branch_weights", i32 672646, i32 21604207}
!11 = !{!"branch_weights", i32 6960, i32 21597248}














