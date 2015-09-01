

declare void @foo(double)
declare i32 @llvm.arm.space(i32, i32)








define i32 @test_jumptable_not_adjacent(i1 %tst, i32 %sw, i32 %l) {















  br label %complex

complex:
  call void @foo(double 12345.0)
  call i32 @llvm.arm.space(i32 970, i32 undef)
  switch i32 %sw, label %second [ i32 0, label %other
                                  i32 1, label %third
                                  i32 2, label %end
                                  i32 3, label %other ]

second:
  ret i32 43
third:
  ret i32 0

other:
  call void @bar()
  unreachable

end:
  ret i32 42
}

declare void @bar()
