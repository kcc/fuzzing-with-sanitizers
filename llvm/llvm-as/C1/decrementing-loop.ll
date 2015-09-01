

define void @decrementing_loop(i32 *%arr, i32 *%a_len_ptr, i32 %n) {
 entry:
  %len = load i32, i32* %a_len_ptr, !range !0
  %first.itr.check = icmp sgt i32 %n, 0
  %start = sub i32 %n, 1
  br i1 %first.itr.check, label %loop, label %exit

 loop:
  %idx = phi i32 [ %start, %entry ] , [ %idx.dec, %in.bounds ]
  %idx.dec = sub i32 %idx, 1
  %abc.high = icmp slt i32 %idx, %len
  %abc.low = icmp sge i32 %idx, 0
  %abc = and i1 %abc.low, %abc.high
  br i1 %abc, label %in.bounds, label %out.of.bounds, !prof !1

 in.bounds:
  %addr = getelementptr i32, i32* %arr, i32 %idx
  store i32 0, i32* %addr
  %next = icmp sgt i32 %idx.dec, -1
  br i1 %next, label %loop, label %exit

 out.of.bounds:
  ret void

 exit:
  ret void











}

!0 = !{i32 0, i32 2147483647}
!1 = !{!"branch_weights", i32 64, i32 4}
