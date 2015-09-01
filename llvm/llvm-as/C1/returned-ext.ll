


declare i16 @identity16(i16 returned %x)
declare i32 @identity32(i32 returned %x)
declare zeroext i16 @retzext16(i16 returned %x)
declare i16 @paramzext16(i16 zeroext returned %x)
declare zeroext i16 @bothzext16(i16 zeroext returned %x)


define i16 @test_identity(i16 zeroext %x) {
entry:












  %call = tail call i16 @identity16(i16 %x)
  %b = zext i16 %call to i32
  %call2 = tail call i32 @identity32(i32 %b)
  ret i16 %x
}



define i16 @test_matched_ret(i16 %x) {
entry:
























  %call = tail call i16 @retzext16(i16 %x)
  %b = zext i16 %call to i32
  %call2 = tail call i32 @identity32(i32 %b)
  ret i16 %x
}

define i16 @test_mismatched_ret(i16 %x) {
entry:












  %call = tail call i16 @retzext16(i16 %x)
  %b = sext i16 %call to i32
  %call2 = tail call i32 @identity32(i32 %b)
  ret i16 %x
}

define i16 @test_matched_paramext(i16 %x) {
entry:












  %call = tail call i16 @paramzext16(i16 %x)
  %b = zext i16 %call to i32
  %call2 = tail call i32 @identity32(i32 %b)
  %call3 = tail call i16 @paramzext16(i16 %call)
  ret i16 %call3
}



define i16 @test_matched_paramext2(i16 %x) {
entry:














  %call = tail call i16 @paramzext16(i16 %x)


  %b = zext i16 %x to i32

  %call2 = tail call i32 @identity32(i32 %b)
  %call3 = tail call i16 @paramzext16(i16 %call)
  ret i16 %call3
}

define i16 @test_matched_bothext(i16 %x) {
entry:
















  %call = tail call i16 @bothzext16(i16 %x)
  %b = zext i16 %x to i32
  %call2 = tail call i32 @identity32(i32 %b)
  ret i16 %call
}

define i16 @test_mismatched_bothext(i16 %x) {
entry:














  %call = tail call i16 @bothzext16(i16 %x)
  %b = sext i16 %x to i32
  %call2 = tail call i32 @identity32(i32 %b)
  ret i16 %x
}
