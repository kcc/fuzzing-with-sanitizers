











@foo = global i32 0                               

define i32 @func(i32 %a) nounwind readonly {
entry:
  %0 = load i32, i32* @foo, align 4                    
  ret i32 %0
}













define i32 @test_spill(i32 %a, i32 %b) {
entry:
  %cmp = icmp eq i32 %b, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:
  %ret =  load i32, i32* @foo, align 4
  ret i32 %ret

if.end:
  %add = add nsw i32 %b, %a
  ret i32 %add
}
