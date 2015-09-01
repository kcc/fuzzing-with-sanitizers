

@i = common global i32 0, align 4
@b = common global i32 0, align 4
@l = common global i32 0, align 4


define void @foo() #0 {
entry:
  store i32 305419896, i32* @i, align 4
  %0 = load i32, i32* @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          
  store i32 10, i32* @b, align 4
  br label %if.end

if.else:                                          
  store i32 20, i32* @b, align 4
  br label %if.end

if.end:                                           
  call void asm sideeffect ".space 100000", ""() #1, !srcloc !1
  store i32 305419896, i32* @l, align 4
  ret void







}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!1 = !{i32 103}
