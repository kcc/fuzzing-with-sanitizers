

declare void @foo(i32)



define void @test(i32 %x) nounwind {
entry:
  switch i32 %x, label %sw.default [
    i32 1, label %sw.bb
    i32 155, label %sw.bb
    i32 156, label %sw.bb
    i32 157, label %sw.bb
    i32 158, label %sw.bb
    i32 159, label %sw.bb
    i32 1134, label %sw.bb
    i32 1140, label %sw.bb
  ], !prof !1

sw.bb:
  call void @foo(i32 0)
  br label %sw.epilog

sw.default:
  call void @foo(i32 1)
  br label %sw.epilog

sw.epilog:
  ret void























}



define void @test2(i32 %x) nounwind {
entry:




  switch i32 %x, label %sw.default [
    i32 1, label %sw.bb
    i32 10, label %sw.bb2
    i32 11, label %sw.bb3
    i32 12, label %sw.bb4
    i32 13, label %sw.bb5
    i32 14, label %sw.bb5
  ], !prof !3

sw.bb:
  call void @foo(i32 0)
  br label %sw.epilog

sw.bb2:
  call void @foo(i32 2)
  br label %sw.epilog

sw.bb3:
  call void @foo(i32 3)
  br label %sw.epilog

sw.bb4:
  call void @foo(i32 4)
  br label %sw.epilog

sw.bb5:
  call void @foo(i32 5)
  br label %sw.epilog

sw.default:
  call void @foo(i32 1)
  br label %sw.epilog

sw.epilog:
  ret void

















}



define void @test3(i32 %x) nounwind {
entry:




  switch i32 %x, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb2
    i32 12, label %sw.bb3
    i32 13, label %sw.bb4
    i32 14, label %sw.bb5
  ], !prof !2

sw.bb:
  call void @foo(i32 0)
  br label %sw.epilog

sw.bb2:
  call void @foo(i32 2)
  br label %sw.epilog

sw.bb3:
  call void @foo(i32 3)
  br label %sw.epilog

sw.bb4:
  call void @foo(i32 4)
  br label %sw.epilog

sw.bb5:
  call void @foo(i32 5)
  br label %sw.epilog

sw.default:
  call void @foo(i32 1)
  br label %sw.epilog

sw.epilog:
  ret void
















}



define void @test4(i32 %x) nounwind {
entry:




  switch i32 %x, label %sw.default [
    i32 1, label %sw.bb
    i32 111, label %sw.bb2
    i32 112, label %sw.bb3
    i32 113, label %sw.bb3
    i32 114, label %sw.bb2
    i32 115, label %sw.bb2
  ], !prof !3

sw.bb:
  call void @foo(i32 0)
  br label %sw.epilog

sw.bb2:
  call void @foo(i32 2)
  br label %sw.epilog

sw.bb3:
  call void @foo(i32 3)
  br label %sw.epilog

sw.default:
  call void @foo(i32 1)
  br label %sw.epilog

sw.epilog:
  ret void













}

!1 = !{!"branch_weights", i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10} 
!2 = !{!"branch_weights", i32 10, i32 10, i32 10, i32 10, i32 10, i32 10} 
!3 = !{!"branch_weights", i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10} 
