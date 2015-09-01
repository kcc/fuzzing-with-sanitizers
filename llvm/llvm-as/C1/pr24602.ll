










define i64* @pr24602(i64* %p, i64 %n) nounwind {
  %mul = mul nsw i64 %n, -10000000000
  %add.ptr = getelementptr inbounds i64, i64* %p, i64 %mul
  store i64 -10000000000, i64* %add.ptr
  ret i64* %add.ptr
}
