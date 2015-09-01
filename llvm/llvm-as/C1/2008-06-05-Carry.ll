

define i64 @add64(i64 %u, i64 %v) nounwind  {
entry:




  %tmp2 = add i64 %u, %v  
  ret i64 %tmp2
}

define i64 @sub64(i64 %u, i64 %v) nounwind  {
entry:





  %tmp2 = sub i64 %u, %v
  ret i64 %tmp2
}
