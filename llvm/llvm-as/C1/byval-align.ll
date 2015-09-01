







define i32 @test_align16(i8*, [4 x i32]* byval align 16 %b) {







  call void @bar()
  %valptr = getelementptr [4 x i32], [4 x i32]* %b, i32 0, i32 0
  %val = load i32, i32* %valptr
  ret i32 %val
}



define i32 @test_align8(i8*, [4 x i32]* byval align 8 %b) {









  call void @bar()
  %valptr = getelementptr [4 x i32], [4 x i32]* %b, i32 0, i32 0
  %val = load i32, i32* %valptr
  ret i32 %val
}



define i32 @test_align32(i8*, [4 x i32]* byval align 32 %b) {







  call void @bar()
  %valptr = getelementptr [4 x i32], [4 x i32]* %b, i32 0, i32 0
  %val = load i32, i32* %valptr
  ret i32 %val
}


define void @test_call_align16() {









  
  
  call i32 @test_align16(i8* null, [4 x i32]* byval align 16 @var)
  ret void
}

@var = global [4 x i32] zeroinitializer
declare void @bar()
