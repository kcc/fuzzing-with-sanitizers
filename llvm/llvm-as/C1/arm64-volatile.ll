
define i64 @normal_load(i64* nocapture %bar) nounwind readonly {




  %add.ptr = getelementptr inbounds i64, i64* %bar, i64 1
  %tmp = load i64, i64* %add.ptr, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %bar, i64 2
  %tmp1 = load i64, i64* %add.ptr1, align 8
  %add = add nsw i64 %tmp1, %tmp
  ret i64 %add
}

define i64 @volatile_load(i64* nocapture %bar) nounwind {





  %add.ptr = getelementptr inbounds i64, i64* %bar, i64 1
  %tmp = load volatile i64, i64* %add.ptr, align 8
  %add.ptr1 = getelementptr inbounds i64, i64* %bar, i64 2
  %tmp1 = load volatile i64, i64* %add.ptr1, align 8
  %add = add nsw i64 %tmp1, %tmp
  ret i64 %add
}
