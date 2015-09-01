

@var = global i128 0





define void @test_sret_libcall(i128 %l, i128 %r) {


  
  











  %prod = mul i128 %l, %r
  store i128 %prod, i128* @var
  ret void
}
