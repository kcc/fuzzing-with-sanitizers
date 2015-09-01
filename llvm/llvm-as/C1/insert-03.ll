





define i32 @f1(i32 %a) {




  %and = and i32 %a, 4294901760
  %or = or i32 %and, 1
  ret i32 %or
}


define i32 @f2(i32 %a) {




  %and = and i32 %a, -65536
  %or = or i32 %and, 32769
  ret i32 %or
}



define i32 @f3(i32 %a) {




  %and = and i32 %a, 4294901760
  %or = or i32 %and, 65534
  ret i32 %or
}


define i32 @f4(i32 %a) {




  %and = and i32 %a, 65535
  %or = or i32 %and, 65536
  ret i32 %or
}


define i32 @f5(i32 %a) {




  %and = and i32 %a, 65535
  %or = or i32 %and, 2147418112
  ret i32 %or
}


define i32 @f6(i32 %a) {




  %and = and i32 %a, 65535
  %or = or i32 %and, -131072
  ret i32 %or
}
