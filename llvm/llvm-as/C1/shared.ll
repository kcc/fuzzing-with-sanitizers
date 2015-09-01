











@defined_sym = global i32 1, align 4

@tls_sym = thread_local global i32 2, align 4

@undef_sym = external global i32

@undef_tls_sym = external thread_local global i32

@common_sym = common global i32 0, align 4

define i32 @global_func() nounwind uwtable {
entry:
  ret i32 0
}

declare i32 @undef_func(...)

define internal i32 @local_func() nounwind uwtable {
entry:
  ret i32 0
}
