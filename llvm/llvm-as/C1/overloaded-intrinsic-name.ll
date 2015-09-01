













define i32* @test_iAny(i32* %v) gc "statepoint-example" {
       %tok = call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, i32* %v)
       %v-new = call i32* @llvm.experimental.gc.relocate.p0i32(i32 %tok,  i32 7, i32 7)
       ret i32* %v-new
}


define float* @test_fAny(float* %v) gc "statepoint-example" {
       %tok = call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, float* %v)
       %v-new = call float* @llvm.experimental.gc.relocate.p0f32(i32 %tok,  i32 7, i32 7)
       ret float* %v-new
}


define [3 x i32]* @test_aAny([3 x i32]* %v) gc "statepoint-example" {
       %tok = call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, [3 x i32]* %v)
       %v-new = call [3 x i32]* @llvm.experimental.gc.relocate.p0a3i32(i32 %tok,  i32 7, i32 7)
       ret [3 x i32]* %v-new
}


define <3 x i32>* @test_vAny(<3 x i32>* %v) gc "statepoint-example" {
       %tok = call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, <3 x i32>* %v)
       %v-new = call <3 x i32>* @llvm.experimental.gc.relocate.p0v3i32(i32 %tok,  i32 7, i32 7)
       ret <3 x i32>* %v-new
}

%struct.test = type { i32, i1 }


define %struct.test* @test_struct(%struct.test* %v) gc "statepoint-example" {
       %tok = call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, %struct.test* %v)
       %v-new = call %struct.test* @llvm.experimental.gc.relocate.p0struct.test(i32 %tok,  i32 7, i32 7)
       ret %struct.test* %v-new
}

declare zeroext i1 @return_i1()
declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)
declare i32* @llvm.experimental.gc.relocate.p0i32(i32, i32, i32)
declare float* @llvm.experimental.gc.relocate.p0f32(i32, i32, i32)
declare [3 x i32]* @llvm.experimental.gc.relocate.p0a3i32(i32, i32, i32)
declare <3 x i32>* @llvm.experimental.gc.relocate.p0v3i32(i32, i32, i32)
declare %struct.test* @llvm.experimental.gc.relocate.p0struct.test(i32, i32, i32)
