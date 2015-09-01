

define i8 @mov(i8 %a, i8 %b) nounwind {



  ret i8 %b
}

define i8 @add(i8 %a, i8 %b) nounwind {



  %1 = add i8 %a, %b
  ret i8 %1
}

define i8 @and(i8 %a, i8 %b) nounwind {


  %1 = and i8 %a, %b
  ret i8 %1
}

define i8 @bis(i8 %a, i8 %b) nounwind {


  %1 = or i8 %a, %b
  ret i8 %1
}

define i8 @xorand(i8 %a, i8 %b) nounwind {


  %1 = xor i8 %b, -1
  %2 = and i8 %a, %1
  ret i8 %2
}

define i8 @xor(i8 %a, i8 %b) nounwind {


  %1 = xor i8 %a, %b
  ret i8 %1
}
