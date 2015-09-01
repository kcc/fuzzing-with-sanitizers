


@var32 = global i32 0
@var64 = global i64 0

define void @test_csel(i32 %lhs32, i32 %rhs32, i64 %lhs64) minsize {


  %tst1 = icmp ugt i32 %lhs32, %rhs32
  %val1 = select i1 %tst1, i32 42, i32 52
  store i32 %val1, i32* @var32




  %rhs64 = sext i32 %rhs32 to i64
  %tst2 = icmp sle i64 %lhs64, %rhs64
  %val2 = select i1 %tst2, i64 %lhs64, i64 %rhs64
  store i64 %val2, i64* @var64




  ret void

}

define void @test_floatcsel(float %lhs32, float %rhs32, double %lhs64, double %rhs64) {


  %tst1 = fcmp one float %lhs32, %rhs32


  %val1 = select i1 %tst1, i32 42, i32 52
  store i32 %val1, i32* @var32






  %tst2 = fcmp ueq double %lhs64, %rhs64


  %val2 = select i1 %tst2, i64 9, i64 15
  store i64 %val2, i64* @var64





  ret void

}


define void @test_csinc(i32 %lhs32, i32 %rhs32, i64 %lhs64) minsize {



  %tst1 = icmp ugt i32 %lhs32, %rhs32
  %inc1 = add i32 %rhs32, 1
  %val1 = select i1 %tst1, i32 %inc1, i32 %lhs32
  store volatile i32 %val1, i32* @var32



  %rhs2 = add i32 %rhs32, 42
  %tst2 = icmp sle i32 %lhs32, %rhs2
  %inc2 = add i32 %rhs32, 1
  %val2 = select i1 %tst2, i32 %lhs32, i32 %inc2
  store volatile i32 %val2, i32* @var32




  %rhs3 = sext i32 %rhs32 to i64
  %tst3 = icmp ugt i64 %lhs64, %rhs3
  %inc3 = add i64 %rhs3, 1
  %val3 = select i1 %tst3, i64 %inc3, i64 %lhs64
  store volatile i64 %val3, i64* @var64



  %rhs4 = zext i32 %rhs32 to i64
  %tst4 = icmp sle i64 %lhs64, %rhs4
  %inc4 = add i64 %rhs4, 1
  %val4 = select i1 %tst4, i64 %lhs64, i64 %inc4
  store volatile i64 %val4, i64* @var64



  ret void

}

define void @test_csinv(i32 %lhs32, i32 %rhs32, i64 %lhs64) minsize {



  %tst1 = icmp ugt i32 %lhs32, %rhs32
  %inc1 = xor i32 -1, %rhs32
  %val1 = select i1 %tst1, i32 %inc1, i32 %lhs32
  store volatile i32 %val1, i32* @var32



  %rhs2 = add i32 %rhs32, 42
  %tst2 = icmp sle i32 %lhs32, %rhs2
  %inc2 = xor i32 -1, %rhs32
  %val2 = select i1 %tst2, i32 %lhs32, i32 %inc2
  store volatile i32 %val2, i32* @var32




  %rhs3 = sext i32 %rhs32 to i64
  %tst3 = icmp ugt i64 %lhs64, %rhs3
  %inc3 = xor i64 -1, %rhs3
  %val3 = select i1 %tst3, i64 %inc3, i64 %lhs64
  store volatile i64 %val3, i64* @var64



  %rhs4 = zext i32 %rhs32 to i64
  %tst4 = icmp sle i64 %lhs64, %rhs4
  %inc4 = xor i64 -1, %rhs4
  %val4 = select i1 %tst4, i64 %lhs64, i64 %inc4
  store volatile i64 %val4, i64* @var64



  ret void

}

define void @test_csneg(i32 %lhs32, i32 %rhs32, i64 %lhs64) minsize {



  %tst1 = icmp ugt i32 %lhs32, %rhs32
  %inc1 = sub i32 0, %rhs32
  %val1 = select i1 %tst1, i32 %inc1, i32 %lhs32
  store volatile i32 %val1, i32* @var32



  %rhs2 = add i32 %rhs32, 42
  %tst2 = icmp sle i32 %lhs32, %rhs2
  %inc2 = sub i32 0, %rhs32
  %val2 = select i1 %tst2, i32 %lhs32, i32 %inc2
  store volatile i32 %val2, i32* @var32




  %rhs3 = sext i32 %rhs32 to i64
  %tst3 = icmp ugt i64 %lhs64, %rhs3
  %inc3 = sub i64 0, %rhs3
  %val3 = select i1 %tst3, i64 %inc3, i64 %lhs64
  store volatile i64 %val3, i64* @var64



  %rhs4 = zext i32 %rhs32 to i64
  %tst4 = icmp sle i64 %lhs64, %rhs4
  %inc4 = sub i64 0, %rhs4
  %val4 = select i1 %tst4, i64 %lhs64, i64 %inc4
  store volatile i64 %val4, i64* @var64



  ret void

}

define void @test_cset(i32 %lhs, i32 %rhs, i64 %lhs64) {




  %tst1 = icmp eq i32 %lhs, %rhs
  %val1 = zext i1 %tst1 to i32
  store i32 %val1, i32* @var32



  %rhs64 = sext i32 %rhs to i64
  %tst2 = icmp ule i64 %lhs64, %rhs64
  %val2 = zext i1 %tst2 to i64
  store i64 %val2, i64* @var64


  ret void

}

define void @test_csetm(i32 %lhs, i32 %rhs, i64 %lhs64) {


  %tst1 = icmp eq i32 %lhs, %rhs
  %val1 = sext i1 %tst1 to i32
  store i32 %val1, i32* @var32



  %rhs64 = sext i32 %rhs to i64
  %tst2 = icmp ule i64 %lhs64, %rhs64
  %val2 = sext i1 %tst2 to i64
  store i64 %val2, i64* @var64


  ret void

}

define <1 x i1> @test_wide_comparison(i32 %in) {




  %tmp = icmp sgt i32 %in, 1234
  %res = select i1 %tmp, <1 x i1> <i1 1>, <1 x i1> zeroinitializer
  ret <1 x i1> %res
}

define i32 @test_select_undef() {


  %res = select i1 undef, i32 0, i32 42
  ret i32 %res
}
