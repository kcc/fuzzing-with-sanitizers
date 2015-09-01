




define i64 @f1(i64 %a, i64 %b) {



  %anda = and i64 %a, -15
  %andb = and i64 %b, 14
  %or = or i64 %anda, %andb
  ret i64 %or
}


define i64 @f2(i64 %a, i64 %b, i32* %c) {




  %anda = and i64 %a, -15
  %andb = and i64 %b, 14
  %or = or i64 %anda, %andb
  %cmp = icmp sgt i64 %or, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %c, align 4
  ret i64 %or
}

