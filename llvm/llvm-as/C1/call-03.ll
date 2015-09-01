



declare void @ok(i8 %r2, i16 %r3, i32 %r4, i64 %r5, float %f0, double %f2,
                 float %f4, double %f6)
declare void @uses_r6(i8 %r2, i16 %r3, i32 %r4, i64 %r5, i64 %r6)
declare void @uses_indirect(fp128 %r2)
declare void @uses_stack(float %f0, float %f2, float %f4, float %f6,
                         float %stack)
declare i32 @returns_i32()
declare i64 @returns_i64()



define void @f1() {










  tail call void @ok(i8 1, i16 2, i32 3, i64 4, float 0.0, double 0.0,
                     float 0.0, double 0.0)
  ret void
}



define void @f2() {



  tail call void @uses_r6(i8 1, i16 2, i32 3, i64 4, i64 5)
  ret void
}



define void @f3() {



  tail call void @uses_indirect(fp128 0xL00000000000000000000000000000000)
  ret void
}



define void @f4() {



  tail call void @uses_stack(float 0.0, float 0.0, float 0.0, float 0.0,
                             float 0.0)
  ret void
}



define void @f5(void(i32, i32, i32, i32) *%foo) {







  tail call void %foo(i32 1, i32 2, i32 3, i32 4)
  ret void
}



define void @f6(void(i32) *%foo) {







  %arg = call i32 @returns_i32()
  tail call void %foo(i32 %arg)
  ret void
}


define i64 @f7() {


  %res = tail call i64 @returns_i64()
  ret i64 %res
}


define i32 @f8() {


  %res = tail call i64 @returns_i64()
  %trunc = trunc i64 %res to i32
  ret i32 %trunc
}


define i7 @f9() {


  %res = tail call i64 @returns_i64()
  %trunc = trunc i64 %res to i7
  ret i7 %trunc
}


define i8 @f10() {


  %res = tail call i32 @returns_i32()
  %trunc = trunc i32 %res to i8
  ret i8 %trunc
}
