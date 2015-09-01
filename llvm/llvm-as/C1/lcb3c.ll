

@i = global i32 0, align 4
@j = common global i32 0, align 4
@k = common global i32 0, align 4


define i32 @s() #0 {
entry:
  %0 = load i32, i32* @i, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i32 0, i32* @i, align 4
  call void asm sideeffect ".space 1000", ""() #1, !srcloc !1
  br label %if.end

if.else:                                          
  store i32 1, i32* @i, align 4
  br label %if.end

if.end:                                           
  ret i32 0



}


define i32 @b() #0 {
entry:
  %0 = load i32, i32* @i, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  store i32 0, i32* @i, align 4
  call void asm sideeffect ".space 1000000", ""() #1, !srcloc !2
  br label %if.end

if.else:                                          
  store i32 1, i32* @i, align 4
  br label %if.end

if.end:                                           
  ret i32 0
}





attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }


!1 = !{i32 65}
!2 = !{i32 167}
