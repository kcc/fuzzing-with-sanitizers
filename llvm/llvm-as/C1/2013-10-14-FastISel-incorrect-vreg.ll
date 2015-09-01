

































define i64 @test_bitcast(i64 (i64, i64, i64)** %arg, i1 %bool, i64 %arg2) {
entry:
  %loaded_ptr = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arg, align 8
  %raw = bitcast i64 (i64, i64, i64)* %loaded_ptr to i8*
  switch i1 %bool, label %default [
    i1 true, label %label_true
    i1 false, label %label_end
  ]
default:
  br label %label_end

label_true:
  br label %label_end

label_end:
  %fct_ptr = bitcast i8* %raw to i64 (i64, i64, i64)*
  %res = call i64 %fct_ptr(i64 %arg2, i64 %arg2, i64 %arg2)
  ret i64 %res
}




















define i64 @test_inttoptr(i64 (i64, i64, i64)** %arg, i1 %bool, i64 %arg2) {
entry:
  %loaded_ptr = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arg, align 8
  %raw = ptrtoint i64 (i64, i64, i64)* %loaded_ptr to i64
  switch i1 %bool, label %default [
    i1 true, label %label_true
    i1 false, label %label_end
  ]
default:
  br label %label_end

label_true:
  br label %label_end

label_end:
  %fct_ptr = inttoptr i64 %raw to i64 (i64, i64, i64)*
  %res = call i64 %fct_ptr(i64 %arg2, i64 %arg2, i64 %arg2)
  ret i64 %res
}




















define i64 @test_ptrtoint(i64 (i64, i64, i64)** %arg, i1 %bool, i64 %arg2) {
entry:
  %loaded_ptr = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arg, align 8
  %raw = bitcast i64 (i64, i64, i64)* %loaded_ptr to i8*
  switch i1 %bool, label %default [
    i1 true, label %label_true
    i1 false, label %label_end
  ]
default:
  br label %label_end

label_true:
  br label %label_end

label_end:
  %fct_int = ptrtoint i8* %raw to i64
  %fct_ptr = inttoptr i64 %fct_int to i64 (i64, i64, i64)*
  %res = call i64 %fct_ptr(i64 %arg2, i64 %arg2, i64 %arg2)
  ret i64 %res
}
