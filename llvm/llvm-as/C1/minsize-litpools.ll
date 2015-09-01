






@var = global i32 0

define i32 @small_global() minsize {




  %val = load i32, i32* @var
  ret i32 %val
}

define i32 @big_global() {




  %val = load i32, i32* @var
  ret i32 %val
}
