

define void @infer_via_ranges(i32 *%arr, i32 %n) {

 entry:
  %first.itr.check = icmp sgt i32 %n, 0
  %start = sub i32 %n, 1
  br i1 %first.itr.check, label %loop, label %exit

 loop:

  %idx = phi i32 [ %start, %entry ] , [ %idx.dec, %in.bounds ]
  %idx.dec = sub i32 %idx, 1
  %abc = icmp sge i32 %idx, 0

  br i1 %abc, label %in.bounds, label %out.of.bounds

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
