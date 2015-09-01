

@i = global i32 5, align 4
@j = global i32 5, align 4
@result = global i32 0, align 4

define void @test() nounwind {
entry:
  %0 = load i32, i32* @j, align 4
  %1 = load i32, i32* @i, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end





if.then:                                          
  store i32 1, i32* @result, align 4
  br label %if.end

if.end:                                           
  ret void
}


