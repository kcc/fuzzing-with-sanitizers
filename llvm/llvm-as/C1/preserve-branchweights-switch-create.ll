

declare void @func2(i32)
declare void @func4(i32)
declare void @func6(i32)
declare void @func8(i32)



define void @test1(i32 %N) nounwind uwtable {
entry:
  %cmp = icmp eq i32 %N, 2
  br i1 %cmp, label %if.then, label %if.else, !prof !0




if.then:
  call void @func2(i32 %N) nounwind
  br label %if.end9

if.else:
  %cmp2 = icmp eq i32 %N, 4
  br i1 %cmp2, label %if.then7, label %if.else8, !prof !1

if.then7:
  call void @func4(i32 %N) nounwind
  br label %if.end

if.else8:
  call void @func8(i32 %N) nounwind
  br label %if.end

if.end:
  br label %if.end9

if.end9:
  ret void
}


define void @test2(i32 %M, i32 %N) nounwind uwtable {
entry:
  %cmp = icmp sgt i32 %M, 2
  br i1 %cmp, label %sw1, label %sw2

sw1:
  switch i32 %N, label %sw2 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !prof !2







sw.bb:
  call void @func2(i32 %N) nounwind
  br label %sw.epilog

sw.bb1:
  call void @func4(i32 %N) nounwind
  br label %sw.epilog

sw2:


  switch i32 %N, label %sw.epilog [
    i32 2, label %sw.bb4
    i32 4, label %sw.bb5
  ], !prof !3

sw.bb4:
  call void @func6(i32 %N) nounwind
  br label %sw.epilog

sw.bb5:
  call void @func8(i32 %N) nounwind
  br label %sw.epilog

sw.epilog:
  ret void
}


define void @test3(i32 %M, i32 %N) nounwind uwtable {
entry:
  %cmp = icmp sgt i32 %M, 2
  br i1 %cmp, label %sw1, label %sw2

sw1:
  switch i32 %N, label %sw.bb [
    i32 2, label %sw2
    i32 3, label %sw2
    i32 1, label %sw.bb1
  ], !prof !4







sw.bb:
  call void @func2(i32 %N) nounwind
  br label %sw.epilog

sw.bb1:
  call void @func4(i32 %N) nounwind
  br label %sw.epilog

sw2:
  switch i32 %N, label %sw.epilog [
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
  ], !prof !5

sw.bb4:
  call void @func6(i32 %N) nounwind
  br label %sw.epilog

sw.bb5:
  call void @func8(i32 %N) nounwind
  br label %sw.epilog

sw.epilog:
  ret void
}

!0 = !{!"branch_weights", i32 64, i32 4}
!1 = !{!"branch_weights", i32 4, i32 64}

!2 = !{!"branch_weights", i32 4, i32 4, i32 8}
!3 = !{!"branch_weights", i32 8, i32 8, i32 4}

!4 = !{!"branch_weights", i32 7, i32 6, i32 4, i32 3}
!5 = !{!"branch_weights", i32 17, i32 13, i32 9}

