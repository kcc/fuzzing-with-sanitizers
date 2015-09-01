
define void @foo(i64 %val) {




  %a = alloca [49 x i32], align 4
  %p32 = getelementptr inbounds [49 x i32], [49 x i32]* %a, i64 0, i64 2
  %p = bitcast i32* %p32 to i64*
  store i64 %val, i64* %p, align 8
  ret void
}
