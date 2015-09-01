

















define void @test_copy_cpsr(i128 %lhs, i128 %rhs, i128* %addr) {






  
  



  %sum = add i128 %lhs, %rhs
  store volatile i128 %sum, i128* %addr

  %rhs2.tmp1 = trunc i128 %rhs to i64
  %rhs2 = zext i64 %rhs2.tmp1 to i128

  %sum2 = add i128 %lhs, %rhs2
  store volatile i128 %sum2, i128* %addr

  ret void
}
