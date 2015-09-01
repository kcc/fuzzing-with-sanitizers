




@var32 = global i32 0
@var64 = global i64 0

define i32 @test_tbz() {


  %val = load i32, i32* @var32
  %val64 = load i64, i64* @var64

  %tbit0 = and i32 %val, 32768
  %tst0 = icmp ne i32 %tbit0, 0
  br i1 %tst0, label %test1, label %end1


test1:
  %tbit1 = and i32 %val, 4096
  %tst1 = icmp ne i32 %tbit1, 0
  br i1 %tst1, label %test2, label %end1


test2:
  %tbit2 = and i64 %val64, 32768
  %tst2 = icmp ne i64 %tbit2, 0
  br i1 %tst2, label %test3, label %end1


test3:
  %tbit3 = and i64 %val64, 4096
  %tst3 = icmp ne i64 %tbit3, 0
  br i1 %tst3, label %end2, label %end1


end2:


  ret i32 1

end1:



  ret i32 0
}
