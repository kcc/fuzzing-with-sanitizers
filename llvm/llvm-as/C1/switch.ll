


declare void @g(i32)

define void @basic(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 3, label %bb0
    i32 1, label %bb1
    i32 4, label %bb1
    i32 5, label %bb2
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 1) br label %return
return: ret void













}


define void @simple_ranges(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0, label %bb0
    i32 1, label %bb0
    i32 2, label %bb0
    i32 3, label %bb0
    i32 100, label %bb1
    i32 101, label %bb1
    i32 102, label %bb1
    i32 103, label %bb1
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
return: ret void
















}


define void @jt_is_better(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0, label %bb0
    i32 2, label %bb0
    i32 4, label %bb0
    i32 1, label %bb1
    i32 3, label %bb1
    i32 5, label %bb1

    i32 6, label %bb2
    i32 7, label %bb3
    i32 8, label %bb4
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
return: ret void







}


define void @bt_is_better(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0, label %bb0
    i32 3, label %bb0
    i32 6, label %bb0
    i32 1, label %bb1
    i32 4, label %bb1
    i32 7, label %bb1
    i32 2, label %bb2
    i32 5, label %bb2
    i32 8, label %bb2
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
return: ret void
















}

define void @bt_is_better2(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0, label %bb0
    i32 3, label %bb0
    i32 6, label %bb0
    i32 1, label %bb1
    i32 4, label %bb1
    i32 7, label %bb1
    i32 2, label %bb2
    i32 8, label %bb2
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
return: ret void















}

define void @bt_is_better3(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 10, label %bb0
    i32 13, label %bb0
    i32 16, label %bb0
    i32 11, label %bb1
    i32 14, label %bb1
    i32 17, label %bb1
    i32 12, label %bb2
    i32 18, label %bb2
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
return: ret void
















}


define void @optimal_pivot1(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 100, label %bb0
    i32 200, label %bb1
    i32 300, label %bb0
    i32 400, label %bb1
    i32 500, label %bb0
    i32 600, label %bb1

  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
return: ret void





}


define void @optimal_pivot2(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 100, label %bb0   i32 101, label %bb1   i32 102, label %bb2   i32 103, label %bb3
    i32 200, label %bb0   i32 201, label %bb1   i32 202, label %bb2   i32 203, label %bb3
    i32 300, label %bb0   i32 301, label %bb1   i32 302, label %bb2   i32 303, label %bb3
    i32 400, label %bb0   i32 401, label %bb1   i32 402, label %bb2   i32 403, label %bb3

  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
return: ret void









}


define void @optimal_jump_table1(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 5,  label %bb1
    i32 6,  label %bb2
    i32 12, label %bb3
    i32 13, label %bb4
    i32 15, label %bb5
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
return: ret void






















}


define void @optimal_jump_table2(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 1,  label %bb1
    i32 2,  label %bb2
    i32 9,  label %bb3
    i32 14, label %bb4
    i32 15, label %bb5
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
return: ret void







}


define void @optimal_jump_table3(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 1,  label %bb0
    i32 2,  label %bb1
    i32 3,  label %bb2
    i32 10, label %bb3
    i32 13, label %bb0
    i32 14, label %bb1
    i32 15, label %bb2
    i32 20, label %bb3
    i32 25, label %bb4
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
return: ret void








}

%struct.S = type { %struct.S*, i32 }
define void @phi_node_trouble(%struct.S* %s) {
entry:
  br label %header
header:
  %ptr = phi %struct.S* [ %s, %entry ], [ %next, %loop ]
  %bool = icmp eq %struct.S* %ptr, null
  br i1 %bool, label %exit, label %loop
loop:
  %nextptr = getelementptr inbounds %struct.S, %struct.S* %ptr, i64 0, i32 0
  %next = load %struct.S*, %struct.S** %nextptr
  %xptr = getelementptr inbounds %struct.S, %struct.S* %next, i64 0, i32 1
  %x = load i32, i32* %xptr
  switch i32 %x, label %exit [
    i32 4, label %header
    i32 36, label %exit2
    i32 69, label %exit2
    i32 25, label %exit2
  ]
exit:
  ret void
exit2:
  ret void







}


define void @default_only(i32 %x) {
entry:
  br label %sw
return:
  ret void
sw:
  switch i32 %x, label %return [
  ]







}


