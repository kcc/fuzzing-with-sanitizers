





@a = external global i32
@b = external global i32
@la = external global i64
@lb = external global i64

define void @test1() nounwind {

entry:
  store i32 12345670, i32* @a, align 4
  store i32 12345670, i32* @b, align 4
  ret void
}

define void @test2() nounwind {

entry:
  store i64 1234567890123, i64* @la, align 8
  store i64 1234567890123, i64* @lb, align 8
  ret void
}
