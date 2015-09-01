


declare void @use_arr(i8*)
declare void @many_params(i32, i32, i32, i32, i32, i32)

define void @test1() nounwind {










  %arr = alloca [1024 x i8], align 16
  %arr_ptr = getelementptr inbounds [1024 x i8], [1024 x i8]* %arr, i8 0, i8 0
  call void @use_arr(i8* %arr_ptr)
  ret void
}

define void @test2() nounwind {







  call void @many_params(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6)
  ret void
}

define void @test3() nounwind {






  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %x, align 4
  ret void
}

