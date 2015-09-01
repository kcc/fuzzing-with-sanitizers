


define i32 @test_select_i32(i1 %bit, i32 %a, i32 %b) {

  %val = select i1 %bit, i32 %a, i32 %b



  ret i32 %val
}

define i64 @test_select_i64(i1 %bit, i64 %a, i64 %b) {

  %val = select i1 %bit, i64 %a, i64 %b



  ret i64 %val
}

define float @test_select_float(i1 %bit, float %a, float %b) {

  %val = select i1 %bit, float %a, float %b



  ret float %val
}

define double @test_select_double(i1 %bit, double %a, double %b) {

  %val = select i1 %bit, double %a, double %b




  ret double %val
}

define i32 @test_brcond(i1 %bit) {

  br i1 %bit, label %true, label %false


true:
  ret i32 0
false:
  ret i32 42
}

define i1 @test_setcc_float(float %lhs, float %rhs) {

  %val = fcmp oeq float %lhs, %rhs



  ret i1 %val
}

define i1 @test_setcc_double(double %lhs, double %rhs) {

  %val = fcmp oeq double %lhs, %rhs



  ret i1 %val
}

define i1 @test_setcc_i32(i32 %lhs, i32 %rhs) {

  %val = icmp ugt i32 %lhs, %rhs


  ret i1 %val
}

define i1 @test_setcc_i64(i64 %lhs, i64 %rhs) {

  %val = icmp ne i64 %lhs, %rhs


  ret i1 %val
}
