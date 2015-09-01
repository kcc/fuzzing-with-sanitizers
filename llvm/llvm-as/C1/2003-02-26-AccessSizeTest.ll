





define i32 @test() {


  %A = alloca i32
  store i32 0, i32* %A
  %X = load i32, i32* %A
  %B = bitcast i32* %A to i8*
  %C = getelementptr i8, i8* %B, i64 1
  store i8 1, i8* %C    
  %Y.DONOTREMOVE = load i32, i32* %A
  %Z = sub i32 %X, %Y.DONOTREMOVE
  ret i32 %Z
}

