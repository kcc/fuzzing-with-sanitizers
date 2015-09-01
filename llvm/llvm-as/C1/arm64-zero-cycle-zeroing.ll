



define void @t1() nounwind ssp {
entry:






  tail call void @bar(double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00) nounwind
  ret void
}

define void @t2() nounwind ssp {
entry:




  tail call void @bari(i32 0, i32 0) nounwind
  ret void
}

define void @t3() nounwind ssp {
entry:




  tail call void @barl(i64 0, i64 0) nounwind
  ret void
}

define void @t4() nounwind ssp {




  tail call void @barf(float 0.000000e+00, float 0.000000e+00) nounwind
  ret void
}

declare void @bar(double, double, double, double)
declare void @bari(i32, i32)
declare void @barl(i64, i64)
declare void @barf(float, float)
