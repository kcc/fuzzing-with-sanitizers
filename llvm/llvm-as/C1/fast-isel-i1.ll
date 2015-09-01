


declare i32 @test1a(i32)

define i32 @test1(i32 %x) nounwind {


	%y = add i32 %x, -3
	%t = call i32 @test1a(i32 %y)
	%s = mul i32 %t, 77
	%z = trunc i32 %s to i1
	br label %next

next:		
	%u = zext i1 %z to i32
	%v = add i32 %u, 1999
	br label %exit

exit:		
	ret i32 %v
}

define void @test2(i8* %a) nounwind {
entry:





  %tmp = load i8, i8* %a, align 1
  %xor = xor i8 %tmp, 1
  %tobool = trunc i8 %xor to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:
  call void @test2(i8* null)
  br label %if.end

if.end:
  ret void
}
