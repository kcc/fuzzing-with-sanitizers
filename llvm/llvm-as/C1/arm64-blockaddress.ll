





define i64 @t() nounwind ssp {
entry:














  %recover = alloca i64, align 8
  store volatile i64 ptrtoint (i8* blockaddress(@t, %mylabel) to i64), i64* %recover, align 8
  br label %mylabel

mylabel:
  %tmp = load volatile i64, i64* %recover, align 8
  ret i64 %tmp
}
