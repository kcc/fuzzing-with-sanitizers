











define i64 @_Z8lshift10mm(i64 %a, i64 %b) #0 {
entry:

  %shl = shl i64 %a, 10
  %shr = lshr i64 %b, 54
  %or = or i64 %shr, %shl
  ret i64 %or
}

attributes #0 = { minsize nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }












define i64 @_Z8lshift11mm(i64 %a, i64 %b) #1 {
entry:

  %shl = shl i64 %a, 11
  %shr = lshr i64 %b, 53
  %or = or i64 %shr, %shl
  ret i64 %or
}

attributes #1 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }











define i64 @_Z8lshift12mm(i64 %a, i64 %b) #2 {
entry:


  %shl = shl i64 %a, 12
  %shr = lshr i64 %b, 52
  %or = or i64 %shr, %shl
  ret i64 %or
}

attributes #2= { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

