

@x = extern_weak global i32

define i32 @fn() nounwind ssp {


  %val = load i32, i32* @x, align 4
  ret i32 %val
}
