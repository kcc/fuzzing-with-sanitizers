


target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"











define void @nary_reassociate_after_slsr(i32 %a, i32 %b, i32 %c) {



  %ab = add i32 %a, %b
  %abc = add i32 %ab, %c
  call void @foo(i32 %abc)



  %b2 = shl i32 %b, 1
  %ab2 = add i32 %a, %b2
  %ab2c = add i32 %ab2, %c


  call void @foo(i32 %ab2c)



  %b3 = mul i32 %b, 3
  %ab3 = add i32 %a, %b3
  %ab3c = add i32 %ab3, %c


  call void @foo(i32 %ab3c)



  ret void
}

declare void @foo(i32)
