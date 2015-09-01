










declare {i64, i1} @llvm.umul.with.overflow.i64(i64, i64)

define i64 @test_select(i64 %lhs, i64 %rhs) {


  %res = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %lhs, i64 %rhs)
  %flag = extractvalue {i64, i1} %res, 1
  %retval = select i1 %flag, i64 %lhs, i64 %rhs
  ret i64 %retval

}
