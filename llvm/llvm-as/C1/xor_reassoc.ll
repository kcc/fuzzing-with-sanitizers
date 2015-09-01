









define i32 @xor1(i32 %x) {
  %or = or i32 %x, 123
  %or1 = or i32 %x, 456
  %xor = xor i32 %or, %or1
  ret i32 %xor




}



define i32 @xor2(i32 %x, i32 %y) {
  %and = and i32 %x, 123
  %xor = xor i32 %and, %y
  %and1 = and i32 %x, 456
  %xor2 = xor i32 %xor, %and1
  ret i32 %xor2




}



define i32 @xor3(i32 %x, i32 %y) {
  %or = or i32 %x, 123
  %xor = xor i32 %or, %y
  %and = and i32 %x, 456
  %xor1 = xor i32 %xor, %and
  ret i32 %xor1





}


define i32 @xor4(i32 %x, i32 %y) {
  %and = and i32 %x, -124
  %xor = xor i32 %y, 435
  %xor1 = xor i32 %xor, %and
  ret i32 %xor1




}









define i32 @xor_special1(i32 %x, i32 %y) {
  %or = or i32 %x, 123
  %xor = xor i32 %or, %y
  %and = and i32 %x, -124
  %xor1 = xor i32 %xor, %and
  ret i32 %xor1



}



define i32 @xor_special2(i32 %x, i32 %y) {
  %or = or i32 %x, 123
  %xor = xor i32 %or, %y
  %and = and i32 %x, 123
  %xor1 = xor i32 %xor, %and
  ret i32 %xor1




}


define i32 @xor_special3(i32 %x) {
  %or = or i32 %x, 123
  %or1 = or i32 %x, 123
  %xor = xor i32 %or, %or1
  ret i32 %xor


}


define i32 @xor_special4(i32 %x) {
  %or = and i32 %x, 123
  %or1 = and i32 123, %x
  %xor = xor i32 %or, %or1
  ret i32 %xor


}










define i32 @xor_ra_size1(i32 %x) {
  %or = or i32 %x, 123
  %or1 = or i32 %x, 456
  %xor = xor i32 %or, %or1

  %add = add i32 %xor, %or
  ret i32 %add


}




define i32 @xor_ra_size2(i32 %x) {
  %or = or i32 %x, 123
  %or1 = or i32 %x, 456
  %xor = xor i32 %or, %or1

  %add = add i32 %xor, %or
  %add2 = add i32 %add, %or1
  ret i32 %add2




}








@xor_bug1_data = external global <{}>, align 4
define void @xor_bug1() {
  %1 = ptrtoint i32* undef to i64
  %2 = xor i64 %1, ptrtoint (<{}>* @xor_bug1_data to i64)
  %3 = and i64 undef, %2
  ret void
}






define i32 @xor_bug2(i32, i32, i32, i32) {
  %5 = mul i32 %0, 123
  %6 = add i32 %2, 24
  %7 = add i32 %1, 8
  %8 = and i32 %1, 3456789
  %9 = or i32 %8,  4567890
  %10 = and i32 %1, 543210987
  %11 = or i32 %1, 891034567
  %12 = and i32 %2, 255
  %13 = xor i32 %9, %10
  %14 = xor i32 %11, %13
  %15 = xor i32 %5, %14
  %16 = and i32 %3, 255
  %17 = xor i32 %16, 42
  %18 = add i32 %6, %7
  %19 = add i32 %18, %12
  %20 = add i32 %19, %15
  ret i32 %20


}
