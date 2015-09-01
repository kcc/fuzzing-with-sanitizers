

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"

define void @shl(i32 %b, i32 %s) {

  %1 = add i32 %b, %s

  call void @foo(i32 %1)
  %s2 = shl i32 %s, 1
  %2 = add i32 %b, %s2

  call void @foo(i32 %2)
  ret void
}

define void @stride_is_2s(i32 %b, i32 %s) {

  %s2 = shl i32 %s, 1

  %1 = add i32 %b, %s2

  call void @foo(i32 %1)
  %s4 = shl i32 %s, 2
  %2 = add i32 %b, %s4

  call void @foo(i32 %2)
  %s6 = mul i32 %s, 6
  %3 = add i32 %b, %s6

  call void @foo(i32 %3)
  ret void
}

define void @stride_is_3s(i32 %b, i32 %s) {

  %1 = add i32 %s, %b

  call void @foo(i32 %1)
  %s4 = shl i32 %s, 2
  %2 = add i32 %s4, %b


  call void @foo(i32 %2)
  %s7 = mul i32 %s, 7
  %3 = add i32 %s7, %b

  call void @foo(i32 %3)
  ret void
}












define void @stride_is_minus_2s(i32 %b, i32 %s) {

  %s6 = mul i32 %s, 6
  %1 = add i32 %b, %s6


  call void @foo(i32 %1)
  %s4 = shl i32 %s, 2
  %2 = add i32 %b, %s4


  call void @foo(i32 %2)

  %s2 = shl i32 %s, 1
  %3 = add i32 %b, %s2

  call void @foo(i32 %3)

  ret void
}






define void @simple_enough(i32 %b, i32 %s) {

  %s8 = shl i32 %s, 3
  %1 = add i32 %b, %s8
  call void @foo(i32 %1)
  %2 = add i32 %b, %s

  call void @foo(i32 %2)

  ret void
}

declare void @foo(i32)
