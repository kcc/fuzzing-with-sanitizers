











@var = global i64 0
@local_addr = global i64* null

declare void @foo()

define void @trivial_func() nounwind {




  ret void
}

define void @trivial_fp_func() {











  call void @foo()
  ret void





}

define void @stack_local() {
  %local_var = alloca i64



  %val = load i64, i64* @var
  store i64 %val, i64* %local_var


  store i64* %local_var, i64** @local_addr


  ret void
}
