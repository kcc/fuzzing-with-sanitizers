







































































define void @test_sdiv(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %result = sdiv i64 %x, %y
  store i64 %result, i64 addrspace(1)* %out
  ret void
}





































































define void @test_srem(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %result = urem i64 %x, %y
  store i64 %result, i64 addrspace(1)* %out
  ret void
}










define void @test_sdiv3264(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = ashr i64 %x, 33
  %2 = ashr i64 %y, 33
  %result = sdiv i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}










define void @test_srem3264(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = ashr i64 %x, 33
  %2 = ashr i64 %y, 33
  %result = srem i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}













define void @test_sdiv2464(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = ashr i64 %x, 40
  %2 = ashr i64 %y, 40
  %result = sdiv i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}













define void @test_srem2464(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = ashr i64 %x, 40
  %2 = ashr i64 %y, 40
  %result = srem i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}
