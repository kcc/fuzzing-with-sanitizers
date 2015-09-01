




target datalayout = "i32:8:32"

@A = external global i32
@B = weak_odr global i32 0

@C = available_externally global <4 x i32> zeroinitializer, align 4


define i64 @foo(i64 %a) {
  %t = ptrtoint i32* @A to i64
  %s = shl i64 %a, 3
  %r = or i64 %t, %s
  %q = add i64 %r, 1
  ret i64 %q
}







define i32 @bar() {
  %r = load i32, i32* @B, align 1
  ret i32 %r
}




define void @vec_store() {
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32>* @C, align 4
  ret void
}


