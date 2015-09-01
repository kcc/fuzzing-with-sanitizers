









define i32 @test_int_binops(i32 %a) nounwind {
entry:
  %0 = add i32 %a, %a
  %1 = sub i32 %0, %0
  %2 = mul i32 %1, %1
  ret i32 %2
}









define double @test_float_binops(i32 %a) nounwind {
  %1 = sitofp i32 %a to double
  %2 = fadd double %1, %1
  %3 = fsub double %2, %2
  %4 = fmul double %3, %3
  %5 = fdiv double %4, %4
  ret double %5
}









define i1 @test_load(i32 %a, {i32, i32}* %ptr) nounwind {
entry:
  %0 = getelementptr inbounds {i32, i32}, {i32, i32}* %ptr, i32 %a, i32 0
  %1 = load i32, i32* %0
  %2 = icmp eq i32 %1, %a
  ret i1 %2
}


