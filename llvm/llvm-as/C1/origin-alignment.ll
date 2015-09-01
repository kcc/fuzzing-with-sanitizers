


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"





@a8 = global i8 0, align 8
@a4 = global i8 0, align 4
@a2 = global i8 0, align 2
@a1 = global i8 0, align 1


define void @Store8(i8 %x) sanitize_memory {
entry:
  store i8 %x, i8* @a8, align 8
  ret void
}










define void @Store4(i8 %x) sanitize_memory {
entry:
  store i8 %x, i8* @a4, align 4
  ret void
}










define void @Store2(i8 %x) sanitize_memory {
entry:
  store i8 %x, i8* @a2, align 2
  ret void
}










define void @Store1(i8 %x) sanitize_memory {
entry:
  store i8 %x, i8* @a1, align 1
  ret void
}







