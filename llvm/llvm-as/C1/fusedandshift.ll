





define i32 @main(i16* %a, i16* %b) nounwind {
  entry:
  %0 = load i16, i16* %a, align 2
  %conv1 = sext i16 %0 to i32
  %shr1 = ashr i32 %conv1, 3
  %and1 = and i32 %shr1, 15
  %conv2 = trunc i32 %and1 to i16
  store i16 %conv2, i16* %b, align 2
  ret i32 0
}

