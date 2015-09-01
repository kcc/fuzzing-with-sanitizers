


define void @test1(i8** %p) {
  %x = alloca i8, align 1
  %y = alloca i8, align 1
  %z = alloca i8, align 1


  store i8* %x, i8** %p, align 4


  store i8* %y, i8** %p, align 4


  store i8* %z, i8** %p, align 4
  ret void
}


define void @test2([1024 x i8]** %p) {
  %arr1 = alloca [1024 x i8], align 1
  %arr2 = alloca [1024 x i8], align 1



  store [1024 x i8]* %arr1, [1024 x i8]** %p, align 4


  store [1024 x i8]* %arr2, [1024 x i8]** %p, align 4
  ret void
}


define i32 @test3() #0 {
  %x = alloca i8, align 1
  %y = alloca i8, align 1

  %1 = load i8, i8* %x, align 1

  %2 = load i8, i8* %y, align 1
  %3 = add nsw i8 %1, %2
  %4 = zext i8 %3 to i32
  ret i32 %4
}

define i32 @test4() #0 {
  %x = alloca i16, align 2
  %y = alloca i16, align 2

  %1 = load i16, i16* %x, align 2

  %2 = load i16, i16* %y, align 2
  %3 = add nsw i16 %1, %2
  %4 = zext i16 %3 to i32
  ret i32 %4
}


define zeroext i8 @test5() {
  %x = alloca i8, align 1


  %1 = load i8, i8* %x, align 1
  ret i8 %1
}

define zeroext i16 @test6() {
  %x = alloca i16, align 2


  %1 = load i16, i16* %x, align 2
  ret i16 %1
}


define void @test7() {
  %arr = alloca [200 x i32], align 4

  
  
  %arrayidx = getelementptr inbounds [200 x i32], [200 x i32]* %arr, i32 0, i32 1
  store i32 1, i32* %arrayidx, align 4

  
  %arrayidx1 = getelementptr inbounds [200 x i32], [200 x i32]* %arr, i32 0, i32 4
  store i32 1, i32* %arrayidx1, align 4

  ret void
}


define void @test8() {
  %arr3 = alloca [224 x i32], align 4
  %arr2 = alloca [224 x i32], align 4
  %arr1 = alloca [224 x i32], align 4



  %arr1idx1 = getelementptr inbounds [224 x i32], [224 x i32]* %arr1, i32 0, i32 0
  store i32 1, i32* %arr1idx1, align 4



  %arr1idx2 = getelementptr inbounds [224 x i32], [224 x i32]* %arr1, i32 0, i32 32
  store i32 1, i32* %arr1idx2, align 4


  %arr2idx1 = getelementptr inbounds [224 x i32], [224 x i32]* %arr2, i32 0, i32 0
  store i32 1, i32* %arr2idx1, align 4



  %arr2idx2 = getelementptr inbounds [224 x i32], [224 x i32]* %arr2, i32 0, i32 32
  store i32 1, i32* %arr2idx2, align 4



  %arr3idx1 = getelementptr inbounds [224 x i32], [224 x i32]* %arr3, i32 0, i32 0
  store i32 1, i32* %arr3idx1, align 4


  %arr3idx2 = getelementptr inbounds [224 x i32], [224 x i32]* %arr3, i32 0, i32 32
  store i32 1, i32* %arr3idx2, align 4

  ret void
}
