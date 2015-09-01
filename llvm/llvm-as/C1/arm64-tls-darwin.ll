

@var = thread_local global i8 0




define i8 @get_var() {







  %val = load i8, i8* @var, align 1
  ret i8 %val
}
