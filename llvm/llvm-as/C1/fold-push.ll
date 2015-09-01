


declare void @foo(i32 %r)

define void @test(i32 %a, i32 %b) optsize {











  %c = add i32 %a, %b
  call void @foo(i32 %c)
  call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di}"()
  call void @foo(i32 %c)
  ret void
}

define void @test_min(i32 %a, i32 %b) minsize {









  %c = add i32 %a, %b
  call void @foo(i32 %c)
  call void asm sideeffect "nop", "~{ax},~{bx},~{cx},~{dx},~{bp},~{si},~{di}"()
  call void @foo(i32 %c)
  ret void
}
