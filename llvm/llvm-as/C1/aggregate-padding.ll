




define i64 @test_i64_contiguous_on_stack([8 x double], float, i32 %in, [2 x i64] %arg) nounwind {








  %val1 = extractvalue [2 x i64] %arg, 0
  %val2 = extractvalue [2 x i64] %arg, 1
  %sum = add i64 %val1, %val2
  ret i64 %sum
}



define i64 @test_2xi64_uses_4_regs([8 x double], float, [2 x i64] %arg) nounwind {




  %val = extractvalue [2 x i64] %arg, 1
  ret i64 %val
}



define i32 @test_aggregates_split([8 x double], i32, [4 x i32] %arg) nounwind {




  %val0 = extractvalue [4 x i32] %arg, 0
  %val3 = extractvalue [4 x i32] %arg, 3
  %sum = add i32 %val0, %val3
  ret i32 %sum
}




define i32 @test_no_int_backfilling([8 x double], float, i32, [2 x i64], i32 %arg) nounwind {


  ret i32 %arg
}



define i32 @test_no_int_backfilling_regsonly(i32, [1 x i64], i32 %arg) {


  ret i32 %arg
}



define float @test_no_float_backfilling([7 x double], [4 x i32], i32, [4 x double], float %arg) nounwind {


  ret float %arg
}


define i8 @test_i8_in_regs(i32, [3 x i8] %arg) {


  %val0 = extractvalue [3 x i8] %arg, 0
  %val2 = extractvalue [3 x i8] %arg, 2
  %sum = add i8 %val0, %val2
  ret i8 %sum
}

define i16 @test_i16_split(i32, i32, [3 x i16] %arg) {



  %val0 = extractvalue [3 x i16] %arg, 0
  %val2 = extractvalue [3 x i16] %arg, 2
  %sum = add i16 %val0, %val2
  ret i16 %sum
}



define i16 @test_i16_forced_stack([8 x double], double, i32, i32, [3 x i16] %arg) {




  %val0 = extractvalue [3 x i16] %arg, 0
  %val2 = extractvalue [3 x i16] %arg, 2
  %sum = add i16 %val0, %val2
  ret i16 %sum
}
