

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"

define void @slsr1(i32 %b, i32 %s) {

  
  %mul0 = mul i32 %b, %s


  call void @foo(i32 %mul0)

  
  %b1 = add i32 %b, 1
  %mul1 = mul i32 %b1, %s
  call void @foo(i32 %mul1)

  
  %b2 = add i32 %b, 2
  %mul2 = mul i32 %b2, %s
  call void @foo(i32 %mul2)

  ret void
}

define void @non_canonicalized(i32 %b, i32 %s) {

  
  %mul0 = mul i32 %b, %s


  call void @foo(i32 %mul0)

  
  %b1 = add i32 1, %b
  %mul1 = mul i32 %b1, %s
  call void @foo(i32 %mul1)

  
  %b2 = add i32 2, %b
  %mul2 = mul i32 %b2, %s
  call void @foo(i32 %mul2)

  ret void
}

define void @or(i32 %a, i32 %s) {
  %b = shl i32 %a, 1

  
  %mul0 = mul i32 %b, %s

  call void @foo(i32 %mul0)

  
  %b1 = or i32 %b, 1
  %mul1 = mul i32 %b1, %s

  call void @foo(i32 %mul1)

  
  %b2 = or i32 %b, 2
  %mul2 = mul i32 %b2, %s

  call void @foo(i32 %mul2)

  ret void
}





define void @slsr2(i32 %a, i32 %b) {

  %a1 = add i32 %a, 1
  %b1 = add i32 %b, 1
  %mul0 = mul i32 %a, %b


  %mul1 = mul i32 %a1, %b
  %mul2 = mul i32 %a, %b1
  %mul3 = mul i32 %a1, %b1

  call void @foo(i32 %mul0)
  call void @foo(i32 %mul1)
  call void @foo(i32 %mul2)
  call void @foo(i32 %mul3)

  ret void
}











define void @slsr3(i32 %b, i32 %s) {

  %mul0 = mul i32 %b, %s

  call void @foo(i32 %mul0)

  %b1 = add i32 %b, 2
  %mul1 = mul i32 %b1, %s


  call void @foo(i32 %mul1)

  %b2 = add i32 %b, 4
  %mul2 = mul i32 %b2, %s

  call void @foo(i32 %mul2)

  ret void
}






define void @not_dominate(i1 %cond, i32 %a, i32 %b) {

entry:
  %a1 = add i32 %a, 1
  br i1 %cond, label %then, label %merge

then:
  %mul0 = mul i32 %a, %b

  call void @foo(i32 %mul0)
  br label %merge

merge:
  %mul1 = mul i32 %a1, %b

  call void @foo(i32 %mul1)
  ret void
}

declare void @foo(i32)
