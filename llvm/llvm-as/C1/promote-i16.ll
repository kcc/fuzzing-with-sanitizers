

define signext i16 @foo(i16 signext %x) nounwind {
entry:




  %0 = xor i16 %x, 21998
  ret i16 %0
}

define signext i16 @bar(i16 signext %x) nounwind {
entry:




  %0 = xor i16 %x, 54766
  ret i16 %0
}
