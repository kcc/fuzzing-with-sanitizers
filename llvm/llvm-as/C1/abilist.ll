
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"


define i32 @discard(i32 %a, i32 %b) {
  ret i32 0
}


define i32 @functional(i32 %a, i32 %b) {
  %c = add i32 %a, %b
  ret i32 %c
}





@discardg = alias i32 (i32, i32)* (i32)* @g

declare void @custom1(i32 %a, i32 %b)








declare i32 @custom2(i32 %a, i32 %b)




declare void @custom3(i32 %a, ...)

declare i32 @custom4(i32 %a, ...)

declare void @customcb(i32 (i32)* %cb)

declare i32 @cb(i32)


define void @f(i32 %x) {
  
  
  

  
  call void @custom1(i32 1, i32 2)

  
  call i32 @custom2(i32 1, i32 2)

  
  call void @customcb(i32 (i32)* @cb)

  
  
  
  
  
  
  call void (i32, ...) @custom3(i32 1, i32 2, i32 %x)

  
  
  
  call i32 (i32, ...) @custom4(i32 1, i32 2, i32 3)

  ret void
}


define i32 (i32, i32)* @g(i32) {
  
  ret i32 (i32, i32)* @custom2
}






@adiscard = alias i32 (i32, i32)* @discard














