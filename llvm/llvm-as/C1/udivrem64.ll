







































































define void @test_udiv(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %result = udiv i64 %x, %y
  store i64 %result, i64 addrspace(1)* %out
  ret void
}





































































define void @test_urem(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %result = urem i64 %x, %y
  store i64 %result, i64 addrspace(1)* %out
  ret void
}










define void @test_udiv3264(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = lshr i64 %x, 33
  %2 = lshr i64 %y, 33
  %result = udiv i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}










define void @test_urem3264(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = lshr i64 %x, 33
  %2 = lshr i64 %y, 33
  %result = urem i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}












define void @test_udiv2464(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = lshr i64 %x, 40
  %2 = lshr i64 %y, 40
  %result = udiv i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}












define void @test_urem2464(i64 addrspace(1)* %out, i64 %x, i64 %y) {
  %1 = lshr i64 %x, 40
  %2 = lshr i64 %y, 40
  %result = urem i64 %1, %2
  store i64 %result, i64 addrspace(1)* %out
  ret void
}
