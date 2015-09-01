

define i32 @factorize(i32 %x, i32 %y) {


  %l = or i32 %x, 1
  %r = or i32 %x, 2
  %z = and i32 %l, %r
  ret i32 %z

}

define i32 @factorize2(i32 %x) {


  %l = mul i32 3, %x
  %r = mul i32 2, %x
  %z = sub i32 %l, %r
  ret i32 %z

}

define i32 @factorize3(i32 %x, i32 %a, i32 %b) {


  %aORb = or i32 %a, %b
  %l = or i32 %x, %aORb
  %r = or i32 %x, %b
  %z = and i32 %l, %r
  ret i32 %z


}

define i32 @factorize4(i32 %x, i32 %y) {


  %sh = shl i32 %y, 1
  %ml = mul i32 %sh, %x
  %mr = mul i32 %x, %y
  %s = sub i32 %ml, %mr
  ret i32 %s


}

define i32 @factorize5(i32 %x, i32 %y) {


  %sh = mul i32 %y, 2
  %ml = mul i32 %sh, %x
  %mr = mul i32 %x, %y
  %s = sub i32 %ml, %mr
  ret i32 %s


}

define i32 @expand(i32 %x) {


  %a = and i32 %x, 1
  %b = or i32 %a, 2
  %c = and i32 %b, 1
  ret i32 %c


}
