




@test_data = common global i32 0, align 4

define void @t() nounwind ssp {

entry:
  br label %for.body

for.body:




  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = shl nsw i64 %indvars.iv, 12
  %add = add nsw i64 %0, 34628173824
  %1 = inttoptr i64 %add to i32*
  %2 = load volatile i32, i32* %1, align 4096
  store volatile i32 %2, i32* @test_data, align 4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 200
  br i1 %exitcond, label %for.end, label %for.body

for.end:
  ret void
}
