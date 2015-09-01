
define i32 @foo(i32 %x, i32 %y) {

  %add = add nsw i32 %y, %x
  %mul = mul nsw i32 %add, %y
  %square = mul nsw i32 %y, %y
  %res = sub i32 %mul, %square
  ret i32 %res


}

define i1 @bar(i64 %x, i64 %y) {

  %a = and i64 %y, %x


  %not = xor i64 %a, -1
  %b = and i64 %y, %not
  %r = icmp eq i64 %b, 0
  ret i1 %r

}
