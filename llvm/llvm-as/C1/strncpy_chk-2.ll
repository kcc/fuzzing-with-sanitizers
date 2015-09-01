




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

@a = common global [60 x i16] zeroinitializer, align 1
@b = common global [60 x i16] zeroinitializer, align 1

define void @test_no_simplify() {

  %dst = getelementptr inbounds [60 x i16], [60 x i16]* @a, i32 0, i32 0
  %src = getelementptr inbounds [60 x i16], [60 x i16]* @b, i32 0, i32 0


  call i16* @__strncpy_chk(i16* %dst, i16* %src, i32 60, i32 60)
  ret void
}

declare i16* @__strncpy_chk(i16*, i16*, i32, i32)
