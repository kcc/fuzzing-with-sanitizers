




@b = global i32 1, align 4
@i = global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%i \0A\00", align 1


define void @br() #0 {
entry:
  %0 = load i32, i32* @b, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  store i32 6754, i32* @i, align 4
  br label %if.end

if.end:                                           
  ret void









}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
