

define i64 @f1(i64 %a, i64 %b) {


    %tmp = sub i64 %a, %b
    ret i64 %tmp
}


define i64 @f2(i64 %a) {



    %tmp = sub i64 %a, 734439407618
    ret i64 %tmp
}


define i64 @f3(i64 %a) {



    %tmp = sub i64 %a, 5066626890203138
    ret i64 %tmp
}


define i64 @f4(i64 %a) {



    %tmp = sub i64 %a, 3747052064576897026
    ret i64 %tmp
}


define i64 @f5(i64 %a) {



    %tmp = sub i64 %a, 6221254862626095106
    ret i64 %tmp
}


define i64 @f6(i64 %a) {



    %tmp = sub i64 %a, 287104476244869122
    ret i64 %tmp
}






define i64 @livecarry(i64 %carry, i32 %digit) nounwind {
  %ch = lshr i64 %carry, 32
  %cl = and i64 %carry, 4294967295
  %truncdigit = zext i32 %digit to i64
  %prod = add i64 %cl, %truncdigit
  %ph = lshr i64 %prod, 32
  %carryresult = add i64 %ch, %ph
  ret i64 %carryresult
}
