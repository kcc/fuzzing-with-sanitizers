









define void @testcase() {



bb1:
  %tmp1 = tail call float @ceilf(float 2.000000e+00)
  %tmp2 = fptoui float %tmp1 to i64
  br i1 undef, label %bb2, label %bb3

bb2:
  tail call void @foo()
  br label %bb3

bb3:
  %tmp3 = trunc i64 %tmp2 to i32
  tail call void @bar(i32 %tmp3)
  ret void
}

declare void @foo()
declare void @bar(i32)
declare float @ceilf(float) nounwind readnone
