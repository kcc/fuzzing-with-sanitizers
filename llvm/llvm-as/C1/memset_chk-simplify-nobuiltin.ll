
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"










define void @test_nobuiltin(i8* %dst, i64 %len) {
  call i8* @__memset_chk(i8* %dst, i32 0, i64 %len, i64 -1) nobuiltin
  ret void
}

declare i8* @__memset_chk(i8*, i32, i64, i64)
