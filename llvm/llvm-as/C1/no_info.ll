









define i32 @no_info(i32 %arg) {
  %e = add i32 %arg, %arg
  ret i32 %e
}

define i8 @addressing_mode_reg_reg(i8* %a, i32 %b) {

  %p = getelementptr i8, i8* %a, i32 %b 

  %v = load i8, i8* %p
  ret i8 %v
}


define i32 @addressing_mode_scaled_reg(i32* %a, i32 %b) {
  
  %p = getelementptr i32, i32* %a, i32 %b

  %v = load i32, i32* %p
  ret i32 %v
}