define void @int_max_table_cluster(i8 %x) {
entry:
  switch i8 %x, label %return [
    i8 0, label %bb0 i8 1, label %bb0 i8 2, label %bb0 i8 3, label %bb0
    i8 4, label %bb0 i8 5, label %bb0 i8 6, label %bb0 i8 7, label %bb0
    i8 8, label %bb0 i8 9, label %bb0 i8 10, label %bb0 i8 11, label %bb0
    i8 12, label %bb0 i8 13, label %bb0 i8 14, label %bb0 i8 15, label %bb0
    i8 16, label %bb0 i8 17, label %bb0 i8 18, label %bb0 i8 19, label %bb0
    i8 20, label %bb0 i8 21, label %bb0 i8 22, label %bb0 i8 23, label %bb0
    i8 24, label %bb0 i8 25, label %bb0 i8 26, label %bb0 i8 27, label %bb0
    i8 28, label %bb0 i8 29, label %bb0 i8 30, label %bb0 i8 31, label %bb0
    i8 32, label %bb0 i8 33, label %bb0 i8 34, label %bb0 i8 35, label %bb0
    i8 36, label %bb0 i8 37, label %bb0 i8 38, label %bb0 i8 39, label %bb0
    i8 40, label %bb0 i8 41, label %bb0 i8 42, label %bb0 i8 43, label %bb0
    i8 44, label %bb0 i8 45, label %bb0 i8 46, label %bb0 i8 47, label %bb0
    i8 48, label %bb0 i8 49, label %bb0 i8 50, label %bb0 i8 51, label %bb0
    i8 52, label %bb0 i8 53, label %bb0 i8 54, label %bb0 i8 55, label %bb0
    i8 56, label %bb0 i8 57, label %bb0 i8 58, label %bb0 i8 59, label %bb0
    i8 60, label %bb0 i8 61, label %bb0 i8 62, label %bb0 i8 63, label %bb0
    i8 64, label %bb0 i8 65, label %bb0 i8 66, label %bb0 i8 67, label %bb0
    i8 68, label %bb0 i8 69, label %bb0 i8 70, label %bb0 i8 71, label %bb0
    i8 72, label %bb0 i8 73, label %bb0 i8 74, label %bb0 i8 75, label %bb0
    i8 76, label %bb0 i8 77, label %bb0 i8 78, label %bb0 i8 79, label %bb0
    i8 80, label %bb0 i8 81, label %bb0 i8 82, label %bb0 i8 83, label %bb0
    i8 84, label %bb0 i8 85, label %bb0 i8 86, label %bb0 i8 87, label %bb0
    i8 88, label %bb0 i8 89, label %bb0 i8 90, label %bb0 i8 91, label %bb0
    i8 92, label %bb0 i8 93, label %bb0 i8 94, label %bb0 i8 95, label %bb0
    i8 96, label %bb0 i8 97, label %bb0 i8 98, label %bb0 i8 99, label %bb0
    i8 100, label %bb0 i8 101, label %bb0 i8 102, label %bb0 i8 103, label %bb0
    i8 104, label %bb0 i8 105, label %bb0 i8 106, label %bb0 i8 107, label %bb0
    i8 108, label %bb0 i8 109, label %bb0 i8 110, label %bb0 i8 111, label %bb0
    i8 112, label %bb0 i8 113, label %bb0 i8 114, label %bb0 i8 115, label %bb0
    i8 116, label %bb0 i8 117, label %bb0 i8 118, label %bb0 i8 119, label %bb0
    i8 120, label %bb0 i8 121, label %bb0 i8 122, label %bb0 i8 123, label %bb0
    i8 124, label %bb0 i8 125, label %bb0 i8 126, label %bb0 i8 127, label %bb0
    i8 -64, label %bb1 i8 -63, label %bb1 i8 -62, label %bb1 i8 -61, label %bb1
    i8 -60, label %bb1 i8 -59, label %bb1 i8 -58, label %bb1 i8 -57, label %bb1
    i8 -56, label %bb1 i8 -55, label %bb1 i8 -54, label %bb1 i8 -53, label %bb1
    i8 -52, label %bb1 i8 -51, label %bb1 i8 -50, label %bb1 i8 -49, label %bb1
    i8 -48, label %bb1 i8 -47, label %bb1 i8 -46, label %bb1 i8 -45, label %bb1
    i8 -44, label %bb1 i8 -43, label %bb1 i8 -42, label %bb1 i8 -41, label %bb1
    i8 -40, label %bb1 i8 -39, label %bb1 i8 -38, label %bb1 i8 -37, label %bb1
    i8 -36, label %bb1 i8 -35, label %bb1 i8 -34, label %bb1 i8 -33, label %bb1
    i8 -32, label %bb2 i8 -31, label %bb2 i8 -30, label %bb2 i8 -29, label %bb2
    i8 -28, label %bb2 i8 -27, label %bb2 i8 -26, label %bb2 i8 -25, label %bb2
    i8 -24, label %bb2 i8 -23, label %bb2 i8 -22, label %bb2 i8 -21, label %bb2
    i8 -20, label %bb2 i8 -19, label %bb2 i8 -18, label %bb2 i8 -17, label %bb2
    i8 -16, label %bb3 i8 -15, label %bb3 i8 -14, label %bb3 i8 -13, label %bb3
    i8 -12, label %bb3 i8 -11, label %bb3 i8 -10, label %bb3 i8 -9, label %bb3
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 1) br label %return
bb3: tail call void @g(i32 1) br label %return
return: ret void





}


