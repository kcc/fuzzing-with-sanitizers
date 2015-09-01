



define i64 @test() {
  %1 = tail call i8* @malloc(i64 mul (i64 4, i64 ptrtoint (i64* getelementptr (i64, i64* null, i64 1) to i64))) 
  store i8 42, i8* %1
  %X = bitcast i8* %1 to i64*                     
  %Y = load i64, i64* %X                               
  ret i64 %Y


}

declare noalias i8* @malloc(i64)
