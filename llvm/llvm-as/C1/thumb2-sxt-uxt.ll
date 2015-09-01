

define i32 @test1(i16 zeroext %z) nounwind {


  %r = sext i16 %z to i32
  ret i32 %r
}

define i32 @test2(i8 zeroext %z) nounwind {


  %r = sext i8 %z to i32
  ret i32 %r
}

define i32 @test3(i16 signext %z) nounwind {


  %r = zext i16 %z to i32
  ret i32 %r
}

define i32 @test4(i8 signext %z) nounwind {


  %r = zext i8 %z to i32
  ret i32 %r
}
