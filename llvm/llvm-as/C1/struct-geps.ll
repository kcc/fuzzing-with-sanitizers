

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%struct = type { i32, i32, i32 }























define void @test_simple(%struct* %st, i64 %i, i64 %j, i64 %k) {
  %x = getelementptr %struct, %struct* %st, i64 %i, i32 0
  %y = getelementptr %struct, %struct* %st, i64 %j, i32 1
  %z = getelementptr %struct, %struct* %st, i64 %k, i32 2
  %y_12 = bitcast i32* %y to %struct*
  %y_10 = bitcast i32* %y to i80*
  %y_8 = bitcast i32* %y to i64*
  ret void
}























define void @test_in_array([1 x %struct]* %st, i64 %i, i64 %j, i64 %k, i64 %i1, i64 %j1, i64 %k1) {
  %x = getelementptr [1 x %struct], [1 x %struct]* %st, i64 %i, i64 %i1, i32 0
  %y = getelementptr [1 x %struct], [1 x %struct]* %st, i64 %j, i64 %j1, i32 1
  %z = getelementptr [1 x %struct], [1 x %struct]* %st, i64 %k, i64 %k1, i32 2
  %y_12 = bitcast i32* %y to %struct*
  %y_10 = bitcast i32* %y to i80*
  %y_8 = bitcast i32* %y to i64*
  ret void
}























define void @test_in_3d_array([1 x [1 x [1 x %struct]]]* %st, i64 %i, i64 %j, i64 %k, i64 %i1, i64 %j1, i64 %k1, i64 %i2, i64 %j2, i64 %k2, i64 %i3, i64 %j3, i64 %k3) {
  %x = getelementptr [1 x [1 x [1 x %struct]]], [1 x [1 x [1 x %struct]]]* %st, i64 %i, i64 %i1, i64 %i2, i64 %i3, i32 0
  %y = getelementptr [1 x [1 x [1 x %struct]]], [1 x [1 x [1 x %struct]]]* %st, i64 %j, i64 %j1, i64 %j2, i64 %j3, i32 1
  %z = getelementptr [1 x [1 x [1 x %struct]]], [1 x [1 x [1 x %struct]]]* %st, i64 %k, i64 %k1, i64 %k2, i64 %k3, i32 2
  %y_12 = bitcast i32* %y to %struct*
  %y_10 = bitcast i32* %y to i80*
  %y_8 = bitcast i32* %y to i64*
  ret void
}
















define void @test_same_underlying_object_same_indices(%struct* %st, i64 %i, i64 %j, i64 %k) {
  %st2 = getelementptr %struct, %struct* %st, i32 10
  %x2 = getelementptr %struct, %struct* %st2, i64 %i, i32 0
  %y2 = getelementptr %struct, %struct* %st2, i64 %j, i32 1
  %z2 = getelementptr %struct, %struct* %st2, i64 %k, i32 2
  %x = getelementptr %struct, %struct* %st, i64 %i, i32 0
  %y = getelementptr %struct, %struct* %st, i64 %j, i32 1
  %z = getelementptr %struct, %struct* %st, i64 %k, i32 2
  ret void
}
















define void @test_same_underlying_object_different_indices(%struct* %st, i64 %i1, i64 %j1, i64 %k1, i64 %i2, i64 %k2, i64 %j2) {
  %st2 = getelementptr %struct, %struct* %st, i32 10
  %x2 = getelementptr %struct, %struct* %st2, i64 %i2, i32 0
  %y2 = getelementptr %struct, %struct* %st2, i64 %j2, i32 1
  %z2 = getelementptr %struct, %struct* %st2, i64 %k2, i32 2
  %x = getelementptr %struct, %struct* %st, i64 %i1, i32 0
  %y = getelementptr %struct, %struct* %st, i64 %j1, i32 1
  %z = getelementptr %struct, %struct* %st, i64 %k1, i32 2
  ret void
}


%struct2 = type { [1 x { i32, i32 }], [2 x { i32 }] }



define void @test_struct_in_array(%struct2* %st, i64 %i, i64 %j, i64 %k) {
  %x = getelementptr %struct2, %struct2* %st, i32 0, i32 1, i32 1, i32 0
  %y = getelementptr %struct2, %struct2* %st, i32 0, i32 0, i32 1, i32 1
  ret void
}
