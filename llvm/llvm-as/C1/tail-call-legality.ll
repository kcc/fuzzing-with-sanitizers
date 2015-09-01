















declare {i64, i32} @test()

define {i32, i32, i32} @test_pair_notail(i64 %in) {



  %whole = tail call {i64, i32} @test()
  %first = extractvalue {i64, i32} %whole, 0
  %first.trunc = trunc i64 %first to i32

  %second = extractvalue {i64, i32} %whole, 1

  %tmp = insertvalue {i32, i32, i32} undef, i32 %first.trunc, 0
  %res = insertvalue {i32, i32, i32} %tmp, i32 %second, 1
  ret {i32, i32, i32} %res
}
