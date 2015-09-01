






define i64 @test64_32_rot0() nounwind {


  ret i64 30064771079
}


define i64 @test64_32_rot2() nounwind {


  ret i64 13835058071388291075
}


define i64 @test64_4_rot3() nounwind {


  ret i64 17216961135462248174
}


define i32 @test32_32_rot16() nounwind {


  ret i32 16711680
}


define i32 @test32_2_rot1() nounwind {


  ret i32 2863311530
}





define i32 @movz() nounwind {


  ret i32 5
}

define i64 @movz_3movk() nounwind {





  ret i64 1427392313513592
}

define i64 @movz_movk_skip1() nounwind {



  ret i64 22601072640
}

define i64 @movz_skip1_movk() nounwind {



  ret i64 147695335379508
}





define i64 @movn() nounwind {


  ret i64 -42
}

define i64 @movn_skip1_movk() nounwind {



  ret i64 -176093720012
}






define i64 @orr_movk1() nounwind {



  ret i64 72056498262245120
}

define i64 @orr_movk2() nounwind {



  ret i64 -2400982650836746496
}

define i64 @orr_movk3() nounwind {



  ret i64 72020953688702720
}

define i64 @orr_movk4() nounwind {



  ret i64 72056494543068845
}


define i64 @orr_movk5() nounwind {



  ret i64 -71777214836900096
}

define i64 @orr_movk6() nounwind {




  ret i64 -2400982647117578496
}

define i64 @orr_movk7() nounwind {



  ret i64 -2400982646575268096
}

define i64 @orr_movk8() nounwind {




  ret i64 -2400982646575276371
}


define i64 @orr_movk9() nounwind {




  ret i64 1152921439623315200
}

define i64 @orr_movk10() nounwind {



  ret i64 1152921504047824640
}

define i64 @orr_movk11() nounwind {




  ret i64 -4222125209747201
}

define i64 @orr_movk12() nounwind {



  ret i64 -4258765016661761
}

define i64 @orr_movk13() nounwind {




  ret i64 -2401245434149282131
}


define i64 @g() nounwind {



entry:
  ret i64 -281474976710654
}
