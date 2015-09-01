


define zeroext i8 @test1(i32 %y) nounwind {
  %conv = trunc i32 %y to i8
  ret i8 %conv
  
  
}

define signext i8 @test2(i32 %y) nounwind {
  %conv = trunc i32 %y to i8
  ret i8 %conv
  
  
}

define zeroext i16 @test3(i32 %y) nounwind {
  %conv = trunc i32 %y to i16
  ret i16 %conv
  
  
}

define signext i16 @test4(i32 %y) nounwind {
  %conv = trunc i32 %y to i16
  ret i16 %conv
  
  
}

define zeroext i1 @test5(i32 %y) nounwind {
  %conv = trunc i32 %y to i1
  ret i1 %conv
  
  
  
}
