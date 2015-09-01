

%BigInt = type i5500

define %BigInt @test_moved_jumptable(i1 %tst, i32 %sw, %BigInt %l) {











  br i1 %tst, label %simple, label %complex

simple:
  br label %end

complex:
  switch i32 %sw, label %simple [ i32 0, label %other
                                  i32 1, label %third
                                  i32 5, label %end
                                  i32 6, label %other ]

third:
  ret %BigInt 0

other:
  call void @bar()
  unreachable

end:
  %val = phi %BigInt [ %l, %complex ], [ -1, %simple ]
  ret %BigInt %val
}

declare void @bar()
