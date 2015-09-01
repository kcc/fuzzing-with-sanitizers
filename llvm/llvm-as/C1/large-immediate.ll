

define i128 @test1(i128 %a) nounwind {


  %1 = add i128 %a, 12297829382473034410122878
  %2 = add i128 %1, 12297829382473034410122878
  ret i128 %2
}


define i512 @test2(i512 %a) nounwind {


  %1 = and i512 %a, 7
  %2 = or i512 %1, 7
  ret i512 %2
}


define i512 @test3(i512 %a) nounwind {


  %1 = shl i512 %a, 504
  %2 = ashr i512 %1, 504
  ret i512 %2
}
