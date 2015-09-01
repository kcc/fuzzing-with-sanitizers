

%struct.foo = type { i32, i64, float, double }

define double* @test_struct(%struct.foo* %f) {


  %1 = getelementptr inbounds %struct.foo, %struct.foo* %f, i64 0, i32 3
  ret double* %1
}

define i32* @test_array1(i32* %a, i64 %i) {



  %1 = getelementptr inbounds i32, i32* %a, i64 %i
  ret i32* %1
}

define i32* @test_array2(i32* %a) {


  %1 = getelementptr inbounds i32, i32* %a, i64 4
  ret i32* %1
}

define i32* @test_array3(i32* %a) {


  %1 = getelementptr inbounds i32, i32* %a, i64 1024
  ret i32* %1
}

define i32* @test_array4(i32* %a) {



  %1 = getelementptr inbounds i32, i32* %a, i64 1026
  ret i32* %1
}

define i32* @test_array5(i32* %a, i32 %i) {




  %1 = getelementptr inbounds i32, i32* %a, i32 %i
  ret i32* %1
}
