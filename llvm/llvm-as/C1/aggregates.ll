







define internal { i32, i32 } @agguse_dead() {
  ret { i32, i32 } { i32 0, i32 1 }
}

define internal { i32, i32 } @test_agguse_dead() {
  %val = call { i32, i32 } @agguse_dead()
  ret { i32, i32 } %val
}










define internal { i32, i32 } @rets_independent_if_agguse_dead() {
  ret { i32, i32 } { i32 0, i32 1 }
}

define internal { i32, i32 } @test_rets_independent_if_agguse_dead(i1 %tst) {
  %val = call { i32, i32 } @rets_independent_if_agguse_dead()
  br i1 %tst, label %use_1, label %use_aggregate

use_1:
  
  %val0 = extractvalue { i32, i32 } %val, 1
  call void @callee(i32 %val0)
  ret { i32, i32 } undef

use_aggregate:
  
  ret { i32, i32 } %val
}







define internal { i32, i32 } @rets_live_agguse() {
  ret { i32, i32} { i32 0, i32 1 }
}

define { i32, i32 } @test_rets_live_aggues(i1 %tst) {
  %val = call { i32, i32 } @rets_live_agguse()
  br i1 %tst, label %use_1, label %use_aggregate

use_1:
  
  %val0 = extractvalue { i32, i32 } %val, 1
  call void @callee(i32 %val0)
  ret { i32, i32 } undef

use_aggregate:
  
  ret { i32, i32 } %val
}

declare void @callee(i32)







define internal [2 x i32] @array_rets_have_multiple_slots(i32 %in) {
  %ret = insertvalue [2 x i32] undef, i32 %in, 1
  ret [2 x i32] %ret
}

define [2 x i32] @test_array_rets_have_multiple_slots() {
  %res = call [2 x i32] @array_rets_have_multiple_slots(i32 42)
  ret [2 x i32] %res
}













define internal [3 x i32] @can_shrink_arrays() {
  ret [3 x i32] [i32 42, i32 43, i32 44]
}

define void @test_can_shrink_arrays() {
  %res = call [3 x i32] @can_shrink_arrays()

  %res.0 = extractvalue [3 x i32] %res, 0
  call void @callee(i32 %res.0)

  %res.2 = extractvalue [3 x i32] %res, 2
  call void @callee(i32 %res.2)

  ret void
}








define internal {i32, i32} @ret_applies_to_all({i32, i32} %in) {
  ret {i32, i32} %in
}

define i32 @test_ret_applies_to_all() {
  %val = call {i32, i32} @ret_applies_to_all({i32, i32} {i32 42, i32 43})
  %ret = extractvalue {i32, i32} %val, 1
  ret i32 %ret
}









define internal {i8*, i32} @mid() {
  %res = call {i8*, i32} @inner()
  %intval = extractvalue {i8*, i32} %res, 1
  %tst = icmp eq i32 %intval, 42
  br i1 %tst, label %true, label %true

true:
  ret {i8*, i32} %res
}

define internal {i8*, i32} @inner() {
  ret {i8*, i32} {i8* null, i32 42}
}

define internal i8 @outer() {
  %res = call {i8*, i32} @mid()
  %resptr = extractvalue {i8*, i32} %res, 0

  %val = load i8, i8* %resptr
  ret i8 %val
}