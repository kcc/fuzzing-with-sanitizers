



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"

declare i64 @strtol(i8* %s, i8** %endptr, i32 %base)


declare double @strtod(i8* %s, i8** %endptr, i32 %base)


declare float @strtof(i8* %s, i8** %endptr, i32 %base)


declare i64 @strtoul(i8* %s, i8** %endptr, i32 %base)


declare i64 @strtoll(i8* %s, i8** %endptr, i32 %base)


declare double @strtold(i8* %s, i8** %endptr)


declare i64 @strtoull(i8* %s, i8** %endptr, i32 %base)


define void @test_simplify1(i8* %x, i8** %endptr) {

  call i64 @strtol(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_simplify2(i8* %x, i8** %endptr) {

  call double @strtod(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_simplify3(i8* %x, i8** %endptr) {

  call float @strtof(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_simplify4(i8* %x, i8** %endptr) {

  call i64 @strtoul(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_simplify5(i8* %x, i8** %endptr) {

  call i64 @strtoll(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_simplify6(i8* %x, i8** %endptr) {

  call double @strtold(i8* %x, i8** null)

  ret void
}

define void @test_simplify7(i8* %x, i8** %endptr) {

  call i64 @strtoull(i8* %x, i8** null, i32 10)

  ret void
}

define void @test_no_simplify1(i8* %x, i8** %endptr) {

  call i64 @strtol(i8* %x, i8** %endptr, i32 10)

  ret void
}
