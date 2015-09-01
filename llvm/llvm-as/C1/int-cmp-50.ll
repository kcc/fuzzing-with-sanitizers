










define signext i32 @test(i64 %x) {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp uge i64 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         
  %1 = load i64, i64* %x.addr, align 8
  %cmp1 = icmp ule i64 %1, 15
  br label %land.end

land.end:                                         
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

