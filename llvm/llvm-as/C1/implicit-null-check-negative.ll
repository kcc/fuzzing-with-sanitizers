






define i32 @imp_null_check_load(i32* %x, i32* %y) {
 entry:
  %c = icmp eq i32* %x, null


  br i1 %c, label %is_null, label %not_null, !make.implicit !0

 is_null:
  ret i32 42

 not_null:
  store i32 0, i32* %y
  %t = load i32, i32* %x
  ret i32 %t
}

define i32 @imp_null_check_gep_load(i32* %x) {
 entry:
  %c = icmp eq i32* %x, null
  br i1 %c, label %is_null, label %not_null, !make.implicit !0

 is_null:
  ret i32 42

 not_null:


  %x.gep = getelementptr i32, i32* %x, i32 5000
  %t = load i32, i32* %x.gep
  ret i32 %t
}

define i32 @imp_null_check_load_no_md(i32* %x) {

 entry:
  %c = icmp eq i32* %x, null
  br i1 %c, label %is_null, label %not_null

 is_null:
  ret i32 42

 not_null:
  %t = load i32, i32* %x
  ret i32 %t
}

define i32 @imp_null_check_no_hoist_over_acquire_load(i32* %x, i32* %y) {

 entry:
  %c = icmp eq i32* %x, null
  br i1 %c, label %is_null, label %not_null, !make.implicit !0

 is_null:
  ret i32 42

 not_null:
  %t0 = load atomic i32, i32* %y acquire, align 4
  %t1 = load i32, i32* %x
  %p = add i32 %t0, %t1
  ret i32 %p
}

define i32 @imp_null_check_add_result(i32* %x, i32* %y) {











 entry:
  %c = icmp eq i32* %x, null
  br i1 %c, label %is_null, label %not_null, !make.implicit !0

 is_null:
  ret i32 42

 not_null:
  %t0 = load i32, i32* %y
  %t1 = load i32, i32* %x
  %p = add i32 %t0, %t1
  ret i32 %p
}

!0 = !{}