define void @bt_order_by_weight(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0, label %bb0
    i32 3, label %bb0
    i32 6, label %bb0
    i32 1, label %bb1
    i32 4, label %bb1
    i32 7, label %bb1
    i32 2, label %bb2
    i32 5, label %bb2
    i32 8, label %bb2
    i32 9, label %bb2
  ], !prof !1
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
return: ret void


















}

!1 = !{!"branch_weights",
       
       i32 1,
       
       i32 4, i32 4, i32 4,
       
       i32 4294967295, i32 2, i32 4294967295,
       
       i32 3, i32 3, i32 3, i32 3}

define void @order_by_weight_and_fallthrough(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 100, label %bb1
    i32 200, label %bb0
    i32 300, label %bb0
  ], !prof !2
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
return: ret void







}

!2 = !{!"branch_weights",
       
       i32 1,
       
       i32 10,
       
       i32 1000,
       
       i32 10}


define void @zero_weight_tree(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 10, label %bb1
    i32 20, label %bb2
    i32 30, label %bb3
    i32 40, label %bb4
    i32 50, label %bb5
  ], !prof !3
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
return: ret void





}

!3 = !{!"branch_weights", i32 1, i32 10, i32 0, i32 0, i32 0, i32 0, i32 10}


define void @left_leaning_weight_balanced_tree(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 10, label %bb1
    i32 20, label %bb2
    i32 30, label %bb3
    i32 40, label %bb4
    i32 50, label %bb5
    i32 60, label %bb6
    i32 70, label %bb6
  ], !prof !4
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
bb6: tail call void @g(i32 6) br label %return
bb7: tail call void @g(i32 7) br label %return
return: ret void









}

!4 = !{!"branch_weights", i32 1, i32 10, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1000}


define void @left_leaning_weight_balanced_tree2(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 10, label %bb1
    i32 20, label %bb2
    i32 30, label %bb3
    i32 40, label %bb4
    i32 50, label %bb5
    i32 60, label %bb6
    i32 70, label %bb6
  ], !prof !5
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
bb6: tail call void @g(i32 6) br label %return
bb7: tail call void @g(i32 7) br label %return
return: ret void








}

!5 = !{!"branch_weights", i32 1, i32 10, i32 1, i32 1, i32 1, i32 1, i32 90, i32 70, i32 1000}


define void @right_leaning_weight_balanced_tree(i32 %x) {
entry:
  switch i32 %x, label %return [
    i32 0,  label %bb0
    i32 10, label %bb1
    i32 20, label %bb2
    i32 30, label %bb3
    i32 40, label %bb4
    i32 50, label %bb5
    i32 60, label %bb6
    i32 70, label %bb6
  ], !prof !6
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
bb4: tail call void @g(i32 4) br label %return
bb5: tail call void @g(i32 5) br label %return
bb6: tail call void @g(i32 6) br label %return
bb7: tail call void @g(i32 7) br label %return
return: ret void






}

!6 = !{!"branch_weights", i32 1, i32 1000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 10}


define void @jump_table_affects_balance(i32 %x) {
entry:
  switch i32 %x, label %return [
    
    i32 0,  label %bb0
    i32 1,  label %bb1
    i32 2,  label %bb2
    i32 3,  label %bb3

    i32 100, label %bb0
    i32 200, label %bb1
    i32 300, label %bb2
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
bb2: tail call void @g(i32 2) br label %return
bb3: tail call void @g(i32 3) br label %return
return: ret void







}


define void @pr23738(i4 %x) {
entry:
  switch i4 %x, label %bb0 [
    i4 0, label %bb1
    i4 1, label %bb1
    i4 -5, label %bb1
  ]
bb0: tail call void @g(i32 0) br label %return
bb1: tail call void @g(i32 1) br label %return
return: ret void


}
