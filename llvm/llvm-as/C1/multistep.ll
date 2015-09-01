

define i64 @multistep1(i64 %a, i64 %b, i64 %c) {


  %t0 = mul i64 %a, %b
  %t1 = mul i64 %a, %t0 
  %t2 = mul i64 %a, %c
  %t3 = mul i64 %a, %t2 
  %t4 = add i64 %t1, %t3




  ret i64 %t4
}

define i64 @multistep2(i64 %a, i64 %b, i64 %c, i64 %d) {


  %t0 = mul i64 %a, %b
  %t1 = mul i64 %a, %c
  %t2 = add i64 %t1, %d 
  %t3 = add i64 %t0, %t2 




  ret i64 %t3
}
