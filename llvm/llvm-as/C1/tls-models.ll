


@external_gd = external thread_local global i32
@internal_gd = internal thread_local global i32 42

@external_ld = external thread_local(localdynamic) global i32
@internal_ld = internal thread_local(localdynamic) global i32 42

@external_ie = external thread_local(initialexec) global i32
@internal_ie = internal thread_local(initialexec) global i32 42

@external_le = external thread_local(localexec) global i32
@internal_le = internal thread_local(localexec) global i32 42



define i32* @f1() {
entry:
  ret i32* @external_gd

  
  
  
  
  
}

define i32* @f2() {
entry:
  ret i32* @internal_gd

  
  
  
  
  
}




define i32* @f3() {
entry:
  ret i32* @external_ld

  
  
  
  
  
}

define i32* @f4() {
entry:
  ret i32* @internal_ld

  
  
  
  
  
}




define i32* @f5() {
entry:
  ret i32* @external_ie

  
  
  
  
  
}

define i32* @f6() {
entry:
  ret i32* @internal_ie

  
  
  
  
  
}




define i32* @f7() {
entry:
  ret i32* @external_le

  
  
  
  
  
}

define i32* @f8() {
entry:
  ret i32* @internal_le

  
  
  
  
  
}
