

@i = global i32 0, align 4
@j = common global i32 0, align 4


define i32 @main() #0 {
entry:
  %0 = load i32, i32* @i, align 4
  %cmp = icmp eq i32 %0, 0
  %. = select i1 %cmp, i32 10, i32 55
  store i32 %., i32* @j, align 4

  ret i32 0
}

attributes #0 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="true" }



