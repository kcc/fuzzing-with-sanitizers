

target triple = "thumbv7-apple-ios3.0.0"

define zeroext i16 @foo16(i16 zeroext %f) nounwind readnone optsize ssp {
entry:
  
  
  %and = and i16 %f, -4
  ret i16 %and
}

define i32 @foo32(i32 %f) nounwind readnone optsize ssp {
entry:
  
  
  %and = and i32 %f, -4
  ret i32 %and
}
