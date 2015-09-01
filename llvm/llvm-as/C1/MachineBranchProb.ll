






define i32 @test2(i32 %x) nounwind uwtable readnone ssp {

entry:
  %conv = sext i32 %x to i64
  switch i64 %conv, label %return [
    i64 0, label %sw.bb
    i64 1, label %sw.bb
    i64 4, label %sw.bb
    i64 5, label %sw.bb1
  ], !prof !0







sw.bb:
  br label %return

sw.bb1:
  br label %return

return:
  %retval.0 = phi i32 [ 5, %sw.bb1 ], [ 1, %sw.bb ], [ 0, %entry ]
  ret i32 %retval.0
}

!0 = !{!"branch_weights", i32 7, i32 6, i32 4, i32 4, i32 64}


declare void @g(i32)
define void @left_leaning_weight_balanced_tree(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 10, label %bb1
    i32 20, label %bb2
    i32 30, label %bb3
    i32 40, label %bb4
    i32 50, label %bb5
  ], !prof !1
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
return: ret void









}

!1 = !{!"branch_weights",
  
  i32 1,
  
  i32 10, i32 1, i32 1,
  
  i32 1, i32 10, i32 10}
