


define i32 @split_load(i32* %p) nounwind {






  %val = load i32, i32* %p, align 2
  ret i32 %val
}
