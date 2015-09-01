




@gvar = external global i32
define i32 @test2(i32 %a, i32 %b) nounwind {
entry:
  %cmp = icmp eq i32 %a, %b
  br i1 %cmp, label %if.then, label %if.end

if.then:
  store i32 %a, i32* @gvar, align 4
  br label %if.end

if.end:
  ret i32 %b
}
