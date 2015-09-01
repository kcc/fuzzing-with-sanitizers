













define i32 @test1(i32* %x, i32 %y, i32 %a, i32 %b) nounwind {
	%tmp2 = load i32, i32* %x, align 4		
	%tmp4 = add i32 %tmp2, %y		
	%tmp5 = icmp slt i32 %tmp4, 0		
	%tmp.0 = select i1 %tmp5, i32 %a, i32 %b		
	ret i32 %tmp.0
}

declare void @foo(i32)







define void @test2(i32 %x) nounwind {
  %y = and i32 %x, 16
  %t = icmp eq i32 %y, 0
  br i1 %t, label %true, label %false
true:
  call void @foo(i32 %x)
  ret void
false:
  ret void
}







define void @test3(i32 %x) nounwind {
  %y = and i32 %x, 16
  %t = icmp eq i32 %y, 0
  br i1 %t, label %true, label %false
true:
  call void @foo(i32 %y)
  ret void
false:
  ret void
}
