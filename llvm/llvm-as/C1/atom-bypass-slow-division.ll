

define i32 @Test_get_quotient(i32 %a, i32 %b) nounwind {








  %result = sdiv i32 %a, %b
  ret i32 %result
}

define i32 @Test_get_remainder(i32 %a, i32 %b) nounwind {








  %result = srem i32 %a, %b
  ret i32 %result
}

define i32 @Test_get_quotient_and_remainder(i32 %a, i32 %b) nounwind {










  %resultdiv = sdiv i32 %a, %b
  %resultrem = srem i32 %a, %b
  %result = add i32 %resultdiv, %resultrem
  ret i32 %result
}

define i32 @Test_use_div_and_idiv(i32 %a, i32 %b) nounwind {







  %resultidiv = sdiv i32 %a, %b
  %resultdiv = udiv i32 %a, %b
  %result = add i32 %resultidiv, %resultdiv
  ret i32 %result
}

define i32 @Test_use_div_imm_imm() nounwind {


  %resultdiv = sdiv i32 256, 4
  ret i32 %resultdiv
}

define i32 @Test_use_div_reg_imm(i32 %a) nounwind {




  %resultdiv = sdiv i32 %a, 33
  ret i32 %resultdiv
}

define i32 @Test_use_rem_reg_imm(i32 %a) nounwind {




  %resultrem = srem i32 %a, 33
  ret i32 %resultrem
}

define i32 @Test_use_divrem_reg_imm(i32 %a) nounwind {




  %resultdiv = sdiv i32 %a, 33
  %resultrem = srem i32 %a, 33
  %result = add i32 %resultdiv, %resultrem
  ret i32 %result
}

define i32 @Test_use_div_imm_reg(i32 %a) nounwind {




  %resultdiv = sdiv i32 4, %a
  ret i32 %resultdiv
}

define i32 @Test_use_rem_imm_reg(i32 %a) nounwind {




  %resultdiv = sdiv i32 4, %a
  ret i32 %resultdiv
}
