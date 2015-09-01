





declare fastcc void @will_pop([8 x i32], i32 %val)

define fastcc void @foo(i32 %in) {


  %addr = alloca i8, i32 %in








  call fastcc void @will_pop([8 x i32] undef, i32 42)









  ret void
}

declare void @wont_pop([8 x i32], i32 %val)

define void @foo1(i32 %in) {


  %addr = alloca i8, i32 %in







  call void @wont_pop([8 x i32] undef, i32 42)









  ret void
}
