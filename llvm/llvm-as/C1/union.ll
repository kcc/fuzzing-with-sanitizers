
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common global i32 0
@b = common global i32 0




define void @f(i32 %x, i32 %y) {
  
  %xay = add i32 %x, %y
  store i32 %xay, i32* @a
  
  %xmy = mul i32 %x, %y
  store i32 %xmy, i32* @b
  ret void
}





define void @g(i1 %p, i32 %x, i32 %y) {
  br i1 %p, label %l1, label %l2

l1:
  
  %xay = add i32 %x, %y
  store i32 %xay, i32* @a
  br label %l3

l2:
  
  %xmy = mul i32 %x, %y
  store i32 %xmy, i32* @b
  br label %l3

l3:
  ret void
}




define i32 @h(i32 %x, i32 %y) {
  
  %xay = add i32 %x, %y
  
  %xayax = add i32 %xay, %x
  ret i32 %xayax
}
