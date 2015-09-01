



define i32 @t1(i32 %a, i32 %b) nounwind uwtable ssp {
entry:


  %x = add i32 %a, %b  
  br i1 1, label %if.then, label %if.else



if.then:                                          
  call void @foo1()
  br label %if.end7

if.else:                                          
  br i1 0, label %if.then2, label %if.else3



if.then2:                                         
  call void @foo2()
  br label %if.end6

if.else3:                                         
  %y = sub i32 %a, %b
  br i1 1, label %if.then5, label %if.end



if.then5:                                         
  call void @foo1()
  br label %if.end

if.end:                                           
  br label %if.end6

if.end6:                                          
  br label %if.end7

if.end7:                                          
  ret i32 0
}

declare void @foo1()

declare void @foo2()
