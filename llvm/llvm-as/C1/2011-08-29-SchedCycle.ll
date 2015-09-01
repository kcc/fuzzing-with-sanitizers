































define void @t() nounwind {
entry:
  %tmp = load i64, i64* undef, align 4
  %tmp5 = udiv i64 %tmp, 30
  %tmp13 = and i64 %tmp5, 64739244643450880
  %tmp16 = sub i64 0, %tmp13
  %tmp19 = and i64 %tmp16, 63
  %tmp20 = urem i64 %tmp19, 3
  %tmp22 = and i64 %tmp16, -272346829004752
  store i64 %tmp22, i64* undef, align 4
  store i64 %tmp20, i64* undef, align 4
  ret void
}
