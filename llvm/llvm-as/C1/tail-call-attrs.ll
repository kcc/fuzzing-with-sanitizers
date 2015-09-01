



declare zeroext i1 @give_bool()
define zeroext i1 @test_bool() {


  %call = tail call zeroext i1 @give_bool()
  ret i1 %call
}




declare zeroext i32 @give_i32()
define zeroext i8 @test_i32() {





  %call = tail call zeroext i32 @give_i32()
  %val = trunc i32 %call to i8
  ret i8 %val
}



declare zeroext i16 @give_unsigned_i16()
define signext i16 @test_incompatible_i16() {





  %call = tail call zeroext i16 @give_unsigned_i16()
  ret i16 %call
}

declare inreg i32 @give_i32_inreg()
define i32 @test_inreg_to_normal() {



  %val = tail call inreg i32 @give_i32_inreg()
  ret i32 %val
}

define inreg i32 @test_normal_to_inreg() {



  %val = tail call i32 @give_i32()
  ret i32 %val
}
