


define i32 @test(i64 %x) nounwind {

entry:
  %or = or i64 %x, 4294967294
  %conv = trunc i64 %or to i32
  %rem.i = srem i32 %conv, -1
  ret i32 %rem.i
}

