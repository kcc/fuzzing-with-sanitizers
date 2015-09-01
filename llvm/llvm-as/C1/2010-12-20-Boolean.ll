

define i1 @add(i1 %x) {

  %z = add i1 %x, %x
  ret i1 %z

}

define i1 @sub(i1 %x) {

  %z = sub i1 false, %x
  ret i1 %z

}

define i1 @mul(i1 %x) {

  %z = mul i1 %x, %x
  ret i1 %z

}

define i1 @ne(i1 %x) {

  %z = icmp ne i1 %x, 0
  ret i1 %z

}
